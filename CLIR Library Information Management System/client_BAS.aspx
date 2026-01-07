<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="client_BAS.aspx.cs" Inherits="CLIR_Library_Information_Management_System.client_BAS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/client_Services.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="left_navbar">
         <div class="links">
             <asp:HyperLink ID="BAS" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_BAS.aspx">Book A Seat</asp:HyperLink>
             <asp:HyperLink ID="BAL" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_BAL.aspx">Book A Librarian</asp:HyperLink>
             <asp:HyperLink ID="GRAM" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_GRAM.aspx">Grammarly Request</asp:HyperLink>
             <asp:HyperLink ID="TURN" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_TURN.aspx">Turnitin Request</asp:HyperLink>
             <asp:HyperLink ID="DOCR" runat="server" Font-Underline="false" ForeColor="White" NavigateUrl="~/client_DOCR.aspx">Document Request</asp:HyperLink>
         </div>
     </div>
</asp:Content>
