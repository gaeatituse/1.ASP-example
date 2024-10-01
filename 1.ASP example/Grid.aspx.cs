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
    public partial class Grid : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Bind_Grid();

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
    }
}
//Bound and Image Field in GridView
//Click GridView--->Edit Column---->Click Bound Field---->Add---->Properties:Header Text implies column heading name and Data Field implies table column heading name (Write data field as same as table column name).
//If we want to remove existing column,Unselect AutoGenerate column in Edit column table.
//For Image to be added,Click Edit column--->Click Image Field--->Add---->Properties:Header Text implies column heading we are going to give,DataImageUrl implies name of table column heading specified,Height and Width in Control Styles Under Styles adjusts height and width.
