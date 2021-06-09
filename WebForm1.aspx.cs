using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Q_NO_5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string namee = username.Text;
            string pass = password.Text;
            if(namee.Equals("abc")&& pass.Equals("abc123"))
            {
                Session["username"] = namee;
                Response.Redirect("WebForm2.aspx");
            }
            else
                Label1.Text="INVALID LOGIN";
        }
    }
}