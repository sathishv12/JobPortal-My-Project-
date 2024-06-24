using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load data when the page loads for the first time
                // Connection string from the web.config file
                string conStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];

                // Create SQL connection
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    // Create an SQL command for the stored procedure DispRegisterNewJob
                    SqlCommand cmd = new SqlCommand("DispRegisterNewJob", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Open the connection
                    con.Open();

                    // Create a DataAdapter to fill a DataSet
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);

                    // Bind the data from the DataSet to the GridView
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();

                    // Close the connection
                    con.Close();
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Apply")
            {
                try
                {
                    // Get the index of the selected row from the CommandArgument
                    int index = Convert.ToInt32(e.CommandArgument);

                    // Retrieve the selected row from the GridView
                    GridViewRow selectedRow = GridView1.Rows[index];

                    // Retrieve data from the selected row's cells
                    string companyName = selectedRow.Cells[0].Text;
                    string jobTitle = selectedRow.Cells[1].Text;
                    string degree = selectedRow.Cells[2].Text;
                    string skill = selectedRow.Cells[3].Text;
                    string salary = selectedRow.Cells[4].Text;
                    string details = selectedRow.Cells[5].Text;
                    string experience = selectedRow.Cells[6].Text;

                    // Connection string from the web.config file
                    string conStr = ConfigurationManager.AppSettings["ConString"];

                    // Execute the stored procedure to insert data into the database table
                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        SqlCommand cmd = new SqlCommand("InsMatchJob", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@CompanyName", companyName);
                        cmd.Parameters.AddWithValue("@JobTitle", jobTitle);
                        cmd.Parameters.AddWithValue("@Degree", degree);
                        cmd.Parameters.AddWithValue("@Skill", skill);
                        cmd.Parameters.AddWithValue("@Salary", salary);
                        cmd.Parameters.AddWithValue("@Details", details);
                        cmd.Parameters.AddWithValue("@Experience", experience);

                        // Open the connection and execute the stored procedure
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        // Check the number of affected rows and provide feedback
                        if (rowsAffected > 0)
                        {
                            // Notify the user of success
                            Response.Write("Job application submitted successfully!");
                        }
                        else
                        {
                            // Notify the user of failure
                            Response.Write("Failed to apply for the job. Please try again.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions and provide feedback
                    Response.Write("An error occurred while applying for the job. Please try again.");
                    // Optionally log the error: Logger.Log(ex);
                }
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}