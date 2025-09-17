<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JobFinder.User.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container pt-50 pb-40">
                <div class="row">
                    <div class="col-12 pb-20">
                        <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title">Sign Up</h2>
                    </div>
                    <div class="col-lg-6 mx-auto">                      
                           <div class="form-contact contact_form" >                      
                            <div class="row">
                                <div class="col-12">
                                    <h6>Login Information</h6>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter your Username" required ></asp:TextBox>         
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your Password" 
                                            TextMode="Password" required ></asp:TextBox>                                                                                                                
                                     </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"
                                            placeholder="Confirm your Password" required ></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password should be same."
                                            
                                            ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                            Font-Size="Small"  ></asp:CompareValidator>                                                                                                                                                
                                    </div>
                                </div>                                                               
                                <div class="col-12">
                                    <h6>Personal Information</h6>
                                </div>                               
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter Full Name" required ></asp:TextBox>                            
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine"  >
                                        </asp:TextBox>                            
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Mobile Number</label>
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile Number" ></asp:TextBox>                            
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile Number must have 11 digit." ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{11}$" ControlToValidate="txtMobile">
                                        </asp:RegularExpressionValidator>                                        
                                    </div>
                                </div>
                                  <div class="col-12">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your Email" required 
                                            TextMode="Email" ></asp:TextBox> 
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" />

                                        <asp:RegularExpressionValidator ID="regexEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" ForeColor="Red" Display="Dynamic" />

                                    </div>
                                  </div>                        
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>School</label>
                                        <asp:TextBox ID="txtSchool" runat="server" CssClass="form-control" placeholder="Enter your School" TextMode="MultiLine"  >
                                        </asp:TextBox>                            
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Department</label>
                                        <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control" placeholder="Enter your Department" TextMode="MultiLine"  >
                                        </asp:TextBox>                            
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Enter your Title" TextMode="MultiLine"  >
                                        </asp:TextBox>                            
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Country</label>
                                            <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
                                                AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
                                            <asp:ListItem Value="0">Select Country</asp:ListItem>
                                            </asp:DropDownList>
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobFinderDB %>"
                                            SelectCommand="SELECT [CountryName] FROM [Country]" ProviderName="<%$ ConnectionStrings:JobFinderDB.ProviderName %>"></asp:SqlDataSource>
                                    </div>
                                </div>  
                            </div>
                            <div class="form-group mt-3">
                                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button button-contactForm boxed-btn mr-4" 
                                    OnClick="btnRegister_Click" />     
                                <span class="clickLink"> <a href="../User/Login.aspx">Already Register? Click here!</a></span>
                            </div>             
                           </div>        
                        </div>
                     </div>                
        </div>
    </section>

</asp:Content>