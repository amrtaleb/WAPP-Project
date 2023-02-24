using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course
{
    public partial class BMTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            // Get the selected answer from the radio button list
            string selectedAnswer1 = PQ1.SelectedValue;
            string selectedAnswer2 = PQ2.SelectedValue;
            string selectedAnswer3 = PQ3.SelectedValue;
            string selectedAnswer4 = PQ4.SelectedValue;
            string selectedAnswer5 = PQ5.SelectedValue;
            string username = (string)Session["username"];

            // Save the answer to the database
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand("insert into PracticeTable (username, Language, Q1, Q2, Q3, Q4, Q5) values (@username, @Language, @PQ1, @PQ2, @PQ3, @PQ4, @PQ5)", connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@Language", "Bahasa Melayu");
                command.Parameters.AddWithValue("@PQ1", PQ1.SelectedValue);
                command.Parameters.AddWithValue("@PQ2", PQ2.SelectedValue);
                command.Parameters.AddWithValue("@PQ3", PQ3.SelectedValue);
                command.Parameters.AddWithValue("@PQ4", PQ4.SelectedValue);
                command.Parameters.AddWithValue("@PQ5", PQ5.SelectedValue);
                command.ExecuteNonQuery();

                connection.Close();
            }

            // Check if the answer is correct and show the result
            if (selectedAnswer1 == "u")
            {
                PQ1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ1.SelectedValue = "u";
                PQ1.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer2 == "ja")
            {
                PQ2.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ2.SelectedValue = "ja";
                PQ2.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer3 == "ta")
            {
                PQ3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ3.SelectedValue = "ta";
                PQ3.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer4 == "pergi")
            {
                PQ4.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ4.SelectedValue = "pergi";
                PQ4.ForeColor = System.Drawing.Color.Red;
            }

            if (selectedAnswer5 == "biru")
            {
                PQ5.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                PQ5.SelectedValue = "biru";
                PQ5.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("BM.aspx");
        }
    }
}