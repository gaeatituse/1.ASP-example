﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _1.ASP_example
{
    public partial class Sql1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "insert into Table_1 values('"+TextBox1.Text+"',"+TextBox2.Text+",'"+TextBox3.Text+"')";
            SqlCommand cmd = new SqlCommand(str,con);//cmd=insert query
            con.Open();
            int i=cmd.ExecuteNonQuery();
            con.Close();
            if (i!=0)
            {
                Label1.Text = "Inserted";
            }
        }
    }
}