using System;

namespace AS2
{
    public class Webpage : System.Web.UI.Page
    {
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            if (Session["styletheme"] == null || Session["styletheme"].ToString().Equals(""))
            {
                Page.Theme = "theme1";
            }
            else
                Page.Theme = Session["styletheme"].ToString();
        }
    }
}
