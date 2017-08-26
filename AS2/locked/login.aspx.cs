using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class login : Webpage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Customer WHERE email = '" + Login1.UserName +
      "' AND password = '" + Login1.Password + "'";
            if (SqlDataSource1.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                Session["email"] = Login1.UserName;
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);

            }
            else
            {
                Login1.FailureText = "Invalid Login";
            }
        }

        protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows > 0)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            }
            else
            {
                Login1.FailureText = "Invalid Login";
            }
        }
    }
}