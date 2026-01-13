<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="staff_BookManagement.aspx.cs" Inherits="CLIR_Library_Information_Management_System.staff_BookManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/staff_BookManagement.css" rel="stylesheet" />
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <h4>Book Management</h4>

        <div class="content">
            <div class="container_3">
                <div class="container_box"></div>
                <div class="container_box"></div>
                <div class="container_box"></div>
            </div>

            <div class="container_2">
                <div class="list-container">
                    <h5>Book List</h5>
                    <button class="btn-btn-primary" type="button"  data-bs-toggle="modal" data-bs-target="#bookModal">See More</button>
                </div>

                <div class="list-container">
                    <h5>Current Borrowers</h5>
                </div>
            
            </div>
        </div>
    </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</asp:Content>
