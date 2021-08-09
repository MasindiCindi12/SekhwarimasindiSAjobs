<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="companyReg.aspx.cs" Inherits="SekhwarimasindiSAjobs.companyReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="background-color: #ffffff;">

            <h2 style="text-align: center"><%: Title %>Company</h2>

            <hr />
            <h3>Company Representative Details</h3>
            <asp:Label ID="Label4" runat="server" Text="Representative ID"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtRepID" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtRepID" class="form-control" runat="server"></asp:TextBox>

            <h3>Company Details</h3>
            <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtcomName" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtcomName" class="form-control" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="PhoneNo"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPhoneNo" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtPhoneNo" class="form-control" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="Company Website"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtWeb" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtWeb" class="form-control" runat="server"></asp:TextBox><br />


            
        <div class="row">
             <div class="col-md-2"></div>
            <div class="col-md-8">

                <asp:Button ID="btnRegister" class="btn btn-primary form-control" runat="server" Text="Register Company" OnClick="btnRegister_Click" />
                <p>
                    <asp:Label ID="lblSuccess" CssClass="label label-success form-control" Visible="true" runat="server"></asp:Label>
                    <asp:Label ID="lblWarning" CssClass="label label-warning form-control" Visible="true" runat="server"></asp:Label>

                </p>

                <br /> <br /> <br /> <br />
            </div>
            <div class="col-md-2"></div>
        </div>

  

      
        <div class="col-md-2"></div>

        </div>
        <div class="col-md-2"></div>
        </div>
</asp:Content>
