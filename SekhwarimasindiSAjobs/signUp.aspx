<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="SekhwarimasindiSAjobs.signUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div style="background-color: #ffffff">
                <br /> 
                <h2 style="text-align: center"><%: Title %>  your Account.</h2>

                 <br />
                <hr />
                 <br />
                <div class="row">

                    <div class="col-md-2"></div>
                    <div class="col-md-8">

                        <h4>Already have an account?</h4>
                        <p>
                            <asp:Label ID="Label5" runat="server" Text="EmailAddress"></asp:Label><br />
                            <asp:TextBox ID="txtEmailAddress" class="form-control" TextMode="Email" placeholder="Email" runat="server"></asp:TextBox><br />

                            <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label><br />
                            <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox><br />
                        </p>
                        <p>
                            <asp:Button ID="btnLogin" class="btn btn-primary form-control" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </p>

                    </div>
                    <div class="col-md-2"></div>

                </div>

                <div class="row">

                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <p>
                            <asp:Button ID="btnCancel" class="btn btn-info" runat="server" Text="Cancel" />
                            &nbsp; &nbsp; &nbsp;
                 Don't have an account?
                 <asp:HyperLink ID="HyperLink1" runat="server">Register</asp:HyperLink>
                            <br /><br />
                        </p>
                        <p></p>
                    </div>

                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
    <br /><br /><br /> <br />
</asp:Content>
