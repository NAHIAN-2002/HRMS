<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JobFinder.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="contact-section">
            <div class="container">
                <div class="d-none d-sm-block mb-5 pb-4">
                    <iframe class="rounded w-100"
    style="height: 500px;"
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d146601.22794847932!2d90.283?2d23.8221242!3d23.8221242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c711d13bbec7%3A0xc47f7c3e8e2263f2!2sAmerican%20International%20University%20-%20Bangladesh!5e0!3m2!1sen!2sbd!4v0000000000000!5m2!1sen!2sbd"
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade">
</iframe>

                </div> 
                <div class="row">
                    <div class="col-12 pb-20">
                        <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title">CONTACT FORM</h2>
                    </div>
                    <div class="col-lg-8">            
                           <div class="form-contact contact_form" id="contactForm" >                      
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">                                                    
                                        <textarea class="form-control w-100" runat="server" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your message'" placeholder= "Enter your message" required ></textarea>                                                                       
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" runat="server" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder= "Enter your name" required >
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" runat="server" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your e-mail'" placeholder= "Enter your e-mail" required >
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="subject" runat="server" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" placeholder= "Enter your subject" required >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <asp:Button ID="btnSend" runat="server" Text="SEND" CssClass="button button-contactForm boxed-btn" OnClick="btnSend_Click" />                                                            
                            </div>             
                           </div>                  
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Reach us at</h3>
                                <p>Kuratoli/Dhaka/Bangladesh</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+8801789123456</h3>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>hrms@gmail.com</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

</asp:Content>