<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SekhwarimasindiSAjobs._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    
    
    
    <div class="container-fluid">
       
        <div class="row">
         
            
            <div style="background: url(Pictures/search.jpg) no-repeat center; background-size: cover; height: 250px; position: relative;">

                <div class="col-md-4" ></div>
                <div class="col-md-3" style="vertical-align:central;top:50%;">
                    <asp:TextBox ID="txtSearch" class="form-control" placeholder="Search..." runat="server"></asp:TextBox><br />
                </div>
                 <div class="col-md-1 form-class" style="vertical-align:central;top:50%;">
                    <asp:Button ID="btnSearch" class="btn btn-primary form-control" runat="server" Text="Search" OnClick="btnSearch_Click"/>
                </div>
                  <div class="col-md-4" ></div>
            </div>
        </div>
    </div>
   
    <div class="container">
       
        <div class="row">
         
         

                <div class="col-md-4"></div>
             
                   <div class="col-md-4">
                       <asp:ListView ID="lstJobs" runat="server" ItemPlaceholderID="Placeholder1">

                       </asp:ListView>
                   </div>
                
                  <div class="col-md-4" ></div>
            </div>
       
   </div>
   

    <%--Searching by cats--%>
    <div class="Container">
        <div class="row">
              <div class="col-md-2"></div>
             <div class="col-md-3">
                 <h4>Provinces</h4>
            <asp:ListView ID="lstProvince" runat="server" ItemPlaceholderID="Placeholder1">
                <ItemTemplate>
                    <div>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <a href="SearchJobByProvince.aspx?jpi=<%#Eval("ProvinceID")%>&prv=<%# Eval("ProvinceName")%>"><%#Eval("ProvinceName") %></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>

            </asp:ListView>
                 </div>
              <div class="col-md-3">
                 <h4>Job Type</h4>
            <asp:ListView ID="lstJobtype" runat="server" ItemPlaceholderID="Placeholder1">
                <ItemTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <a href="searchJobByJobtype.aspx?jti=<%#Eval("jobtypeID")%>&prv=<%# Eval("jobtypeDescription")%>"><%#Eval("jobtypeDescription") %></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>

            </asp:ListView>
                 </div>
              <div class="col-md-3">
                 <h4>Stream</h4>
            <asp:ListView ID="lstStream" runat="server" ItemPlaceholderID="Placeholder1">
                <ItemTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                      <a href="searchJobByStream.aspx?sti=<%#Eval("streamID")%>&prv=<%# Eval("streamDescription")%>"><%#Eval("streamDescription") %></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>

            </asp:ListView>
                 </div>
             <div class="col-md-1"></div>
        </div>
   
            </div>
    <br /><br />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10" style="background-color: #ffffff">
                  
                        <h3>Featured Jobs</h3>

                        <div class="col-md-3">
                            <h4>Create an Account</h4>
                            <p>
                                Need to advertise your jobs?<br />
                                Are you looking for a job to apply?
                    
                            </p>

                            <li><a runat="server" href="CreateAccount.aspx"><span class="glyphicon glyphicon-user"></span>Create an Account&raquo;</a></li>


                        </div>
                        <div class="col-md-3">

                            <h4>Post Jobs</h4>
                            <p>
                                Post a job and advertise your open positions,that need to filled. 
                            </p>
                            <p>
                                <li><a runat="server" href="postJobLogin.aspx"><span class="glyphicon glyphicon-pencil"></span>Post Jobs&raquo;</a></li>

                            </p>
                        </div>
                        <div class="col-md-3">
                            <h4>Search Jobs</h4>
                            <p>
                                Browse jobs in diffrent streams,provinces and we'll quaicly match you...
                            </p>
                            <p>
                                <li><a runat="server" href="JobSearch.aspx"><span class="glyphicon glyphicon-search"></span>Search Jobs&raquo;</a></li>

                            </p>
                        </div>
                        <div class="col-md-3">
                            <h4>Apply Jobs</h4>
                            <p>
                                Apply jobs that you qualify see your self qualifying for.
                            </p>
                            <p>
                                <li><a runat="server" href="JobListing.aspx"><span class="glyphicon glyphicon-envelope"></span>Apply Jobs &raquo;</a></li>

                            </p>
                        </div>
                    </div>

            
                
            </div>
        </div>
    </div>
    <p><br /></p>

     <div class="row">
         <div class="col-md-12">
               <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10" style="background-color:#ffffff">
                 
        <div class="col-md-4">
          <h4>Search By <i>Province</i></h4>
            <p>
               Search jobs by the province you are close to or where you would want to relocate to.
            </p>
            <p>
                <li><a runat="server" href="SearchJobByProvince.aspx"><span class="glyphicon glyphicon-search"></span>Search By Province&raquo;</a></li>
                 
            
            </p>
        </div>
        <div class="col-md-4">
            <h4>Search By <i>Stream</i></h4>
            <p>
                Search jobs by the stream you are interested in or qualified to work in.
            </p>
            <p>
                <li><a runat="server" href="searchJobByStream.aspx"><span class="glyphicon glyphicon-search"></span>Search By Stream&raquo;</a></li>
                 
               
            </p>
        </div>
        <div class="col-md-4">
            <h4>Search By <i>Job type</i></h4>
            <p>
               Search jobs by job type that you are on to.
            </p>
            <p>
                <li><a runat="server" href="searchJobByJobtype.aspx"><span class="glyphicon glyphicon-search"></span>Search By Job type&raquo;</a></li>
                 
           
            </p>
        </div>
             </div>
                   
                    </div> </div>
    </div>
    <br /><br /><br /><br />
</asp:Content>
