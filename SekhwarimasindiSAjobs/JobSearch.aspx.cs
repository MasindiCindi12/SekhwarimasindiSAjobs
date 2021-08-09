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
    public partial class JobSearch : System.Web.UI.Page
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

                ddljobType.DataSource = da.GetJobType();
                ddljobType.DataTextField = "jobtypeDescription";
                ddljobType.DataValueField = "jobtypeID";
                ddljobType.DataBind();

                ddlStream.DataSource = da.GetStreams();
                ddlStream.DataTextField = "streamDescription";
                ddlStream.DataValueField = "streamID";
                ddlStream.DataBind();

              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
               try
                {
                    ddlJobList.DataSource = da.GetJobs(int.Parse(ddlProvince.Text), int.Parse(ddlStream.Text), int.Parse(ddljobType.Text));
                    ddlJobList.DataBind();
                //Label12.Text = "Succefful";
                }
                catch (SqlException ex)
                {
                Label12.Text = ex.ToString();
                }
            }
         
    }
}