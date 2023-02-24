using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WAPP
{
    public partial class Personal_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBackEventControlRegistered)
            {
                //Do something here for the first time

                if (Session["user_id"] != null)
                {
                    
                    Username.Text = (string)Session["username"];
                    Full_Name.Text = (string)Session["Full_Name"];
                    Email_Address.Text = (string)Session["Email_Address"];
                    Contact_No.Text = (string)Session["Contact_No"];
                    DateTime dt = (DateTime)Session["Date_of_Birth"];

                    string s = dt.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
                    Date_of_Birth.Text = s;
                }
                else
                {

                    Response.Redirect("HomePage.aspx");
                }
            }
            else
            {
                StackTrace stackTrace = new StackTrace();
                string eventName = stackTrace.GetFrame(1).GetMethod().Name; // this will the event name.
                if (eventName == "Save_Click")
                {
                    // code to increase the count;
                    Username.Text = (string)Session["username"];
                    Full_Name.Text = (string)Session["Full_Name"];
                    Email_Address.Text = (string)Session["Email_Address"];
                    Contact_No.Text = (string)Session["Contact_No"];
                    DateTime dt = (DateTime)Session["Date_of_Birth"];

                    string s = dt.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
                    Date_of_Birth.Text = s;
                }

            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from userData where Username = '" + Username.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (check > 0 && Username.Text != (string)Session["username"])
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
                string createQuery = "Update userData set Full_Name = @Full_Name, Username = @Username, Date_of_Birth = @Date_of_Birth, Contact_No = @Contact_No, Email_Address = @Email_Address where Username = @Username2 ";
                SqlCommand createCMD = new SqlCommand(createQuery, conn);
                System.Diagnostics.Debug.WriteLine(Full_Name.Text);
                createCMD.Parameters.AddWithValue("@Contact_No", Contact_No.Text.Trim());
                createCMD.Parameters.AddWithValue("@Email_Address", Email_Address.Text.Trim());
                createCMD.Parameters.AddWithValue("@Full_Name", Full_Name.Text.Trim());
                createCMD.Parameters.AddWithValue("@Username", Username.Text.Trim());
                createCMD.Parameters.AddWithValue("@Username2", Username.Text.Trim());
                createCMD.Parameters.AddWithValue("@Date_of_Birth", Date_of_Birth.Text.Trim());
                var reader = createCMD.ExecuteReader();
                
                System.Diagnostics.Debug.WriteLine(reader);
                if(reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int user_id = (int)reader["id"];
                        string Full_Name = (string)reader["Full_Name"];
                        string username = (string)reader["Username"];
                        var Date_of_Birth = reader["Date_of_Birth"];
                        string Contact_No = (string)reader["Contact_No"];
                        string email = (string)reader["Email_Address"];

                        Session.RemoveAll();
                        Session.Clear();

                        Session["Date_of_Birth"] = Date_of_Birth;
                    }
                }
                conn.Close();

                Session["Full_Name"] = Full_Name.Text;
                Session["username"] = Username.Text;
                Session["Contact_No"] = Contact_No.Text;
                Session["Email_Address"] = Email_Address.Text;
                Response.Redirect("HomePage.aspx");
            }

        }
    }
}