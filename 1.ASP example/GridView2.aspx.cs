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
    public partial class GridView2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Grid();
            }
        }
        public void Bind_Grid()
        {
            string str = "select * from UserRegister";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        //GridView Delete using Template Field
        //Smart icon--->Edit Column--->Template Field--->Add--->HeaderText=Delete--->OK
        //Smarticon--->Edit Templates--->Add a LinkButton into Item Template--->Smart icon of LinkButton--->Edit DataBindings--->Select Command Argument-->Write Code Expression as Eval("Id")--->OK--->End Template editing
        //Open command event of LinkButton since the control is inside another control(indirect way).

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string del = "delete from UserRegister where Id=" + id + "";
            SqlCommand cmd = new SqlCommand(del, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Bind_Grid();
        }

        //GridView Paging--->To Sort the data in each page
        //GridView properties--->Allow Paging=True--->Page Size=2
        //GridView event--->click PageIndexChanging
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind_Grid();
        }        
        
    }
}