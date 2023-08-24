<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="WebApplication7.adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
  @media (min-width: 992px) {
  .navbar {
    width: 16%;
    height: 100vh;
  }
  form input {
    margin-bottom: 0.7em;
  }
}
       </style>
    </head>
<body>
   
        <form id="form1" runat="server">
   
        <div><nav class="navbar navbar-expand-lg navbar-light" style="background-color:dodgerblue; height: 400px;">
  <a class="navbar-brand" href="#">Navbar</a><br /><br />
            <asp:Button ID="Button2" runat="server" BackColor="DodgerBlue" Height="32px" Text="Product Type" Width="251px" BorderStyle="Solid" BorderWidth="3px" /><br />
            <asp:Button ID="Button3" runat="server" Text="Add Product" BackColor="DodgerBlue" BorderStyle="Solid" BorderWidth="3px" Height="32px" Width="251px" />
 
           


       
    
          
            <asp:Button ID="Button4" runat="server" Text="View Product" BackColor="DodgerBlue" BorderStyle="Solid" BorderWidth="3px" Height="32px" Width="251px"/>
       
          
            <asp:Button ID="Button5" runat="server" Text="SubProduct Type" BackColor="DodgerBlue" BorderStyle="Solid" BorderWidth="3px" Height="32px" Width="251px"/>
           
            <asp:Button ID="Button6" runat="server" Text="Add SubProduct" BackColor="DodgerBlue" BorderStyle="Solid" BorderWidth="3px" Height="32px" Width="251px" />
 

  
           
                <asp:Button ID="Button7" runat="server" BackColor="DodgerBlue" Text="View SubProduct" BorderStyle="Solid" BorderWidth="3px" Height="32px" Width="251px" />
          
               </nav>
   
  </div>


       
    
        </form>

       
    
</body>
</html>
