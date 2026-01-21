using System;
using System.Web;

namespace CLIR_Library_Information_Management_System.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void logout_BTN_Click(object sender, EventArgs e)
        {
            // Clear all session data
            Session.Clear();
            Session.Abandon();

            // Redirect to the root login page
            Response.Redirect("~/Default.aspx");
        }
    }
}