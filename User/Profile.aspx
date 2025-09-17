<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JobFinder.User.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        function toggleStartupOptions() {
            var startupOptions = document.getElementById("startupOptions");
            if (startupOptions.style.display === "none") {
                startupOptions.style.display = "block"; 
            } else {
                startupOptions.style.display = "none";  
            }
        }
    </script>
    <script>
        function toggleOrganizationOptions() {
            var organizationOptions = document.getElementById("organizationOptions");
            if (organizationOptions.style.display === "none") {
                organizationOptions.style.display = "block"; 
            } else {
                organizationOptions.style.display = "none";   
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-5 pb-5">
        <div class="main-body">
            <asp:DataList ID="dlProfile" runat="server" width="100%" OnItemCommand="dlProfile_ItemCommand">
                <ItemTemplate>
                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="../Images/profile-icon.jpg" alt="UserPic" class="rounded-circle"
                                            width="150"/>
                                        <div class="mt-3">
                                            <h4 class="text-capitalize"><%# Eval("Name") %></h4>
                                            <p class="text-secondary mb-1"><%# Eval("Username") %></p>
                                            <p class="text-muted font-size-sm text-capitalize">
                                                <i class="fas fa-map-marker-alt"></i> <%# Eval("Country") %>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mt-3">
                                <div class="card-body">
                                    <h5>Profile</h5>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <asp:Button ID="btnPersonalInfo" runat="server" Text="Personal Information" CssClass="btn btn-primary btn-block"
                                                OnClick="btnPersonalInfo_Click" />
                                        </li>
                                        <li class="list-group-item">
                                            <asp:Button ID="btnIsIlan" runat="server" Text="Create Job Posting" CssClass="btn btn-primary btn-block"
                                                OnClick="btnIsIlan_Click" />
                                        </li>                                                                         
                                        <li class="list-group-item">
                                            <asp:Button ID="btnAyarlar" runat="server" Text="Settings" CssClass="btn btn-primary btn-block"
                                                OnClick="btnAyarlar_Click" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("Name") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <%# Eval("Email") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Mobile</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("Mobile") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Address</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("Address") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">School</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("School") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Department</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("Department") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Title</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                            <%# Eval("Title") %>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="button button-contactForm boxed-btn"
                                               CommandName="EditUserProfile" CommandArgument='<%# Eval("UserId") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>     
        </div>
    </div>

</asp:Content>