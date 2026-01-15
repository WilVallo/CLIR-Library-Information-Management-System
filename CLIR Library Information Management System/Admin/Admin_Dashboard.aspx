<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="CLIR_Library_Information_Management_System.Admin.Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .stat-card { padding: 20px; border-radius: 10px; color: white; margin-bottom: 20px; }
        .bg-staff { background-color: #007bff; }
        .bg-patron { background-color: #28a745; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h2>Welcome, Admin</h2>
        <hr />
        <div class="row">
            <div class="col-md-4">
                <div class="stat-card bg-staff text-center">
                    <h5>Total Staff</h5>
                    <h1><asp:Literal ID="litStaffCount" runat="server" Text="0" /></h1>
                    <small>Active Accounts</small>
                </div>
            </div>

            <div class="col-md-4">
                <div class="stat-card bg-patron text-center">
                    <h5>Total Patrons</h5>
                    <h1><asp:Literal ID="litPatronCount" runat="server" Text="0" /></h1>
                    <small>Registered Users</small>
                </div>
            </div>
        </div>

        <div class="mt-4">
            <h4>Quick Links</h4>
            <a href="Admin_StaffManagement.aspx" class="btn btn-outline-primary">Manage Staff</a>
            <a href="Admin_SystemReports.aspx" class="btn btn-outline-secondary">View Reports</a>
        </div>
    </div>
</asp:Content>