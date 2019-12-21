using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using InfowayEventManager.Dal;

namespace InfowayEventManager.Securtity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            CredentialDal cdal = new CredentialDal();

            DataTable table = cdal.checkCredential(username.Text,password.Text);
            if (table.Rows.Count > 0)
            {
                Session["Role"] = table.Rows[0][3];
                Response.Redirect("~/Home.aspx?uname="+ username.Text);
            }
        }
    }
}