<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OVMS._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 85px;
        }
    </style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main" style="height: 346px; width: 96%;">
<div class="a" 
            
        style="float: left; width: 40%; height: 84%;">

        <div class="login" style="color: #000000">
        
        
            <table class="style1" style="color: #FFFFFF; height: 38px;">
                <tr>
                    <td>
                        <h1 style="border-color: #FFFFFF; color: #FFFFFF; background-color: #0033CC; font-weight: bolder; font-size: large; border-top-style: solid; border-bottom-style: solid;" 
                            align="center">
                            <br />Student/voter Login<br />&nbsp;</h1></td>
                </tr></table>
                <table class="style1" style="color: #FFFFFF">
            
                <tr>
                    <td class="style2" style="color: #000000">
                        Voter_ID/en_no</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2" style="color: #000000">
                        Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="62px" onclick="Button1_Click" 
                             />
                        <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
            </table>
        
        
        </div>
        <h1 style="border-color: #FFFFFF; color: #FFFFFF; background-color: #0033CC; font-weight: bolder; font-size: large; border-top-style: solid; border-bottom-style: solid;" 
                            align="center">
                            <br />About the Project<br />&nbsp;</h1>
 <p style="color: #000000; font-size: medium; width: 98%; height: 72%; ">This is the portal for the Aligarh Muslim University's online voting system.  The online voting process is easy to use and secured.  To see if you are eligible to vote in any current elections, please use the login button above.
.!!</p>
        
</div>

<div class="b" 
        style="float: left; width: 60%; height: 264px;"><br /><br />

        
            
            <img src="Styles/iStock_000015995229XSmall.jpg" alt="" 
        style="width: 532px" />
            
            </div>


    </div>


</div>
   
   </asp:Content>
