<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="client_BAL.aspx.cs" Inherits="CLIR_Library_Information_Management_System.client_BAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/client_Services.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main_window">
         <div class="left_navbar">
             <div class="links">
                 <asp:HyperLink ID="BAS" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_BAS.aspx">Book A Seat</asp:HyperLink>
                 <asp:HyperLink ID="BAL" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_BAL.aspx">Book A Librarian</asp:HyperLink>
                 <asp:HyperLink ID="GRAM" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_GRAM.aspx">Grammarly Request</asp:HyperLink>
                 <asp:HyperLink ID="TURN" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_TURN.aspx">Turnitin Request</asp:HyperLink>
                 <asp:HyperLink ID="DOCR" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_DOCR.aspx">Document Request</asp:HyperLink>
             </div>
         </div>
        <div class="right_tab">
            <h3>Book A Librarian</h3>

            <div class="prompt_container">
                <h4>Patron ID</h4>
                <asp:TextBox ID="patronID" runat="server" CssClass="prompt" placeholder="2026123456" TextMode="Number" MaxLength="10"></asp:TextBox>
                <h4>Consultation Topic/Subject</h4>
                <asp:TextBox ID="topicType" runat="server" CssClass="prompt" placeholder="Research Help" MaxLength="50"></asp:TextBox>
                
                <div class="datetime_contatiner">
                    <div class="in_container">
                        <h4>Preferred Date</h4>
                        <asp:Calendar ID="bookDate" runat="server" CssClass="calendar"></asp:Calendar>
                    </div>
                
                    <div class="in_container">
                        <h4>Preferred Time</h4>
                        <asp:DropDownList ID="timeSlot" runat="server" CssClass="time">
                            <asp:ListItem Value="">--Select Preferred Time--</asp:ListItem>
                            <asp:ListItem Value="1">8:30 AM</asp:ListItem>
                            <asp:ListItem Value="2">9:10 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:50 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:30 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:10 AM</asp:ListItem>
                            <asp:ListItem Value="6">11:50 AM</asp:ListItem>
                            <asp:ListItem Value="7">12:30 PM</asp:ListItem>
                            <asp:ListItem Value="8">1:10 PM</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <h4>Reason for Consultation</h4>
                <asp:TextBox ID="bookingReason" runat="server" CssClass="prompt" placeholder="Please describe your project or question here..."></asp:TextBox>

                <div class="dataprivacy">
                    <asp:CheckBox ID="dataPrivacy" runat="server" />
                    <p class="dataprivText">MALAYAN COLLEGES LAGUNA, INC., A MAPUA SCHOOL (MCL) commits compliance to the Republic Act No. 10173, otherwise known as the Data Privacy Act of 2012. MCL recognizes its responsibilities under the same Act and upholds its commitment to protect the integrity and security of the data being collected, recorded, organized, updated, used, consolidated or destructed from its internal and external clients. Please be assured that any personal data obtained will be generated and stored in secured systems as warranted by the DPA. MCL warrants that it has organizational, technical and physical security measures to ensure the protection of the gathered data, and the treatment of the same with utmost confidentiality. Furthermore, the information collected and stored shall only be used for library purposes.</p>
                </div>

                <asp:Button ID="submitBTN" runat="server" Text="Book" CssClass="submitbutton"/>
            </div>
        </div>
    </div>
</asp:Content>
