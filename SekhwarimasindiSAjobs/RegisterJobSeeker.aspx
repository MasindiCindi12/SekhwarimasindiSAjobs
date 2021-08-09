<%@ Page Title="Job Seeker Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterJobSeeker.aspx.cs" Inherits="SekhwarimasindiSAjobs.RegisterJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div style="background-color: #ffffff">
                 <br /><br />
                <h3 style="text-align: center"><%: Title %> .</h3>
                <h5 style="text-align: center">Do you want to post a job ? 
                    <asp:Button ID="btnReg" class="btn btn-default" runat="server" Text="Register as Company" /></h5>
                <hr />
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <h3>Personal Details</h3>

                        <div class="row">
                            <div class="col-md-6">

                                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtFirstName" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox><br />
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLastName" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUsername" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txtUsername" class="form-control" placeholder="User Name" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label4" runat="server" Text="Province"></asp:Label><br />
                        <asp:DropDownList ID="ddlProvince" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />



                        <div class="row">
                            <div class="col-md-6">

                                <asp:Label ID="Label5" runat="server" Text="EmailAddress"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmailAddress" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtEmailAddress" class="form-control" placeholder="EmailAddress" TextMode="Email" runat="server"></asp:TextBox>

                                <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtPassword" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Minimum Password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$" ValidationGroup="CheckPassword"></asp:RegularExpressionValidator>

                                <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password" ValidationGroup="CheckPassword" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label><br />
                                <asp:DropDownList ID="ddlGender" class="btn btn-secondary form-control" runat="server">
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                </asp:DropDownList><br />

                            </div>
                            <div class="col-md-6">

                                <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtPhoneNo" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtPhoneNo" class="form-control" placeholder="Phone Number" TextMode="Number" runat="server"></asp:TextBox>

                                <asp:Label ID="Label16" runat="server" Text="Confirm Password"></asp:Label>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPassword" ValidationGroup="CheckPassword" ForeColor="Red" ErrorMessage="Password Should Match"></asp:CompareValidator>
                                <asp:TextBox ID="txtConfirm" class="form-control" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox><br />

                                <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtdateOfBirth" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtdateOfBirth" class="form-control" placeholder="Date Of Birth" TextMode="Date" runat="server"></asp:TextBox>

                            </div>

                        </div>

                        <%--  <asp:TextBox ID="txtUserType" class="form-control" runat="server"></asp:TextBox><br />--%>
                    </div>
                    <div class="col-md-5">
                        <h3>Eduacational Details</h3>
                        <asp:Label ID="Label11" runat="server" Text="Institution Name"></asp:Label><br />
                        <asp:DropDownList ID="ddlInstitution" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Qualification Description"></asp:Label><br />
                        <asp:DropDownList ID="ddlQualification" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Year Qualification Obtained"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtYear" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txtYear" TextMode="Date" class="form-control" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label14" runat="server" Text="Skill Description"></asp:Label><br />
                        <asp:DropDownList ID="ddlSkill" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />


                        <asp:Label ID="Label10" runat="server" Text="LinkedIn Link"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtLinkedInLink" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txtLinkedInLink" class="form-control" placeholder="LinkedIn Link" runat="server"></asp:TextBox><br />

                        <%-- User Type --%>
                        <asp:Label ID="Label6" runat="server" Text="User Type"></asp:Label>
                        <asp:DropDownList ID="ddlUser" class="btn btn-secondary  form-control" runat="server"></asp:DropDownList><br />
                        <br />

                    </div>
                    <div class="col-md-1"></div>


                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <br />
                            <asp:Button ID="btnRegJobSeeker" class="btn btn-primary form-control" runat="server" Text="Register" OnClick="btnRegJobSeeker_Click" />
                            <p>
                                <asp:Label ID="lblSuccess" CssClass="label label-success form-control" Visible="true" runat="server"></asp:Label>
                                <asp:Label ID="lblWarning" CssClass="label label-warning form-control" Visible="true" runat="server"></asp:Label>

                            </p>
                        </div>
                        <div class="col-md-2">
                            <br />
                            <asp:Button ID="Button1" class="btn btn-info  form-control" runat="server" Text="Cancel" />
                        </div>
                        <div class="col-md-2"></div>
                    </div>



                </div>
            </div>


        </div>
        <div class="col-md-2"></div>
    </div>

    <br /><br /> <br /><br /> <br /><br />
</asp:Content>
