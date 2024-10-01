using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1.ASP_example
{
    public partial class Paaswordchange : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str="update UserRegister set Password='"+TextBox2.Text+"' where Id="+Session["uid"]+" and Password='"+TextBox1.Text+"'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
             int i1 = cmd.ExecuteNonQuery();
            con.Close();
            if (i1 == 1)
            {
                Label1.Text = "Password Changed";
            }
        }
    }
}