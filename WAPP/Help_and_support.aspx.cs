using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WAPP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
           var rating = Request.Form["rating"];
           var comments = Request.Form["comments"];
           var Username = (string)Session["username"];
           var user_id= (int)Session["user_id"];
           var Email_Address = (string)Session["Email_Address"];
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

                // Creating the record in the table called feedback
                string createQuery = "insert into feedback (comments, " + "Username, " + "rating, " + "user_id, " + "Email_Address ) values (@comments, " + "@Username," + "@rating, " + "@user_id, " +
                "@Email_Address )";
                SqlCommand createCMD = new SqlCommand(createQuery, conn);

                createCMD.Parameters.AddWithValue("@comments", comments);
                createCMD.Parameters.AddWithValue("@Email_Address",Email_Address);
                createCMD.Parameters.AddWithValue("@rating", rating);
                createCMD.Parameters.AddWithValue("@Username",Username);
                createCMD.Parameters.AddWithValue("@user_id", user_id);
                createCMD.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("HomePage.aspx");
      

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