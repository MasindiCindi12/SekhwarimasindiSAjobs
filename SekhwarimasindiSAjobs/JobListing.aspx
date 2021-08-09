<%@ Page Title="Job List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobListing.aspx.cs" Inherits="SekhwarimasindiSAjobs.JobListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
      <br /><br />
  <!-- <div class="row">
      
        <div class="col-md-1"></div>
        <div class="col-md-6">
            <div class="jumbotron" style="background-color: aliceblue">
                <h3><%: Title %> .</h3>
            </div>
        </div>
    <div class="col-md-5"></div>
         </div> 
      -->   

    <div class="container">
       
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                 <asp:ListView ID="lstJobs" runat="server">
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
                                     <td><i class="glyphicon glyphicon-stats"></i>Province  : <%# Eval("province")%></td>
                                 </tr>

                                 <tr>
                                     <td></td>
                                     <td><i class="glyphicon glyphicon-usd"></i>Job Position : <%# Eval("positionDescription")%>
                                         <a href="ContinueJobList.aspx?did=<%#Eval("jobID")%>">&nbsp; Read More ...</a></td>
                                 </tr>

                             </table>
                           
                         </div>
                            <hr />
                     </ItemTemplate>
                     
                 </asp:ListView>
                <br />
            </div>
      
            <div class="col-md-4">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstJobs" PageSize="5">
                    <Fields>
                        <asp:NumericPagerField ButtonCount="5" />
                    </Fields>
                </asp:DataPager>
            </div>
           
        </div>
    
   </div>


</asp:Content>
