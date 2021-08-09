using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class SearchJobByProvince : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int provinceID = Convert.ToInt32(Request.QueryString["jpi"].ToString());
                //string provinceName = Request.QueryString["prv"].ToString();
                lstJobs.DataSource = da.GetJobsByProvice(provinceID);
                lstJobs.DataBind();
            }
            this.DataBind();
        }
    }
}