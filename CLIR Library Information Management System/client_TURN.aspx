<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="client_TURN.aspx.cs" Inherits="CLIR_Library_Information_Management_System.client_TURN" %>
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
            <h3>Turnitin Access Request</h3>

            <div class="prompt_container">
                <h4>Patron ID</h4>
                <asp:TextBox ID="patronID" runat="server" placeholder="2026123456" MaxLength="10" TextMode="Number" CssClass="prompt"/>
                <h4>Confirm Email</h4>
                <asp:TextBox ID="confirmEmail_TB" runat="server" placeholder="sample@live.mcl.edu.ph" MaxLength="10" TextMode="Email" CssClass="prompt"/>

                <div class="dataprivacy">
                    <asp:CheckBox ID="confirmEmail_CB" runat="server" />
                    <p class="dataprivText">I understand access is for academic use only.</p>
                </div>

                <asp:Button ID="submitBTN" runat="server" Text="Submit" CssClass="submitbutton"/>
            </div>
        </div>
    </div>
</asp:Content>
