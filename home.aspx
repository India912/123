<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication7.WebForm2" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        #img{
            background-image:url(img4f.jpg);
            height:400px;
            background-repeat:no-repeat;
            background-position:center;
            width:100%;
            
        }
        body{
           
          
            margin-bottom:0px;
            margin-left:0px;
            margin-right:0px;
            margin-top:-16px;
        }
        #Label1{
            font-size:70px;
        }
        #nav{
            background-color:royalblue

        }
       #one{
           background-color:gray;
           height:155px;
           
           
       }
     

.material-symbols-outlined {
  font-variation-settings:
  'FILL' 0,
  'wght' 400,
  'GRAD' 0,
  'opsz' 48
}

        </style>
       
       


   
</head>
<body>
    <form id="form1" runat="server">
        <div id="nav">
            
           
                <p>
&nbsp;
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="73px" Width="96px" ImageUrl="~/logo1.png" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"  ForeColor="White" Text="Scar Life Insurance"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="XX-Large" Font-Underline="False" ForeColor="White" >Home</asp:LinkButton>
&nbsp;&nbsp;
&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="XX-Large" Font-Underline="False" ForeColor="White">Why Insurance</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="XX-Large" ForeColor="White" Font-Underline="False">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="XX-Large" Font-Underline="False" ForeColor="White">SignUp</asp:LinkButton>
&nbsp;
                    </p>
            
        </div>
        <div id="img">
            
        </div>
        <br /><br />
     <div id="cards"> 
         <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Life Insurance</h5>
      <p class="card-text">Life insurance helps you plan ahead and provides long-term financial security for your family when they would need it most.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Health Insurance</h5>
      <p class="card-text">Medical bills are one of the frequent causes of financial hardship. Even if you’re young and healthy, a stay in the hospital could cost you about $30,000 for three days, according to Healthcare.gov.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Travel Insurance</h5>
      <p class="card-text">The last thing you want to worry about when planning a much-needed vacation is something going wrong. That's why it's important to have a backup plan — or travel insurance at the very least.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
</div>
     </div>
        <br /><br />
        <div id="cards2">
             <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Home Insurance</h5>
      <p class="card-text">Don't Wait Until It's Too Late. Protect Your Home Now with Home Insurance For Some Peace Of Mind.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="health.png" width="50px" height="50px" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Motor Insurance</h5>
      <p class="card-text"> Motor insurance provides insurance cover to all types of motor vehicles such as bikes, scooters, buses, cars, jeeps, and other commercial vehicles. Having motor insurance provides safety to you as well as to others. </p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Miscellaneous Insurance</h5>
      <p class="card-text">Miscellaneous Insurance helps cover a variety of risks by providing you the compensation you need.The miscellaneous insurance covers all the other fields that are not covered under fire, marine and life insurance.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
</div>
        </div>
        
        
    <br /><br />
        <div id="one">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">Contact Email</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">Faqs</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">Contact Number</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton8" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">About Us</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton9" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">Terms Of Services</asp:LinkButton>
            
           

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton10" runat="server" Font-Size="X-Large" Font-Underline="False" ForeColor="#F4F4F4">Follow us On:-</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp 
          <a href="https://facebook.com"> <i class="fa fa-facebook-square" aria-hidden="true" style='font-size:40px;'></i></a> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="https://instagram.com">    <i class="fa fa-instagram" aria-hidden="true" style='font-size:40px;'></i></a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="https://LinkedIn.com">   <i class="fa fa-linkedin-square" aria-hidden="true" style='font-size:40px;'></i></a>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="https://Twitter.com">    <i class="fa fa-twitter" aria-hidden="true" style='font-size:40px;'></i></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

          <br />    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="© Scar Life Insurance, Inc. All rights reserved."></asp:Label>
        
            
        </div>
            
        
        
        
    </form>
</body>
</html>

