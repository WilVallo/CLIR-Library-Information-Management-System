using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLIR_Library_Information_Management_System
{
    public partial class client_BAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buildingLoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            seatType.Items.Clear();
            stayTime.Items.Clear();
            seatType.Items.Add(new ListItem("-- Select Preferred Seat -- ", ""));
            stayTime.Items.Add(new ListItem("-- Select Time of Stay -- ", ""));

            if (buildingLoc.SelectedValue == "2")
            {
                seatType.Items.Add(new ListItem("Bean Bags", "1"));
                seatType.Items.Add(new ListItem("Desk w/ Plant Box", "2"));
                seatType.Items.Add(new ListItem("Discussion Room", "3"));
                seatType.Items.Add(new ListItem("Floor Area", "4"));
                seatType.Items.Add(new ListItem("Hexagon Ottoman (6 seats)", "5"));
                seatType.Items.Add(new ListItem("High Tables", "6"));
                seatType.Items.Add(new ListItem("Laptop Table", "7"));
                seatType.Items.Add(new ListItem("Sofa", "8"));
                seatType.Items.Add(new ListItem("Stand Alone Sofa", "9"));
                seatType.Items.Add(new ListItem("Tea Table (2 seats)", "10"));
                seatType.Items.Add(new ListItem("Trapezoid Folding Table", "11"));
                seatType.Items.Add(new ListItem("Wooden Chair", "12"));

                stayTime.Items.Add(new ListItem("7:00 AM - 8:00 AM", "1"));
                stayTime.Items.Add(new ListItem("8:00 AM - 9:00 AM", "2"));
                stayTime.Items.Add(new ListItem("9:00 AM - 10:00 AM", "3"));
                stayTime.Items.Add(new ListItem("10:00 AM - 11:00 AM", "4"));
                stayTime.Items.Add(new ListItem("11:00 AM - 12:00 PM", "5"));
                stayTime.Items.Add(new ListItem("12:00 PM - 1:00 PM", "6"));
                stayTime.Items.Add(new ListItem("1:00 PM - 2:00 PM", "7"));
                stayTime.Items.Add(new ListItem("2:00 PM - 3:00 PM", "8"));
                stayTime.Items.Add(new ListItem("3:00 PM - 4:00 PM", "9"));
                stayTime.Items.Add(new ListItem("4:00 PM - 4:45 PM", "10"));
            }
            else if (buildingLoc.SelectedValue == "1")
            {
                seatType.Items.Add(new ListItem("Bean Bags", "1"));
                seatType.Items.Add(new ListItem("Carrel w/o Outlet", "2"));
                seatType.Items.Add(new ListItem("Carrel w/ Outlet", "3"));
                seatType.Items.Add(new ListItem("Carrel w/ Computer", "4"));
                seatType.Items.Add(new ListItem("Couch", "5"));
                seatType.Items.Add(new ListItem("Drafting Table", "6"));
                seatType.Items.Add(new ListItem("Floor Area", "7"));
                seatType.Items.Add(new ListItem("Laptop Table (Near Shelves)", "8"));
                seatType.Items.Add(new ListItem("Round Table (4 seats)", "9"));
                seatType.Items.Add(new ListItem("Round Table (6 seats)", "10"));
                seatType.Items.Add(new ListItem("Hexagon Ottoman (6 seats)", "11"));
                seatType.Items.Add(new ListItem("Other Purpose Approved by CLIR", "12"));

                stayTime.Items.Add(new ListItem("7:00 AM - 8:00 AM", "1"));
                stayTime.Items.Add(new ListItem("8:00 AM - 9:00 AM", "2"));
                stayTime.Items.Add(new ListItem("9:00 AM - 10:00 AM", "3"));
                stayTime.Items.Add(new ListItem("10:00 AM - 11:00 AM", "4"));
                stayTime.Items.Add(new ListItem("11:00 AM - 12:00 PM", "5"));
                stayTime.Items.Add(new ListItem("12:00 PM - 1:00 PM", "6"));
                stayTime.Items.Add(new ListItem("1:00 PM - 2:00 PM", "7"));
                stayTime.Items.Add(new ListItem("2:00 PM - 3:00 PM", "8"));
                stayTime.Items.Add(new ListItem("3:00 PM - 4:00 PM", "9"));
                stayTime.Items.Add(new ListItem("4:00 PM - 5:00 PM", "10"));
                stayTime.Items.Add(new ListItem("5:00 PM - 6:00 PM", "11"));
                stayTime.Items.Add(new ListItem("6:00 PM - 6:45 PM", "12"));

            }
            else
            {
                seatType.Items.Clear();
                stayTime.Items.Clear();
            }
        }
    }
}