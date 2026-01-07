<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="client_BAS.aspx.cs" Inherits="CLIR_Library_Information_Management_System.client_BAS" %>
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
            <h3>Book A Seat Check-In</h3>

            <div class="prompt_container">
                <asp:TextBox ID="patronID" runat="server" placeholder="Patron ID" MaxLength="10" TextMode="Number" CssClass="prompt"/>

                <asp:DropDownList ID="buildingLoc" runat="server" OnSelectedIndexChanged="buildingLoc_SelectedIndexChanged" AutoPostBack="true"  CssClass="prompt"> 
                    <asp:ListItem Value="0" Enabled="true" Selected="True" Text="Select Location"></asp:ListItem>
                    <asp:ListItem Value="1">Einstein</asp:ListItem>
                    <asp:ListItem Value="2">Rizal</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="seatType" runat="server"  CssClass="prompt">
                </asp:DropDownList>

                <asp:DropDownList ID="stayTime" runat="server"  CssClass="prompt">
                </asp:DropDownList>

                <asp:Button ID="bas_submit" runat="server" Text="Submit"/>
            </div>
        </div>
    </div>
</asp:Content>
