using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CamperSignInSystem
{
    public partial class _Default : Page
    {
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            CamperDataGridView.DataSourceID = "CamperDataForSearch";
            //CamperDataGridView.DataSource = CamperDataForSearch;
            CamperDataGridView.DataBind();
        }
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}
    }
}