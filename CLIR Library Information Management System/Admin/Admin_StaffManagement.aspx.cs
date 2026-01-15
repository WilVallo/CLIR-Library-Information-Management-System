using System;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace CLIR_Library_Information_Management_System.Admin
{
    public partial class Admin_StaffManagement : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["LibraryDb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { BindStaffGrid(); }
        }

        private void ShowAlert(string message)
        {
            string script = $"alert('{message}');";
            ScriptManager.RegisterStartupScript(this, GetType(), "MessageBox", script, true);
        }

        protected void btnSearch_Click(object sender, EventArgs e) => BindStaffGrid(txtSearch.Text.Trim());

        private void BindStaffGrid(string searchTerm = "")
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                string query = "SELECT staff_id, first_name, last_name, username, type_of_user, status FROM staff";
                if (!string.IsNullOrEmpty(searchTerm))
                    query += " WHERE username LIKE @search OR staff_id LIKE @search";

                MySqlCommand cmd = new MySqlCommand(query, conn);
                if (!string.IsNullOrEmpty(searchTerm)) cmd.Parameters.AddWithValue("@search", "%" + searchTerm + "%");

                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvStaff.DataSource = dt;
                gvStaff.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtStaffID.Text) || string.IsNullOrWhiteSpace(txtFirstName.Text) || ddlUserType.SelectedValue == "")
            {
                ShowAlert("All fields are required!");
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                string query = "INSERT INTO staff (staff_id, first_name, last_name, username, password, type_of_user, status) VALUES (@id, @fname, @lname, @user, @pass, @type, 'Active')";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", txtStaffID.Text.Trim());
                cmd.Parameters.AddWithValue("@fname", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@lname", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@user", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@type", ddlUserType.SelectedValue);

                conn.Open();
                cmd.ExecuteNonQuery();
                ShowAlert("Staff account created successfully!");
                BindStaffGrid();
                ClearForm();
            }
        }

        protected void gvStaff_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditStaff")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvStaff.Rows[index];

                hfEditID.Value = row.Cells[0].Text;
                editFirstName.Text = row.Cells[1].Text;
                editLastName.Text = row.Cells[2].Text;
                editUsername.Text = row.Cells[3].Text;
                editUserType.SelectedValue = row.Cells[4].Text;

                ScriptManager.RegisterStartupScript(this, GetType(), "ShowEdit", "new bootstrap.Modal(document.getElementById('editModal')).show();", true);
            }
            else if (e.CommandName == "ArchiveStaff") { UpdateStaffStatus(e.CommandArgument.ToString(), "Inactive", "Staff account archived!"); }
            else if (e.CommandName == "ActivateStaff") { UpdateStaffStatus(e.CommandArgument.ToString(), "Active", "Staff account activated!"); }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                string query = "UPDATE staff SET first_name=@fn, last_name=@ln, username=@un, type_of_user=@role WHERE staff_id=@id";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@fn", editFirstName.Text);
                cmd.Parameters.AddWithValue("@ln", editLastName.Text);
                cmd.Parameters.AddWithValue("@un", editUsername.Text);
                cmd.Parameters.AddWithValue("@role", editUserType.SelectedValue);
                cmd.Parameters.AddWithValue("@id", hfEditID.Value);

                conn.Open();
                cmd.ExecuteNonQuery();
                ShowAlert("Staff updated successfully!");
                BindStaffGrid();
            }
        }

        private void UpdateStaffStatus(string id, string status, string msg)
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                string query = "UPDATE staff SET status=@s WHERE staff_id=@id";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@s", status);
                cmd.Parameters.AddWithValue("@id", id);
                conn.Open();
                cmd.ExecuteNonQuery();
                ShowAlert(msg);
                BindStaffGrid();
            }
        }

        private void ClearForm() { txtStaffID.Text = txtFirstName.Text = txtLastName.Text = txtUsername.Text = txtPassword.Text = ""; ddlUserType.SelectedIndex = 0; }
    }
}