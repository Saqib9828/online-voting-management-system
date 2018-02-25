<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="OVMS.admin.Adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" style="height: 346px; width: 96%;">
<div class="a" 
            
        style="float: left; width: 40%; height: 84%;">

        <div class="login" style="color: #000000">
        
        
            <table class="style1" style="color: #FFFFFF; height: 38px;">
                <tr>
                    <td>
                        <h1 style="color: #FFFFFF; background-color: #0033CC; font-weight: bolder; font-size: large">
                            &nbsp; Welcome Admin...!!&nbsp;</h1>&nbsp;</td>
                </tr></table>
        
        
        </div>
 <p style="color: #000000; font-size: medium; width: 98%; height: 72%; ">You are the 
     admin of this application. so you have power to ADD candidate, and view all 
     records of voter and candidate.!!</p>
        
</div>

<div class="b" 
        style="float: left; width: 60%; height: 264px;"><br /><br />

        
            
            <img src="../Styles/login_icon.png" alt="" 
        style="width: 464px; height: 293px;" />
            
            </div>


    </div>


</div>
   
</asp:Content>
