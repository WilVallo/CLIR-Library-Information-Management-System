using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace CLIR_Library_Information_Management_System
{
    public partial class Default : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["LibraryDb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void login_BTN_Click(object sender, EventArgs e)
        {
            // Clear previous messages
            lblMessage.Text = "";

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    string query = "SELECT type_of_user FROM staff WHERE username=@uname AND password=@pword AND status='Active'";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@uname", uname_TB.Text.Trim());
                    cmd.Parameters.AddWithValue("@pword", pword_TB.Text.Trim());

                    conn.Open();
                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        string role = result.ToString();
                        Session["UserRole"] = role;

                        if (role == "Admin")
                            Response.Redirect("~/Admin/Admin_Dashboard.aspx");
                        else
                            Response.Redirect("~/staff_Dashboard.aspx");
                    }
                    else
                    {
                 
                        lblMessage.Text = "Invalid username or password. Please try again.";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "System Error: Unable to connect to database.";
                }
            }
        }
    }
    }
