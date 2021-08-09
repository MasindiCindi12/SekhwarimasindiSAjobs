<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostJob.aspx.cs" Inherits="SekhwarimasindiSAjobs.PostJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <div class="row">
           <div class="col-md-2"></div>
           <div class="col-md-8" style="background-color: #ffffff">
        <h2 style="text-align:center;"><%: Title %>Post Job</h2>
  
   
    <div class="row">

          <div class="col-md-2">  </div>
          <div class="col-md-8">
         <h3>Company Details</h3>
            <%-- Company Information --%>
              <asp:Label ID="Label6" runat="server" Text="Representative No"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtRep" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtRep" class="form-control" placeholder="Representative" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label10" runat="server" Text="Company Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtCompanyName" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtCompanyName" class="form-control" placeholder="Company Name" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label11" runat="server" Text="Company Description"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtCompanyDescription" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtCompanyDescription" class="form-control" placeholder="Company Description" TextMode="MultiLine" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label12" runat="server" Text="Web Site"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtWebSite" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtWebSite" class="form-control" placeholder="Web SIte" runat="server"></asp:TextBox>
            <br />


             </div>
        </div>
         <div class="row">
             
              <h3 style="text-align:center;">Job Details</h3>
                <div class="col-md-2"> </div>
         <div class="col-md-4"> 
           
            <%-- Job Details --%>
            <asp:Label ID="Label1" runat="server" Text="Job Title"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtJobTitle" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtJobTitle" class="form-control" placeholder="Job Title" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label2" runat="server" Text="Job Description"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtJobDescription" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtJobDescription" class="form-control" placeholder="Job Description" TextMode="MultiLine" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Salary"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtSalary" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtSalary" class="form-control" placeholder="Salary" TextMode="Number" runat="server"></asp:TextBox>
            <br />

             
            <asp:Label ID="Label7" runat="server" Text="Job Type"></asp:Label><br />
            <asp:DropDownList ID="ddlJobType" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />
   <br />
           
           

              </div>

         <div class="col-md-4"> 
              <asp:Label ID="Label4" runat="server" Text="Position Description"></asp:Label><br />
            <asp:DropDownList ID="ddlPosition" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />
             <br />
            <asp:Label ID="Label13" runat="server" Text="Stream"></asp:Label><br />
            <asp:DropDownList ID="ddlStream" class="btn btn-secondary form-control" runat="server"></asp:DropDownList><br />
             <br /> <br />
            <asp:Label ID="Label5" runat="server" Text="Province"></asp:Label><br />
            <asp:DropDownList ID="ddlProvince" class="btn btn-secondary  form-control" runat="server"></asp:DropDownList><br />
             <br />

             <div class="row">

          <div class="col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Date Expire"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtDateExp" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtDateExp" TextMode="Date" placeholder="Date To" class="form-control" runat="server"></asp:TextBox>
            <br />
              </div>
 <div class="col-md-6">
         <asp:Label ID="Label8" runat="server" Text="Date Posted"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtdatePosted" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator><br />
           <asp:TextBox ID="txtdatePosted" TextMode="Date" placeholder="Date From" class="form-control" runat="server"></asp:TextBox>
             <br />
           </div>
                 </div>

        </div>
        <div class="col-md-1"> </div>
        </div>


               <div class="row">

                   <div class="col-md-3"></div>
                   <div class="col-md-6">
                       <asp:Button ID="btnPost" class="btn btn-primary form-control" runat="server" Text="Post Job" OnClick="btnPost_Click" />
                       <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                   </div>

                   <div class="col-md-3"></div>

               </div>

               <br /><br /> <br /><br />
             
    </div>

   
</asp:Content>
