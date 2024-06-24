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
    public partial class WebForm29 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("DispRegisterNewJob", con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DropDownList1.Items.Clear();

                    while (reader.Read())
                    {
                        string skill = reader["CompanyName"].ToString();
                        DropDownList1.Items.Add(new ListItem(skill, skill));
                    }

                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedSkill = DropDownList1.SelectedValue;

            string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("DispRegisterNewJobCompany", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CompanyName", selectedSkill);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Display data in text boxes
                    TextBox1.Text = reader["JobTitle"].ToString();
                    TextBox2.Text = reader["Degree"].ToString();
                    TextBox3.Text = reader["Skill"].ToString();
                    TextBox4.Text = reader["Salary"].ToString();
                    TextBox5.Text = reader["Detail"].ToString();
                    TextBox6.Text = reader["Experience"].ToString();
                }
                reader.Close();
                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                SqlConnection con = new SqlConnection(ConStr);
                con.Open();
                SqlCommand cmd = new SqlCommand("InsMatchJob", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CompanyName", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@JobTitle", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Degree", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Skill", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Salary", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Detail", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Experience", TextBox6.Text);
                int x = cmd.ExecuteNonQuery();
                con.Close();
                Response.Write(x + " record(s) deleted successfully...");
            
        }
    }
}