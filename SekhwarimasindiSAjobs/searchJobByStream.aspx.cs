using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class searchJobByStream : System.Web.UI.Page
    {    DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                int streamID = Convert.ToInt32(Request.QueryString["sti"].ToString());
                listJobs.DataSource = da.GetJobsByStream(streamID);
                listJobs.DataBind();
            }
            this.DataBind();
        }
    }
}