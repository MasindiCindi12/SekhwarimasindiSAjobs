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
    public partial class RegisterJobSeeker : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdateOfBirth.Text = DateTime.Today.ToShortDateString();

            if (!IsPostBack)
            {
                ddlProvince.DataSource = da.GetProvinces();
                ddlProvince.DataTextField = "provinceName";
                ddlProvince.DataValueField = "provinceID";
                ddlProvince.DataBind();

                ddlInstitution.DataSource = da.GetInstitutions();
                ddlInstitution.DataTextField = "institutionName";
                ddlInstitution.DataValueField = "institutionNo" ;
                ddlInstitution.DataBind();

                //da.;

               //.DataSource = da.GetStreams()
               // ddlQualification.DataTextField = "qualificationID";
               // ddlQualification.DataValueField = "qualificationDescription";
               // ddlQualification.DataBind();


                ddlQualification.DataSource = da.GetQualification();
                ddlQualification.DataTextField = "qualificationDescription";
                ddlQualification.DataValueField = "qualificationID";
                ddlQualification.DataBind();

                ddlSkill.DataSource = da.GetSkills();
                ddlSkill.DataTextField = "skillDescription";
                ddlSkill.DataValueField = "skillID";
                ddlSkill.DataBind();
                ddlUser.DataSource = da.GetUserType();
                ddlUser.DataTextField = "usertypeDescription";
                ddlUser.DataValueField = "usertypeID";
                ddlUser.DataBind();
            }
            txtFirstName.Focus();
        }

        protected void btnRegJobSeeker_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddJobSeeker(txtFirstName.Text, txtLastName.Text, txtUsername.Text, int.Parse(ddlProvince.Text), txtPassword.Text, txtEmailAddress.Text, int.Parse(ddlUser.Text), ddlGender.Text, txtPhoneNo.Text, DateTime.Parse(txtdateOfBirth.Text), txtLinkedInLink.Text, int.Parse(ddlInstitution.Text), int.Parse(ddlQualification.Text), DateTime.Parse(txtYear.Text), int.Parse(ddlSkill.Text));
                lblSuccess.Text = "Successfully Regitered";

            }
            catch (SqlException ex)
            {
                lblWarning.Text = ex.ToString();
            }
        }
    }
}