<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="SekhwarimasindiSAjobs.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            
    <asp:Repeater ID="repjobDetails" runat="server">
        <HeaderTemplate>
            <table border="0">
                   <ItemTemplate>
           <tr>
               <td>
                   <i class="glyphicon glyphicon-usd"></i> Description : <%# Eval("jobDescription")%></td>
              
           </tr>
        </ItemTemplate>
            </table>
        </HeaderTemplate>
     


    </asp:Repeater>
        </div>
    </div>
</asp:Content>
