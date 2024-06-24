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
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                SqlConnection con = new SqlConnection(ConStr);
                {
                    SqlCommand cmd = new SqlCommand("DispJobAccount", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    string username = Session["UserName"]?.ToString();
                    cmd.Parameters.AddWithValue("@UserName", username);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        TextBox1.Text = reader["FirstName"].ToString();
                        TextBox2.Text = reader["LastName"].ToString();
                        TextBox3.Text = reader["UserName"].ToString();
                        TextBox4.Text = reader["Mobile"].ToString();
                        TextBox5.Text = reader["AddressDetails"].ToString();
                        TextBox6.Text = reader["City"].ToString();
                        DropDownList4.SelectedValue = reader["Degree"].ToString();
                        DropDownList5.SelectedValue = reader["Skill"].ToString();
                        TextBox7.Text = reader["PassYear"].ToString();
                        DropDownList6.SelectedValue = reader["Experience"].ToString();
                        TextBox8.Text = reader["Detail"].ToString();
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
            SqlCommand cmd = new SqlCommand("updJobAccount", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@UserName", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
            cmd.Parameters.AddWithValue("@AddressDetails", TextBox5.Text);
            cmd.Parameters.AddWithValue("@City", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Degree", DropDownList4.Text);
            cmd.Parameters.AddWithValue("@Skill", TextBox7.Text);
            cmd.Parameters.AddWithValue("@PassYear", DropDownList5.Text);
            cmd.Parameters.AddWithValue("@Experience", DropDownList6.Text);
            cmd.Parameters.AddWithValue("@Detail", TextBox8.Text);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(x + " Password Changed Successfully...");
        }
    
    }
}