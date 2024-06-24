using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class WebForm28 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("SELECT DISTINCT FName FROM HFeedback", con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DropDownList1.Items.Clear();

                    while (reader.Read())
                    {
                        string name = reader["FName"].ToString();
                        DropDownList1.Items.Add(new ListItem(name, name));
                    }

                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedName = DropDownList1.SelectedValue;

            string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("DispFeedbackReport", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FName", selectedName);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Display data in text boxes
                    TextBox1.Text = reader["FName"].ToString();
                    TextBox2.Text = reader["FMobile"].ToString();
                    TextBox3.Text = reader["FEmail"].ToString();
                    TextBox4.Text = reader["FFeedback"].ToString();
                }
                reader.Close();
                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}