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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                SqlConnection con = new SqlConnection(ConStr);
                {
                    SqlCommand cmd = new SqlCommand("DispCompanyUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    string username = Session["UserName"]?.ToString();
                    cmd.Parameters.AddWithValue("@UserName", username);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        TextBox1.Text = reader["CompanyName"].ToString();
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            SqlConnection con = new SqlConnection(ConStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("InsRegisterNewJob", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@JobTitle", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Degree", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@Skill", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Salary", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Experience", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@NoofVacancy", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Detail", TextBox5.Text);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(x + " Password Changed Successfully...");
        }
    }
}