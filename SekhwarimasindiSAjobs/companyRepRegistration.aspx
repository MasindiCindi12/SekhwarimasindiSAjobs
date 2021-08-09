<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="companyRepRegistration.aspx.cs" Inherits="SekhwarimasindiSAjobs.companyRepRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="row">
       
        <div class="col-md-12">
          
            <h2>Create a Recruiter Account</h2>
            <br />
            <h5>Fill your details below. All fields marked with an asterisk (*) must be completed</h5>
            <br />
        </div>
        
    </div>
    
    <div class="row">
       <%-- <div class="col-md-2"></div>--%>
        <div class="col-md-15" style="background-color: #F0F8FF;">
            <h3>Representative Details</h3>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFirstName" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLastName" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtUsername" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtUsername" class="form-control" placeholder="User Name" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="Province"></asp:Label>
            <asp:DropDownList ID="ddlProvince" class="btn btn-secondary  form-control" runat="server"></asp:DropDownList><br />

            <asp:Label ID="Label5" runat="server" Text="EmailAddress"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtEmailAddress" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtEmailAddress" class="form-control" placeholder="EmailAddress" TextMode="Email" runat="server"></asp:TextBox><br />


           <%-- Start Password --%>
            <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtPassword" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Minimum Password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$" ValidationGroup="CheckPassword"></asp:RegularExpressionValidator>
           
            <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password" ValidationGroup="CheckPassword" runat="server"></asp:TextBox><br />

        
           <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPassword" ValidationGroup="CheckPassword" ForeColor="Red" ErrorMessage="Password Should Match"></asp:CompareValidator>
           <br />
            <asp:TextBox ID="txtConfirm" class="form-control" placeholder="Confirm Password"  TextMode="Password" runat="server"></asp:TextBox><br />
            
            <%-- end Password --%>




            <asp:Label ID="Label6" runat="server" Text="User Type"></asp:Label>
           <%--<asp:TextBox ID="txtUser" class="form-control" Width="100%" value="1" TextMode="text" runat="server"></asp:TextBox><br />--%>
            <asp:DropDownList ID="ddlUser" class="btn btn-secondary  form-control" runat="server"></asp:DropDownList><br />
            <br />

        </div>
       
    </div>
       <div class="row" >
        
        <div class="col-md-12"  style="background-color: #F0F8FF;">
            <h3>Company Representative Details</h3>
             <asp:Label ID="Label8" runat="server" Text="Representative ID"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtRepID" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtRepID"  class="form-control"  placeholder="Representative ID"  runat="server"></asp:TextBox>

            <h3>Company Details</h3>
            <asp:Label ID="Label9" runat="server" Text="Company Name"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtcomName" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtcomName"  class="form-control"  placeholder="Company Name" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label10" runat="server" Text="PhoneNo"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtPhoneNo" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtPhoneNo" class="form-control"  placeholder="Phone Number" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label11" runat="server" Text="Company Website"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtWeb" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtWeb" class="form-control"  placeholder="e.g www.SAjobportal.co.za" runat="server"></asp:TextBox><br />

          
        </div>
       
  </div>
 
    
    <div class="row" style="background-color: #F0F8FF;">
        <div class="col-md-10" >

            <asp:Button ID="btnRegister" class="btn btn-primary form-control" runat="server" Text="Register Representative" OnClick="btnRegister_Click" />
            <p>
                <asp:Label ID="lblSuccess" CssClass="label label-success form-control" Visible="true" runat="server"></asp:Label>
                <asp:Label ID="lblWarning" CssClass="label label-warning form-control" Visible="true" runat="server"></asp:Label>


            </p>

        </div>

         <div class="col-md-2">

              <asp:Button ID="btnCancel" class="btn btn-primary form-control" runat="server" Text="Cancel" />

         </div>
    </div>

</asp:Content>
