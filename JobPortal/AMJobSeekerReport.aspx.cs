using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace JobPortal
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("SELECT DISTINCT UserName FROM JRegister", con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DropDownList1.Items.Clear();

                    while (reader.Read())
                    {
                        string username = reader["UserName"].ToString();
                        DropDownList1.Items.Add(new ListItem(username, username));
                    }

                    reader.Close();
                    con.Close();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedusername = DropDownList1.SelectedValue;

            string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("DispJobAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", selectedusername);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Display data in text boxes
                    TextBox1.Text = reader["FirstName"].ToString();
                    TextBox2.Text = reader["LastName"].ToString();
                    TextBox3.Text = reader["Mobile"].ToString();
                    TextBox4.Text = reader["AddressDetails"].ToString();
                    TextBox5.Text = reader["City"].ToString();
                    TextBox6.Text = reader["Degree"].ToString();
                    TextBox7.Text = reader["Skill"].ToString();
                    TextBox8.Text = reader["PassYear"].ToString();
                    TextBox9.Text = reader["Experience"].ToString();
                    TextBox10.Text = reader["Degree"].ToString();
                }
                reader.Close();
                con.Close();
            }
        }
    }
}