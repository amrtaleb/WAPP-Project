using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course
{
    public partial class CPractice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            // Get the selected answer from the radio button list
            string selectedAnswer1 = PQ1.SelectedValue;
            string selectedAnswer2 = PQ2.SelectedValue;
            string selectedAnswer3 = PQ3.SelectedValue;
            string selectedAnswer4 = PQ4.SelectedValue;
            string selectedAnswer5 = PQ5.SelectedValue;
            string username = (string)Session["username"];

            //con.Open();

            //string query = "insert into PracticeTable (username, Language, Q1, Q2, Q3, Q4, Q5) values (@username, @Languege, @PQ1, @PQ2, @PQ3, @PQ4, @PQ5)";
            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@PQ1", PQ1.SelectedValue);
            //cmd.Parameters.AddWithValue("@PQ2", PQ2.SelectedValue);
            //cmd.Parameters.AddWithValue("@PQ3", PQ3.SelectedValue);
            //cmd.Parameters.AddWithValue("@PQ4", PQ4.SelectedValue);
            //cmd.Parameters.AddWithValue("@PQ5", PQ5.SelectedValue);
            ////cmd.ExecuteNonQuery();

            //con.Close();

            // Save the answer to the database
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand("insert into PracticeTable (username, Language, Q1, Q2, Q3, Q4, Q5) values (@username, @Language, @PQ1, @PQ2, @PQ3, @PQ4, @PQ5)", connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@Language", "Chinese");
                command.Parameters.AddWithValue("@PQ1", PQ1.SelectedValue);
                command.Parameters.AddWithValue("@PQ2", PQ2.SelectedValue);
                command.Parameters.AddWithValue("@PQ3", PQ3.SelectedValue);
                command.Parameters.AddWithValue("@PQ4", PQ4.SelectedValue);
                command.Parameters.AddWithValue("@PQ5", PQ5.SelectedValue);
                command.ExecuteNonQuery();

                connection.Close();
            }

            // Check if the answer is correct and show the result
            if (selectedAnswer1 == "五声")
            {
                PQ1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ1.SelectedValue = "五声";
                PQ1.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer2 == "liu")
            {
                PQ2.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ2.SelectedValue = "liu";
                PQ2.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer3 == "叶子")
            {
                PQ3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ3.SelectedValue = "叶子";
                PQ3.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer4 == "上课")
            {
                PQ4.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ4.SelectedValue = "上课";
                PQ4.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer5 == "图书馆")
            {
                PQ5.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ5.SelectedValue = "图书馆";
                PQ5.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void test_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTest.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chinese.aspx");
        }
    }
}