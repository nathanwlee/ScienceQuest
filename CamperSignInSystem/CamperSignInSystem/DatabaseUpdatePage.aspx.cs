using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CamperSignInSystem
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateData();
                MessageLabel.Text = "Current Database Data";
            }
        }

        private void PopulateData()
        {
            using (CamperDataEntities dc = new CamperDataEntities())
            {
                CamperDataGridView.DataSource = dc.CamperInfoTables.ToList();
                CamperDataGridView.DataBind();
            }
        }

        protected void UploadFileButton_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.ContentType == "application/vnd.ms-excel" || FileUpload1.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
            {
                try//try to get uploaded file ("try" this to see if an error occurs. if no error it works. if error it breaks and goes to catch statement to catch the error
                {
                    string fileName = Path.Combine(Server.MapPath("~/ImportedExcelFile"), Guid.NewGuid().ToString() + Path.GetExtension(FileUpload1.PostedFile.FileName));
                    FileUpload1.PostedFile.SaveAs(fileName);
                    string conString = "";
                    string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);

                    //check extension of file name to make sure it accepts proper excel file formats
                    if(ext.ToLower() == ".xls")
                    {
                        conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
                    }
                    else if (ext.ToLower() == ".xlsx")
                    {
                        conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    }

                    //select data that it wants
                    string query = "Select [ID],[First Name],[Last Name],[Self Sign],[Approved Pick Up],[Sign In Signature],[Time In],[Sign Out Signature],[Time Out] from [CamperData$]";
                    OleDbConnection con = new OleDbConnection(conString);
                    //open file, fill data, close file
                    if(con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    OleDbCommand cmd = new OleDbCommand(query, con);
                    OleDbDataAdapter da = new OleDbDataAdapter(cmd);

                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    da.Dispose();
                    con.Close();
                    con.Dispose();

                    // Import to Database
                    using (CamperDataEntities dc = new CamperDataEntities())
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            int campID = Convert.ToInt32(dr["ID"]);
                            var v = dc.CamperInfoTables.Where(a => a.ID.Equals(campID)).FirstOrDefault();
                            if (v != null)//if field isnt empty in data base UPDATE table data
                            {
                                //Update data here
                                v.First_Name = dr["First Name"].ToString();
                                v.Last_Name = dr["Last Name"].ToString();
                                v.Self_Sign = dr["Self Sign"].ToString();
                                v.Approved_Pick_Up = dr["Approved Pick Up"].ToString();
                                v.Sign_In_Signature = dr["Sign In Signature"].ToString();
                                v.Time_In = dr["Time In"].ToString();
                                v.Sign_Out_SIgnature = dr["Sign Out Signature"].ToString();
                                v.Time_Out = dr["Time Out"].ToString();
                            }
                            else//create new table data entries
                            {
                                //Insert data
                                dc.CamperInfoTables.Add(new CamperInfoTable
                                {
                                    ID = Convert.ToInt32(dr["ID"]),
                                    First_Name = dr["First Name"].ToString(),
                                    Last_Name = dr["Last Name"].ToString(),
                                    Self_Sign = dr["Self Sign"].ToString(),
                                    Approved_Pick_Up = dr["Approved Pick Up"].ToString(),
                                    Sign_In_Signature = dr["Sign In Signature"].ToString(),
                                    Time_In = dr["Time In"].ToString(),
                                    Sign_Out_SIgnature = dr["Sign Out Signature"].ToString(),
                                    Time_Out = dr["Time Out"].ToString()

                            });
                            }
                        }

                        dc.SaveChanges();
                    }

                    PopulateData();
                    MessageLabel.Text = "Successfully Uploaded Data!";
                }
                catch(Exception)
                {
                    throw;
                    //An exception of type 'System.Data.OleDb.OleDbException' occurred in CamperSignInSystem.dll but was not handled in user code
                    //Additional information: No value given for one or more required parameters
                    //But there is...?
                }
            }
        }
    }
}