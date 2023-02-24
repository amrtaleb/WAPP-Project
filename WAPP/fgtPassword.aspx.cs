using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP
{
    public partial class fgtPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from userData where Username = '" + usrname.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (check == 0 )
            {
                msgU.Visible = true;
                msgU.ForeColor = System.Drawing.Color.Red;
                msgU.Text = "Username not Exist!"
                ;
                Response.Write(msgU);
            }
            else
            {
                string createQuery = "Update userData set Password = @Password where Username = @Username ";
                SqlCommand createCMD = new SqlCommand(createQuery, conn);
                createCMD.Parameters.AddWithValue("@Password", newpassword.Text.Trim());
                createCMD.Parameters.AddWithValue("@Username", usrname.Text.Trim());
                var reader = createCMD.ExecuteNonQuery();


                Response.Redirect("Login.aspx");
            }

        }
    }
}