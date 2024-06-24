using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Reflection;

namespace JobPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("InsJRegister", con);
            cmd.CommandType = CommandType.StoredProcedure;  
            con.Open();
            cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@UserName", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButton1.Checked ? RadioButton1.Text : RadioButton2.Text);
            cmd.Parameters.AddWithValue("@DOB", DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@AddressDetails", TextBox7.Text);
            cmd.Parameters.AddWithValue("@City", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Degree", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@Skill", DropDownList5.SelectedValue);
            cmd.Parameters.AddWithValue("@PassYear", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Experience", DropDownList6.SelectedValue);
            cmd.Parameters.AddWithValue("@Detail", TextBox10.Text);
            //int x = cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Write(x + " Student  Inserted Successfully...");
            int x = cmd.ExecuteNonQuery();
            con.Close();
            if (x > 0)
            {
                Session["UserName"] = TextBox3.Text;
                Response.Write(x + " Job Registration Successfully Completed...");
                //Response.Redirect("JMAccount.aspx");
            }
            else
            {
                Response.Write("Error inserting student details.");
            }

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}