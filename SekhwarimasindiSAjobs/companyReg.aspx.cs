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
    public partial class companyReg : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtRepID.Focus();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddCompany(txtcomName.Text, txtWeb.Text, txtPhoneNo.Text, int.Parse(txtRepID.Text));
                lblSuccess.Text = "Company Successfully Registered...";
            }
            catch(SqlException ex)
            {
                lblWarning.Text = ex.ToString();
            }
        }
    }
}