using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1.ASP_example
{
    public partial class Assignment1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-G3AE\SQLEXPRESS;database=Ado1;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Display_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Name1.Text = Nametxt.Text;
            Age1.Text = Agetxt.Text;
            Address1.Text = Addresstxt.Text;
            Phone1.Text = Phonetxt.Text;
            Email1.Text = Emailtxt.Text;
            Gender1.Text = Genderlist.SelectedItem.Text;
            State1.Text = Statelist.SelectedItem.Text;
            string s="";
            for(int i = 0; i < Qualificationlist.Items.Count; i++)
            {
                if (Qualificationlist.Items[i].Selected)
                {
                    s = s + Qualificationlist.Items[i].Text + "  ";
                }  
            }
            Qualification1.Text = s;
            string p = "~/Photo/" + PhotoUpload.FileName;
            PhotoUpload.SaveAs(MapPath(p));
            Photourl1.Text = p;
            Photoimage1.ImageUrl = p;
            Username1.Text = Usernametxt.Text;
            Password1.Text = Passwordtxt.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string exist = "select count(Id) from UserRegister where Username='" + Usernametxt.Text + "'";
            SqlCommand cmd = new SqlCommand(exist, con);
            con.Open();
            string cid = cmd.ExecuteScalar().ToString();
            con.Close();
            int cid1 = Convert.ToInt32(cid);
            if (cid1 > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Please choose another username";
            }
            else
            {
                Label2.Visible = false;
                string p = "~/Photo/" + PhotoUpload.FileName;
                PhotoUpload.SaveAs(MapPath(p));

                string s = "";
                for (int i = 0; i < Qualificationlist.Items.Count; i++)
                {
                    if (Qualificationlist.Items[i].Selected)
                    {
                        s = s + Qualificationlist.Items[i].Text + "  ";
                    }
                }
                Qualification1.Text = s;
                string str = "insert into UserRegister values('" + Nametxt.Text + "'," + Agetxt.Text + ",'" + Addresstxt.Text + "'," + Phonetxt.Text + ",'" + Emailtxt.Text + "','" + Genderlist.SelectedItem.Text + "','" + Statelist.SelectedItem.Text + "','" + s + "','" + p + "','" + Usernametxt.Text + "','" + Passwordtxt.Text + "')";
                SqlCommand cmd2 = new SqlCommand(str, con);
                con.Open();
                int j = cmd2 .ExecuteNonQuery();
                con.Close();
                if (j != 0)
                {
                    Label1.Text = "Inserted";
                }
            }

            


        }

        protected void Usernametxt_TextChanged(object sender, EventArgs e)
        {
            string exist = "select count(Id) from UserRegister where Username='" + Usernametxt.Text + "'";
            SqlCommand cmd = new SqlCommand(exist, con);
            con.Open();
            string cid = cmd.ExecuteScalar().ToString();
            con.Close();
            int cid1 = Convert.ToInt32(cid);
            if (cid1 > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Please choose another username";
            }
            else
            {
                Label2.Visible = false;
            }
        }
    }
}