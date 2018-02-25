<%@ Page Title="" Language="C#" MasterPageFile="~/candidate/candidate.Master" AutoEventWireup="true" CodeBehind="view_res.aspx.cs" Inherits="OVMS.candidate.view_res" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1 align="center" 
        style="color: #000000; font-weight: bolder; font-size: xx-large;">View 
    result</h1><br />
<p align="center" style="color: #000000; font-size: large">
    <asp:Label ID="Label3" runat="server" Text="Choose Post-"></asp:Label>
    &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" 
        Width="122px">
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Vice-President</asp:ListItem>
                    <asp:ListItem>Secretry</asp:ListItem>
                </asp:DropDownList>
            </p>
    <p align="center" style="color: #000000; font-size: large">
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </p>
    <p align="center" style="color: #FF0000; font-size: large">
            <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <br />



</asp:Content>
