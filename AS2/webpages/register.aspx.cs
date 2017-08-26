using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class register : Webpage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Request.QueryString["SCRIPT_NAME"];
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void button1_Click(object sender, EventArgs e)
        {
                SqlDataSource1.InsertParameters["email"].DefaultValue = this.emailTextBox.Text;
                SqlDataSource1.InsertParameters["password"].DefaultValue = this.passwordTextBox.Text;
                SqlDataSource1.InsertParameters["firstname"].DefaultValue = this.firstname.Text;
                SqlDataSource1.InsertParameters["lastname"].DefaultValue = this.lastname.Text;
                SqlDataSource1.InsertParameters["gender"].DefaultValue = this.genderradio.SelectedValue;
                SqlDataSource1.InsertParameters["age"].DefaultValue = this.ageTextBox.Text;
                SqlDataSource1.InsertParameters["favouritewebsite"].DefaultValue = this.urlTextBox.Text;
                SqlDataSource1.InsertParameters["country"].DefaultValue = this.countrylist.SelectedValue;
                SqlDataSource1.InsertParameters["favouriteplant"].DefaultValue = this.plantlist.SelectedValue;
                SqlDataSource1.InsertParameters["attributes"].DefaultValue = this.itemchecklist.SelectedValue;
            try
            {
                SqlDataSource1.Insert();
                Server.Transfer("~/registersuccess.aspx");
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
                Response.Write("<script>...alert('Register Failed!')</script>");
            }
        }

        protected void Unnamed12_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}