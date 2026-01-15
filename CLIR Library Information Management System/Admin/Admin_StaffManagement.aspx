<%@ Page Title="Staff Management" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_StaffManagement.aspx.cs" Inherits="CLIR_Library_Information_Management_System.Admin.Admin_StaffManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h3>Manage Staff Accounts</h3>
        
        <asp:Panel ID="pnlStaffForm" runat="server" CssClass="mb-4">
            <asp:TextBox ID="txtStaffID" runat="server" CssClass="form-control mb-2" Placeholder="Staff ID (Numbers only)"></asp:TextBox>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control mb-2" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control mb-2" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control mb-2" Placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-2" TextMode="Password" Placeholder="Password"></asp:TextBox>
            
            <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form-select mb-2">
                <asp:ListItem Text="-- Select Role --" Value=""></asp:ListItem>
                <asp:ListItem Text="Student Assistant" Value="Student Assistant"></asp:ListItem>
                <asp:ListItem Text="Librarian" Value="Librarian"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnSave" runat="server" Text="Save Staff" CssClass="btn btn-success" OnClick="btnSave_Click" />
        </asp:Panel>

        <hr />

        <div class="row mb-3">
            <div class="col-md-4">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Placeholder="Search by Username or ID"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" CausesValidation="false" />
            </div>
        </div>

        <asp:GridView ID="gvStaff" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="staff_id" OnRowCommand="gvStaff_RowCommand">
            <Columns>
                <asp:BoundField DataField="staff_id" HeaderText="ID" />
                <asp:BoundField DataField="first_name" HeaderText="First Name" />
                <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                <asp:BoundField DataField="username" HeaderText="Username" />
                <asp:BoundField DataField="type_of_user" HeaderText="Role" />
                <asp:BoundField DataField="status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-warning btn-sm" CommandName="EditStaff" CommandArgument='<%# Container.DataItemIndex %>' CausesValidation="false" />
                        <asp:Button ID="btnArchive" runat="server" Text="Archive" CssClass="btn btn-danger btn-sm" CommandName="ArchiveStaff" CommandArgument='<%# Eval("staff_id") %>' Visible='<%# Eval("status").ToString() == "Active" %>' OnClientClick="return confirm('Archive this account?');" CausesValidation="false" />
                        <asp:Button ID="btnActivate" runat="server" Text="Activate" CssClass="btn btn-success btn-sm" CommandName="ActivateStaff" CommandArgument='<%# Eval("staff_id") %>' Visible='<%# Eval("status").ToString() == "Inactive" %>' OnClientClick="return confirm('Activate this account?');" CausesValidation="false" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    <div class="modal fade" id="editModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Staff Account</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <asp:HiddenField ID="hfEditID" runat="server" />
                    <label>First Name</label><asp:TextBox ID="editFirstName" runat="server" CssClass="form-control mb-2"></asp:TextBox>
                    <label>Last Name</label><asp:TextBox ID="editLastName" runat="server" CssClass="form-control mb-2"></asp:TextBox>
                    <label>Username</label><asp:TextBox ID="editUsername" runat="server" CssClass="form-control mb-2"></asp:TextBox>
                    <label>Role</label>
                    <asp:DropDownList ID="editUserType" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Student Assistant" Value="Student Assistant"></asp:ListItem>
                        <asp:ListItem Text="Librarian" Value="Librarian"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Changes" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>