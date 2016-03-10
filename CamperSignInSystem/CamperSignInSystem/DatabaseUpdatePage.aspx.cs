using System;
using System.Collections.Generic;
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

        }
    }
}