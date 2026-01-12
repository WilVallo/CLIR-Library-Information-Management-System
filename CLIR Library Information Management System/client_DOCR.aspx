<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="client_DOCR.aspx.cs" Inherits="CLIR_Library_Information_Management_System.client_DOCR" %>
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
            <h3>Online Document Delivery Service</h3>

            <div class="prompt_container">
                <h4>Patron ID</h4>
                <asp:TextBox ID="patronID" runat="server" placeholder="2026123456" MaxLength="10" TextMode="Number" CssClass="prompt"/>
                

                <div class="container_double">
                    <div class="in_container">
                        <h4>Type of Material</h4>
                        <asp:DropDownList ID="odds_material" runat="server"  CssClass="time">
                            <asp:ListItem Value="0">-- Select Type of Material --</asp:ListItem>
                            <asp:ListItem Value="1">Book (request will be sent every Friday-Saturday)</asp:ListItem>
                            <asp:ListItem Value="2">Periodicals (Journals and Mmagazines)</asp:ListItem>
                            <asp:ListItem Value="3">Thesis</asp:ListItem>
                            <asp:ListItem Value="4">Resources from Mapua Library</asp:ListItem>
                            <asp:ListItem Value="5">E-Journal Articles from Other Publishers</asp:ListItem>
                            <asp:ListItem Value="6">MCL Faculty and Students' Scholary Works (RESEARCH COMPENDIUMS)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                
                    <div class="in_container">
                        <h4>Type of Service</h4>
                        <asp:DropDownList ID="odds_service" runat="server"  CssClass="time">
                            <asp:ListItem Value="0">-- Select Type of Service --</asp:ListItem>
                            <asp:ListItem Value="1">Scanning (Books Only)</asp:ListItem>
                            <asp:ListItem Value="2">Online retrieval of Articles/Links of E Books and MCL Thesis</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                
                <h4>Title</h4>
                <asp:TextBox ID="title_TB" runat="server" placeholder="Title" CssClass="prompt"/>
                
                <h4>Author</h4>
                <asp:TextBox ID="author_TB" runat="server" placeholder="Author" CssClass="prompt"/>

                
                <div class="container_double">
                    <div class="in_container">
                        <h4>Edition (for print books)</h4>
                        <asp:TextBox ID="editiopn_TB" runat="server" placeholder="Edition" CssClass="prompt"/>
                    </div>
                    
                    <div class="in_container">
                        <h4>Year of Publication</h4>
                        <asp:TextBox ID="publication_TB" runat="server" placeholder="Year" CssClass="prompt" TextMode="Number" MaxLength="4"/>
                    </div>
                </div>
                
                <h4>Links / URL (for for Science Direct articles, give us 2 working days to send the files)</h4>
                <asp:TextBox ID="links_TB" runat="server" placeholder="Title" CssClass="prompt"/>

                <asp:Button ID="submitBTN" runat="server" Text="Submit" CssClass="submitbutton"/>
            </div>
        </div>
    </div>
</asp:Content>
