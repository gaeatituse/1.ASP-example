using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1.ASP_example
{
    public partial class UserProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select Name,Age,Address,Phone,Photo from UserRegister where Id=" + Session["uid"] + "";
                SqlCommand cmd = new SqlCommand(sel, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr["Name"].ToString();
                    TextBox2.Text = dr["Age"].ToString();
                    TextBox3.Text = dr["Address"].ToString();
                    TextBox4.Text = dr["Phone"].ToString();
                    Image1.ImageUrl = dr["Photo"].ToString();
                }
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string upd = "update UserRegister set Age=" + TextBox2.Text + ",Address='" + TextBox3.Text + "' where Id=" + Session["uid"] + "";
            SqlCommand cmd = new SqlCommand(upd, con);
            con.Open();
            int i1 = cmd.ExecuteNonQuery();
            con.Close();
            if (i1 == 1)
            {
                Label1.Text = "Updated";
            }
        }
    }
}