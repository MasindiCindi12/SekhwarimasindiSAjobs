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
    public partial class companyRepRegistration : System.Web.UI.Page
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

                ddlUser.DataSource = da.GetUserType();
                ddlUser.DataTextField = "usertypeDescription";
                ddlUser.DataValueField = "usertypeID";
                ddlUser.DataBind();
            }
            txtFirstName.Focus();
            //txtConfirm.Enabled = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddCompanyRep(txtFirstName.Text, txtLastName.Text, txtUsername.Text, int.Parse(ddlProvince.Text), txtEmailAddress.Text, txtPassword.Text, int.Parse(ddlUser.Text));
                lblSuccess.Text = "Successfully Regitered";

            }
            catch(SqlException ex)
            {
                lblWarning.Text = ex.ToString();
            }
           
        }
    }

}