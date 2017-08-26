using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2.locked
{
    public partial class displayproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string textid = Request.QueryString["id"];
            SqlDataSource1.SelectCommand = "SELECT * FROM Product WHERE id = " + textid;
        }
    }
}