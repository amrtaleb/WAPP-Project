using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP
{
    public partial class HomePage : Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            System.Diagnostics.Debug.WriteLine("Iam inside page load");
            
        }

/*        protected void create_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from userData where Username = '" + username2.Text.Trim() +"'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (check > 0)
            {
                msgU.Visible = true;
                msgU.ForeColor = System.Drawing.Color.Red;
                msgU.Text = "Username has been taken!"
                ;
                Response.Write(msgU);
            }
            else
            {
             
                // Creating the record in the table called userData
                string createQuery = "insert into userData (Full_Name, " + "Username, " + "Password, " + "Date_of_Birth, " + "Contact_No, " + "Email_Address ) values (@Full_Name, " + "@Username," + "@Password, " + "@Date_of_Birth, " + "@Contact_No, " +
                "@Email_Address )";
                SqlCommand createCMD = new SqlCommand(createQuery, conn);

                createCMD.Parameters.AddWithValue("@Contact_No", contactNo.Text.Trim());
                createCMD.Parameters.AddWithValue("@Email_Address", email.Text.Trim());
                createCMD.Parameters.AddWithValue("@Full_Name", name.Text.Trim());
                createCMD.Parameters.AddWithValue("@Username", username2.Text.Trim());
                createCMD.Parameters.AddWithValue("@Date_of_Birth", dob.Text.Trim());
                createCMD.Parameters.AddWithValue("@Password", password2.Text.Trim());
                createCMD.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("HomePage.aspx");
            }
        }
*/
        protected void loginbtn_Click(object sender, EventArgs e)
        {
       /*    string query = "SELECT * FROM userData WHERE Username = '" + username.Text + "' AND Password = '" + password1.Text + "'";
           SqlCommand command = new SqlCommand(query, conn);
           SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int user_id = (int)reader["id"];
                    string Full_Name = (string)reader["Full_Name"];
                    string Date_of_Birth = (string)reader["Date_of_Birth"];
                    string Contact_No = (string)reader["Contact_No"];
                    string email = (string)reader["Email_Address"];

                    Session["user_id"] = user_id;
                    Session["Full_Name"] = Full_Name;
                    Session["Date_of_Birth"] = Date_of_Birth;
                    Session["Contact_No"] = Contact_No;
                    Session["Email_Address"] = email;
                }
            }

            // Welcome message
            Session["success"] = "You have logged in!";*/
        }


        protected void Unnamed_Click(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("inside Logout Fun");
            Session.Abandon();
            Session.Clear();

            System.Diagnostics.Debug.WriteLine("Session Deleted");
            Response.Redirect("HomePage.aspx");
        }

    }



}