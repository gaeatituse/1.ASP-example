using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.ASP_example
{
    public partial class Thirdpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label1.Text = DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList1.SelectedItem.Value;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label4.Visible = true;
            Label3.Text = RadioButtonList1.SelectedItem.Text;
            Label4.Text = RadioButtonList1.SelectedItem.Value;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            Label6.Visible = true;
            Label5.Text = ListBox1.SelectedItem.Text;
            Label6.Text = ListBox1.SelectedItem.Value;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label1.Text = DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList1.SelectedItem.Value;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label4.Visible = true;
            Label3.Text = RadioButtonList1.SelectedItem.Text;
            Label4.Text = RadioButtonList1.SelectedItem.Value;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Visible = true;
            Label6.Visible = true;
            Label5.Text = ListBox1.SelectedItem.Text;
            Label6.Text = ListBox1.SelectedItem.Value;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string s = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    s = s + CheckBoxList1.Items[i].Text + ",";
                }
            }
            Label7.Text = s;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            Panel1.Visible = true;
            Label9.Text = p;
            Image1.ImageUrl = p; 
        }
    }
}