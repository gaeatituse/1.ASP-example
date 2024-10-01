using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.ASP_example
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.Form["TextBox1"];
            Label2.Text = Request.Form["TextBox2"];
        }
    }
}
//What is the difference between Server.Trransfer and Response.Redirect ?