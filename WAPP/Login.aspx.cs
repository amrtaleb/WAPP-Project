using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user_id"] != null)
            {
                Response.Redirect("HomePage.aspx");
            }

        }
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string query = "SELECT * FROM userData WHERE Username = '" + username.Text + "' AND Password = '" + password1.Text + "'";
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int user_id = (int)reader["id"];
                    string Full_Name = (string)reader["Full_Name"];
                    string username = (string)reader["Username"];
                    var Date_of_Birth = reader["Date_of_Birth"];
                    string Contact_No = (string)reader["Contact_No"];
                    string email = (string)reader["Email_Address"];

                    Session["user_id"] = user_id;
                    Session["Full_Name"] = Full_Name;
                    Session["username"] = username;
                    Session["Date_of_Birth"] = Date_of_Birth;
                    Session["Contact_No"] = Contact_No;
                    Session["Email_Address"] = email;
                }

                // Welcome message
                Session["success"] = "You have logged in!";

                Response.Redirect("HomePage.aspx");
            }
            else
            {

                Response.Write("invalid_credentials");
            }

        }

    }
}