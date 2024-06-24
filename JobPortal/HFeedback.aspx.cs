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
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("InsHFeedback", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@FMobile", TextBox2.Text);
            cmd.Parameters.AddWithValue("@FEmail", TextBox3.Text);
            cmd.Parameters.AddWithValue("@FFeedBack", TextBox4.Text);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(x + " Student  Inserted Successfully...");
        }
    }
}