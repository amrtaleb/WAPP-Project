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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from userData where Username = '" + username2.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (check > 0)
            {
                msgU.Visible = true;
                msgU.ForeColor = System.Drawing.Color.Red;
                msgU.Text = "Username has been taken!";
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

    }
}