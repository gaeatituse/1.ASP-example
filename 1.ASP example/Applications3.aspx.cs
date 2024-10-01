using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.ASP_example
{
    public partial class Applications3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["na"].ToString();
            Label2.Text = Session["ag"].ToString();
        }
    }
}