<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="jobseekerProfile.aspx.cs" Inherits="SekhwarimasindiSAjobs.jobseekerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2><%: Title %> </h2>
        <div class="responsive-menubar">
            <a href="/">
                <i class="glyphicon glyphicon-user"><span> My profile ||
                </span></i></a>
            <a href="/">
                <i class="glyphicon glyphicon-briefcase"><span>Applied Jobs ||
                </span></i></a>

            <br />
        </div>
    </div>
    <asp:GridView ID="GridView1" AutoGenerateColumns="false" col runat="server">
     <Columns>
          <asp:TemplateField>
             <ItemTemplate>
                 <asp:Label runat="server" Text="Label"></asp:Label>
             </ItemTemplate> 
              <ItemTemplate>
                  <asp:TextBox runat="server"></asp:TextBox>
              </ItemTemplate>
              <ItemTemplate>
                  <asp:Button ID="Button1" runat="server" Text="Save" />
              </ItemTemplate>
        </asp:TemplateField>
     </Columns>  
    </asp:GridView>

</asp:Content>
