<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobSearch.aspx.cs" Inherits="SekhwarimasindiSAjobs.JobSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="jumbotron" style="background-color: #ffffff">
             
                <h3 style="text-align:center;"><%: Title %>FIND A JOB YOU NEED</h3>

<br />
                <%--  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="Label1" runat="server" Text="Stream Description: "></asp:Label>
                        <asp:DropDownList ID="ddlStream" class="btn btn-secondary form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label9" runat="server" Text="Province: "></asp:Label>
                        <asp:DropDownList ID="ddlProvince" class="btn btn-secondary  form-control" runat="server"></asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label10" runat="server" Text="Job Type: "></asp:Label>
                        <asp:DropDownList ID="ddljobType" class="btn btn-secondary form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label11" runat="server" Text=""> &nbsp;</asp:Label>
                        <asp:LinkButton ID="btnSearch" class="btn btn-primary form-control" Text="Search" runat="server" OnClick="btnSearch_Click">
                          <span class="glyphicon glyphicon-search"></span>
                              Search
                        </asp:LinkButton>

                        <asp:Label ID="Label12" runat="server" Text=""></asp:Label>



                        <asp:Button ID="Button1" Visible="false" runat="server" OnClick="Button1_Click" />
                    </div>
                </div>



            </div>
        </div>
        <div class="col-md-2"></div>
       
    </div>
    <div class="row">
         <div class="col-md-1"></div>
        
       <div class="col-md-9">
            <asp:GridView ID="ddlJobList"  class="form-control"  runat="server"></asp:GridView>

           </div>

              <div class="col-md-2"></div>
        </div>        
   <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
