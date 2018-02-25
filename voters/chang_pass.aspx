<%@ Page Title="" Language="C#" MasterPageFile="~/voters/voter.Master" AutoEventWireup="true" CodeBehind="chang_pass.aspx.cs" Inherits="OVMS.voters.chang_pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 39%;
       
        margin-bottom: 0px;
    }
    .style2
    {
        width: 25%;
        color: #FFFFFF;
    }
    .style3
    {
        width: 70%;
    }

    .style4
    {
        width: 32%;
        color: #FFFFFF;
    }

    .style5
    {
        width: 32%;
        color: #FFFFFF;
        height: 21px;
    }
    .style6
    {
        width: 70%;
        height: 21px;
    }

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <asp:TextBox ID="TextBox1" runat="server" Height="16px" Visible="False" 
        Width="16px"></asp:TextBox><br />
        

        <div class="b" style="background-color:  #350000;">
        <p align="center">
    <asp:Label ID="Label2" runat="server" BackColor="#350000" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" Text="Welcome   " 
        ForeColor="White"></asp:Label>

        

    <asp:Label ID="Label1" runat="server" BackColor="#350000" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" 
        ForeColor="White"></asp:Label>

           </p></div>
        

        <div class="changepass" 
        style="height: 100%; width: 100%;" 
        align="left">

            <br />
            <table class="style1" align="center">
    <tr>
        <td class="style5" style="color: #000000">
            </td>
        <td class="style6">
            </td>
       
    </tr>
    <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" style="color: #000000" 
            >
            UserID</td>
        <td class="style3">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
   <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" 
            style="color: #000000">
            Old
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Height="16px" Visible="False" 
                Width="16px"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" 
            style="color: #000000">
            New
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
        </td>
       
    </tr>
   <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" 
            style="color: #000000">
            Confirm
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
        </td>
       
    </tr>
     <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" 
             style="color: #000000">
            &nbsp;</td>
        <td class="style3">
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" 
                BorderStyle="Solid" Text="Change Password" Width="155px" 
                onclick="Button1_Click" />
            &nbsp;<asp:Label ID="Label3" runat="server" CssClass="style2" ForeColor="Black"></asp:Label>
        </td>
       
    </tr>
  
   
    </table>


    </div>
   
   

    <br />
    <br />


</asp:Content>
