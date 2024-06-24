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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConString"];
            SqlConnection con = new SqlConnection(ConStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("CompanyUsersChecklog", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int x = int.Parse(dr[0].ToString());
            con.Close();
            if (x > 0)
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("CMHome.aspx");
            }
            else
            {
                Response.Write(x + " Invalid UserName (or) Password...");
             }
        }
    }
}