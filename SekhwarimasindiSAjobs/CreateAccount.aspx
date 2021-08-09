<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="SekhwarimasindiSAjobs.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <br /> <br /> <br /> <br /> <br />
        <div class="col-md-3"></div>
        <div class="col-md-6" style="background-color: #ffffff">
            <h2 style="text-align:center"><%: Title %>Create An Account</h2>


            <h4>Please select a user group to get started</h4>
            <div class="row">
                 <div class="col-md-3"></div>
                <div class="col-md-6">
                    <br />
                    <asp:Button ID="Employer" class="btn btn-primary form-control" runat="server" Text="Employer Registration" />
               <br /><br />
                    </div>
               
                <div class="col-md-3"></div>
            </div>


            <div class="row">
                   <div class="col-md-3"></div>
                <div class="col-md-6">
                    <asp:Button ID="Jobseeker" class="btn btn-primary form-control" runat="server" Text="Job Seeker Registration " />
               <br /><br />
                    </div>
             
                <div class="col-md-3"></div>
            </div>
            <h4>Already have an account? <a>Sign In Here</a></h4>
        </div>
        <div class="col-md-3"></div>
    </div>
    <br />
     <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
</asp:Content>
