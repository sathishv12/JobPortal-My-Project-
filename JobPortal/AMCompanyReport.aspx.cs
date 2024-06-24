using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("SELECT DISTINCT UserName FROM CRegister", con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DropDownList1.Items.Clear();

                    while (reader.Read())
                    {
                        string skill = reader["UserName"].ToString();
                        DropDownList1.Items.Add(new ListItem(skill, skill));
                    }

                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedSkill = DropDownList1.SelectedValue;

            string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            using (SqlConnection con = new SqlConnection(conStr))
                {
                SqlCommand cmd = new SqlCommand("DispCompanyAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", selectedSkill);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {

		
                    // Display data in text boxes
                    TextBox1.Text = reader["CompanyName"].ToString();
                    TextBox2.Text = reader["ContactPerson"].ToString();
                    TextBox3.Text = reader["Mobile"].ToString();
                    TextBox4.Text = reader["AddressDetails"].ToString();
                    TextBox5.Text = reader["City"].ToString();
                    TextBox6.Text = reader["JobType"].ToString();
                    TextBox6.Text = reader["Detail"].ToString();
                }
                reader.Close();
                con.Close();
            }
        }
    }
}