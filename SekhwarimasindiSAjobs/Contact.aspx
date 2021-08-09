<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SekhwarimasindiSAjobs.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="row">
       <div class="col-md-1"></div>
        <div class="col-md-10">
             <div style="background-color: #ffffff">
                 <br /><br />
                <h2 style="text-align:center"><%: Title %>  Us</h2>
                 <hr />
                 <div class="row">

                     <div class="col-md-1"></div>
                     <div class="col-md-5">
                         <h3>Send us a message</h3>
                         <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                         <br />
                         <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox><br />

                         <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
                         <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox><br />

                         <asp:Label ID="Label5" runat="server" Text="EmailAddress"></asp:Label><br />
                         <asp:TextBox ID="txtEmailAddress" class="form-control" placeholder="EmailAddress" TextMode="Email" runat="server"></asp:TextBox><br />

                         <asp:Label ID="Label15" runat="server" Text="Subject"></asp:Label><br />
                         <asp:TextBox ID="txtSubject" class="form-control" placeholder="Subject" runat="server"></asp:TextBox><br />



                         <asp:LinkButton ID="LinkButton1" class="btn btn-primary form-control" runat="server">
                <span class="glyphicon glyphicon-envelope"></span>
                &nbsp; Send Message</asp:LinkButton>
                     </div>

                     <div class="col-md-5">
                         <br />
                         <br />
                         <br />
                         <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label><br />
                         <asp:TextBox ID="txtMessage" class="form-control" placeholder="Message" TextMode="MultiLine" runat="server"></asp:TextBox><br />


                         <br />

                         <h3>Address</h3>
                         <address>
                             University Way<br />
                             North Campus<br />
                             Summerstrand, 6001<br />
                             <abbr title="Phone">Phone Number:</abbr>
                             014 504 1111
                         </address>

                         <address>
                             <strong>Support:</strong>   <a href="mailto:sekhwarimasindi21@gmail.com">sekhwarimasindi21@gmail.com</a><br />
                             <strong>Marketing:</strong> <a href="mailto:s216252946@mandela.ac.za">s216252946@mandela.ac.za"</a>
                         </address>


                     </div>
                     <div class="col-md-1"></div>

                 </div>
                 <br />
                 </div>
         </div>
        <div class="col-md-3"></div>
        </div>
   
     <br /><br /><br />
</asp:Content>
