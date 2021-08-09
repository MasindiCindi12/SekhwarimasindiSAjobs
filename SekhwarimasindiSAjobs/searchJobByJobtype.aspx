<%@ Page Title="Job Type" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searchJobByJobtype.aspx.cs" Inherits="SekhwarimasindiSAjobs.searchJobByJobtype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
    <div class="container">
       
       <br /><br />
      <div class="row">
            <div class="col-md-2"></div>
          <div class="col-md-8">
                <asp:ListView ID="listJobs" runat="server" ItemPlaceholderID="Placeholder1">
                    <ItemTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td colspan="5">
                                         <a href="searchJobByJobtype.aspx?sti=<%#Eval("jobID")%>">
                                             <h4><%# Eval("jobTitle")%></h4></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-briefcase"></i> Company Name: <%# Eval("companyName")%></td>
                                    </tr>
                                <tr>
                                    <td></td>
                                    <%--<td>Job Type: : <%# Eval("jobTypeDescription")%></td>--%>  
                                    <td><i class="glyphicon glyphicon-stats"></i> Stream  : <%# Eval("streamDescription")%></td>
                                    </tr>
                                <tr>
                                    <td></td>
                                    <td><span class="glyphicon glyphicon-file"></span> Reference :#<%# Eval("jobID")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-usd"></i> Salary : <%# Eval("salary")%></td>
                                </tr>
                                 <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-calendar"></i> Date Posted: <%# Eval("datePosted", "{0:d}")%></td>
                                    </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-calendar"></i> Date Closing: <%# Eval("dateExpire","{0:d}")%> <a href="details.aspx?did=<%#Eval("jobID")%>">&nbsp; Read More ...</a></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>

                </asp:ListView>
              <br />
            </div>
             <div class="col-md-2">
             <asp:DataPager ID="DataPager1" runat="server" PagedControlID="listJobs" PageSize="4">
            <Fields>
               <asp:NextPreviousPagerField  />
            </Fields>
        </asp:DataPager></div>
        </div>

        <br /><br />
        </div>

</asp:Content>
