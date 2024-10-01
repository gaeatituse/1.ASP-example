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
    public partial class Grid1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //if the condition is not given,the editing option will be operated with old data.
            {
                Bind_Grid();
            }

        }

        public void Bind_Grid()
        {
            string str = "select * from UserRegister";
            SqlDataAdapter da = new SqlDataAdapter(str, con);//da=values of query
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)//contains row index of the event done
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];//row index get stored in rw.  
            Label1.Text = rw.Cells[4].Text;
            Label2.Text = rw.Cells[5].Text;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;//initializing row index of the event
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);//To get id of the event operated row index that is to be deleted, from DataKeys.
            string del = "delete from UserRegister where Id=" + getid + "";//To delete corresponding row.
            SqlCommand cmd = new SqlCommand(del, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Bind_Grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;//The -1 implies moving back to previous operation or index.
            Bind_Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;//i==1
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtage = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            TextBox txtaddr = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            string strup = "update UserRegister set Age=" + txtage.Text + ",Address='" + txtaddr.Text + "' where id="+getid+"";
            SqlCommand cmd = new SqlCommand(strup, con);//command to insert,update or delete in connected mode.cmd includes inserted query
            con.Open();
            cmd.ExecuteNonQuery();//To show no of rows affected,for insert,delete or update execution.
            con.Close();

            GridView1.EditIndex = -1;//Have to add cancel program also in update program
            Bind_Grid();
        }
    }
}

//Edit column--->Command Field--->Select or Delete or Add--->Add
//To delete corresponding row,specify the field with which it gets deleted in DataKeyNames in GridView Property