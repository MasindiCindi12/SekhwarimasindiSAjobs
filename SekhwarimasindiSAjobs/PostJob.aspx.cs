using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class PostJob : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                ddlProvince.DataSource = da.GetProvinces();
                ddlProvince.DataTextField = "provinceName";
                ddlProvince.DataValueField = "provinceID";
                ddlProvince.DataBind();

                ddlPosition.DataSource = da.GetPosition();
                ddlPosition.DataTextField = "positionDescription";
                ddlPosition.DataValueField = "jobPositionID";
                ddlPosition.DataBind();

                ddlStream.DataSource = da.GetStreams();
                ddlStream.DataTextField = "streamDescription";
                ddlStream.DataValueField = "streamID";
                ddlStream.DataBind();

                ddlJobType.DataSource = da.GetJobType();
                ddlJobType.DataTextField = "jobtypeDescription";
                ddlJobType.DataValueField = "jobtypeID";
                ddlJobType.DataBind();
            }
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddJobPost(txtJobTitle.Text, txtJobDescription.Text, txtSalary.Text, ddlPosition.Text,ddlProvince.Text, ddlStream.Text, txtRep.Text, ddlJobType.Text, txtdatePosted.Text, txtDateExp.Text);

                Label14.Text = "Successful..";


            }
            catch(SqlException ex)
            {
                Label14.Text = ex.ToString();
            }
        }
    }
}