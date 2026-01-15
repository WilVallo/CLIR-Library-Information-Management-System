using System;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace CLIR_Library_Information_Management_System.Admin
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        // Connection string from your Web.config
        string connStr = ConfigurationManager.ConnectionStrings["LibraryDb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardStats();
            }
        }

        private void LoadDashboardStats()
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    // Query 1: Count Staff
                    string staffQuery = "SELECT COUNT(*) FROM staff WHERE status = 'Active'";
                    MySqlCommand cmdStaff = new MySqlCommand(staffQuery, conn);
                    litStaffCount.Text = cmdStaff.ExecuteScalar().ToString();

                    // Query 2: Count Patrons
                    string patronQuery = "SELECT COUNT(*) FROM patron";
                    MySqlCommand cmdPatron = new MySqlCommand(patronQuery, conn);
                    litPatronCount.Text = cmdPatron.ExecuteScalar().ToString();
                }
                catch (Exception ex)
                {
                    // Basic error handling for connection issues
                    litStaffCount.Text = "Error";
                    litPatronCount.Text = "Error";
                }
            }
        }
    }
}