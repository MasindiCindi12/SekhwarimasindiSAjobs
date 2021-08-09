using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataAccessLayer;

namespace SekhwarimasindiSAjobs
{
    public partial class postJobLogin : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                da.AuthenticateUSer(txtEmailAddress.Text, txtPassword.Text);
                Response.Redirect("PostJob.aspx");
            }

            catch (SqlException ex)
            {
                Label1.Text =ex.ToString();
            }


           

        }
    }
}