using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class JobListing : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lstJobs.DataSource = da.GetJobList();
                lstJobs.DataBind();
            }
            this.DataBind();
        }
    }
}