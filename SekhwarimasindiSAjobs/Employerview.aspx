<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employerview.aspx.cs" Inherits="SekhwarimasindiSAjobs.Employerview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
         <h2><%: Title %>Welcome</h2></div>
   <div class="responsive-menubar">
    <asp:Table runat="server" border="0" cellpadding="5" cellspacing="0">
      <asp:TableRow >
          <asp:TableCell>
               <a href="/">
                <i class="glyphicon glyphicon-user"><span>Company profile ||
                </span></i></a>
          </asp:TableCell>
         
          <asp:TableCell>
            <a href="/">
                <i class="glyphicon glyphicon-briefcase"><span>Manage Jobs ||
                </span></i></a>
                </asp:TableCell>
          <asp:TableCell>
            <a href="/">
                <i class="glyphicon glyphicon-folder-open"><span>Resumes ||
                </span></i></a>
                </asp:TableCell>
          <asp:TableCell>
            <a href="/">
                <i class="glyphicon glyphicon-file"><span>Post Job ||
                </span></i></a>
                </asp:TableCell>
          <asp:TableCell>
            <a href="/">
                <i class="glyphicon glyphicon-send"><span>Apply Job ||
                </span></i></a>
           </asp:TableCell>
          </asp:TableRow>
        </asp:Table></div>
    <div class="main">
        <h2>

        </h2>
    </div>
</asp:Content>
