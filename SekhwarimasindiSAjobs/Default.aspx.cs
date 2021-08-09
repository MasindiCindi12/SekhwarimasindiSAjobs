using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class _Default : Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            lstProvince.DataSource = da.GetProvinces();
            lstJobtype.DataSource = da.GetJobType();
            lstStream.DataSource = da.GetStreams();
            this.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Searching for the job

        }
    }
}