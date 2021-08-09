<%@ Page Title="Job Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="postJobLogin.aspx.cs" Inherits="SekhwarimasindiSAjobs.postJobLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">

        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="jumbotron" style="background-color: #ffffff">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-8">
                        <h3>Sign In</h3>
                        <h5>Please log in to add a new job listing. If you do not have an account, please
                            <asp:HyperLink ID="HyperLink1" runat="server">Register</asp:HyperLink></h5>

                        <asp:Label ID="Label5" runat="server" Text="EmailAddress"></asp:Label><br />
                        <asp:TextBox ID="txtEmailAddress" class="form-control" placeholder="EmailAddress" TextMode="Email" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label><br />
                        <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />

                        <asp:Button ID="btnLogin" class="btn btn-primary form-control" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <p>
                            <asp:HyperLink ID="HyperLink2" runat="server">Register</asp:HyperLink>
                            &nbsp; |
                               <asp:HyperLink ID="HyperLink3" runat="server">Forgot Password?</asp:HyperLink>
                        </p>
                    </div>

                    <div class="col-md-1"></div>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
   
   
 <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br />
</asp:Content>
