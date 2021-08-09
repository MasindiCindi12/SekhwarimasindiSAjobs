<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchJobByProvince.aspx.cs" Inherits="SekhwarimasindiSAjobs.SearchJobByProvince" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
    <div class="container">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-5">
                <h4><strong>
                    <asp:Label ID="lblAvailable" runat="server" Text="Provincial Jobs"></asp:Label></strong></h4>
               
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:ListView ID="lstJobs" runat="server" ItemPlaceholderID="Placeholder1">
                    <ItemTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td colspan="5">
                                        <a href="SearchJobByProvince.aspx?did=<%#Eval("jobID")%>">
                                            <h4><%# Eval("jobTitle")%></h4>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-briefcase"></i>Company Name: <%# Eval("companyName")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <%--<td>Job Type: : <%# Eval("jobTypeDescription")%></td>--%>
                                    <td><i class="glyphicon glyphicon-stats"></i>Stream  : <%# Eval("streamDescription")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><span class="glyphicon glyphicon-file"></span>Reference :#<%# Eval("jobID")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-usd"></i>Salary : <%# Eval("salary")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-calendar"></i>Date Posted: <%# Eval("datePosted", "{0:d}")%></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><i class="glyphicon glyphicon-calendar"></i>Date Closing: <%# Eval("dateExpire","{0:d}")%> <a href="details.aspx?did=<%#Eval("jobID")%>">&nbsp; Read More ...</a></td>
                                </tr>
                                <tr>
                                    <td></td>

                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>

                </asp:ListView>

            </div>
            <div class="col-md-2">
                 <asp:DataPager ID="dpPjobs" runat="server" PagedControlID="lstJobs">

                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" />
                    </Fields>
                </asp:DataPager>
            </div>

        </div>
            <br /><br />
              <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-5">
               
            </div>
            <div class="col-md-2"></div>
        </div>


      

    </div>





</asp:Content>
