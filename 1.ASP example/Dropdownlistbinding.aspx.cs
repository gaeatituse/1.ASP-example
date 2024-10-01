using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace _1.ASP_example
{
    public partial class Dropdownlistbinding : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select Id,Name from UserRegister";
                SqlDataAdapter da = new SqlDataAdapter(s, con);//da contains values of query(here:Id and Name)
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //For the DropDownList to select index give the event SelectedIndexChanged
            //To change Label according to Item,put AutoPostBack True and give an if condition to pageload program.
            Label1.Text = DropDownList1.SelectedItem.Value;
            Label2.Text = DropDownList1.SelectedItem.Text;
            //To display information about one Id from DropDownlist in GridView
            string str = "select * from UserRegister where Id='"+DropDownList1.SelectedItem.Value+"'";
            SqlDataAdapter da = new SqlDataAdapter(str, con);//da=values of query
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select * from UserRegister";
            SqlDataAdapter da = new SqlDataAdapter(str, con);//da=values of query
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = "select * from UserRegister";
            SqlDataAdapter da = new SqlDataAdapter(str, con);//da=values of query
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}