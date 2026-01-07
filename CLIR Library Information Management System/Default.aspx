<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CLIR_Library_Information_Management_System.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/CSS/landing.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="box">
            <div class="logomain">
                <img src="~\Images\CLIR_Logo.png" runat="server" class="logo"/>
            </div>

            <div class="label1">
                <h2>CLIR Library Information Management</h2>
                <p>Please Log In To Continue</p>
            </div>

            <div class="capsuls">
                <asp:TextBox ID="uname_TB" runat="server" placeholder="Username" CssClass="textbox username" Width="97%" Height="40"> </asp:TextBox>
                <asp:TextBox ID="pword_TB" runat="server" placeholder="Password" CssClass="textbox password" Width="97%" Height="40" TextMode="password"> </asp:TextBox>
            </div>

            <div class="btn">
                <asp:Button ID="login_BTN" runat="server" CssClass="submitbutton" Text="Log In" Height="40"/>

            </div>
            <div class="others">

            </div>
        </div>
    </div>
</asp:Content>
