<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PhoneShop.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.file[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
       <div class="container">
         <div class="heading_container">
            <div class="align-self-end">
               <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
             <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>User Registration</h2>"></asp:Label>
         </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form_container">

                    <div>
                        
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is Required" ControlToValidate="txtName"
                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Name must be in characters only"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$"
                            ControlToValidate="txtName"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Full Name"
                            ToolTip="Full Name"></asp:TextBox>
                    </div>

                     <div>
                        
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is Required" ControlToValidate="txtUsername"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                      <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"
                            ToolTip="Username"></asp:TextBox>

                     </div>

                    <div>
                         
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail"
                             ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"
                            ToolTip="Email" TextMode="Email"></asp:TextBox> 

                    </div>

                     <div>
                       
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Mobile No. is Required"
                            ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Mobile no. must have 10 digits"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                            ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                         <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter MobileNumber"
                             ToolTip="Mobile Number"></asp:TextBox>
                    </div>

                    </div>
            </div>

            <div class="col-md-6">
                <div class="form_container">

                     <div>
                        
                         <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                             ErrorMessage="Address is Required" ControlToValidate="txtAddress"
                             ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"
                             ToolTip="Address" TextMode="MultiLine"></asp:TextBox>
                     </div>

                      <div>
                             
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server"
                                 ErrorMessage="Post/Zip Code is Required" ControlToValidate="txtPostCode"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Post/Zip Code must be of 6 digits"
                                 ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{6}$"
                                 ControlToValidate="txtPostCode"></asp:RegularExpressionValidator>
                          <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Enter Post/Zip Code"
                                ToolTip="Post/Zip Code" TextMode="Number"></asp:TextBox>
                       </div>

 <div>
      <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="User Image" 
          onchange="ImagePreview(this);" />
  </div>

                      <div>
                         
                         <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is Required"
                             ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password"
                              ToolTip="Password" TextMode="Password"></asp:TextBox>
                     </div>

                </div>
            </div>

            <div class="row pl-4">
                <div class="btn_box">
                    <asp:Button ID="btnRegister" runat="server" Text="Register"
                        CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                        OnClick="btnRegister_Click"/>
                    <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100" 
                        Text="Already Registered? <a href='Login.aspx' class='badge badge-info'>Login here..</a>">
                    </asp:Label>
                    </div>
            </div>

            <div class="row p-5">
                <div style="align-items:center">
                    <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail"/>
                </div>
        </div>
      </div>
   </section>
    <footer class="footer_section">
  <div class="container">
    <div class="row">
      <div class="col-md-4 footer-col">
        <div class="footer_contact">
          <h4>
            Contact Us
          </h4>
          <div class="contact_link_box">
            <a href="">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>
                Location
              </span>
            </a>
            <a href="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
                Call +966590937290
              </span>
            </a>
            <a href="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <span>
                phonefury@gmail.com
              </span>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-4 footer-col">
        <div class="footer_detail">
          <a href="" class="footer-logo">
            PhoneFury
          </a>
          <p>
           Welcome to the cutting-edge world of telecommunications, where innovation meets connectivity in every call, text, and data stream
          </p>
          <div class="footer_social">
            <a href="">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-pinterest" aria-hidden="true"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-4 footer-col">
        <h4>
          Opening Hours
        </h4>
        <p>
          Everyday
        </p>
        <p>
          06.00 Am -11.59 Pm
        </p>
      </div>
    </div>
    <div class="footer-info">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="">The Creator of Website</a><br><br>
        
      </p>
    </div>
  </div>
</footer>
<!-- footer section -->
</asp:Content>
