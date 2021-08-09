using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SekhwarimasindiSAjobs
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegJobSeeker_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterJobSeeker.aspx");
        }

        protected void btnEMployerReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("companyRepRegistration.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if()
        }
    }
}