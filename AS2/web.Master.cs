using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class web : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["styletheme"] = this.DropDownList1.SelectedItem.Text;
            Response.Redirect("~/Default.aspx");
        }

        //protected void ShowcodeLinkButton_Click(object sender, EventArgs e)
        //{
        //    string s = System.IO.Path.GetFileName(Request.Path).ToString();
        //    s = "~/showcode.aspx?as=" + s + "&cs=" + s + ".cs";
        //    ShowcodeLinkButton.Attributes.Add("href", s);
        //    ShowcodeLinkButton.Attributes.Add("target", "_blank");
        //    //Server.TransferRequest(s);
        //    //Response.Redirect(s);
        //    //Response.Write("<script language=javascript>alert('请登录');location='login.aspx'</script>");
        //    //Response.Write("<script language='JavaScript'>window.open('" + s + "');</script>");
        //}

        //        protected void ShowcodeLinkButton_Click1(object sender, EventArgs e)
        //        {
        //            string s = System.IO.Path.GetFileName(Request.Path).ToString();
        //            s = "~/showcode.aspx?as=" + s + "&cs=" + s + ".cs";
        //            Page.ClientScript.RegisterStartupScript(
        //this.GetType(), "OpenWindow", "window.open(s,'_newtab');", true);
        //        }
    }
}