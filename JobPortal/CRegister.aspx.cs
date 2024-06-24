using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("InsCRegister", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@CompanyName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@UserName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ContactPerson", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox6.Text);
            cmd.Parameters.AddWithValue("@AddressDetails", TextBox7.Text);
            cmd.Parameters.AddWithValue("@City", TextBox8.Text);
            cmd.Parameters.AddWithValue("@JobType", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Detail", TextBox10.Text);
            //int x = cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Write(x + " Company Registration Successfully Completed...");
            int x = cmd.ExecuteNonQuery();
            con.Close();
            if (x > 0)
            {
                Session["UserName"] = TextBox2.Text;
                Session["CompanyName"] = TextBox1.Text;
                Response.Write(x + " Company Registration Successfully Completed...");
            }
            else
            {
                Response.Write(x + " Company Registration Not Successfully Completed...");
            }
        }
    }
}