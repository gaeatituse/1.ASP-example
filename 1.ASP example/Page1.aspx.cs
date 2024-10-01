using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.ASP_example
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Page2.aspx");
            //QueryString-Research about it
            //"+   +"
            Response.Redirect("Page2.aspx?na="+TextBox1.Text+"&ag="+TextBox2.Text+"");
            //Page2.aspx?na=anu&ag=22
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Server helps to pass by giving only Page name but it will be accessible only in Page Load.
            Server.Transfer("Page3.aspx");
        }
    }
}