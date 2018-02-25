<%@ Page Title="" Language="C#" MasterPageFile="~/voters/voter.Master" AutoEventWireup="true" CodeBehind="give_vote.aspx.cs" Inherits="OVMS.voters.give_vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Height="1px" Width="1px"></asp:TextBox>
<br />
<h1 align="center" 
        style="color: #000000; font-weight: bolder; font-size: xx-large;">Voting Process</h1><br />
        <h1 align="center" 
        style="color: #0000FF; font-weight: bolder; font-size: 21px">
            <asp:Label ID="Label1" runat="server" Text="Step-I"></asp:Label></h1>
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
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    </p><br />


    <p align="center" style="color: #000000; font-size: large">
    <asp:Label ID="Label4" runat="server" Text="Choose Candidate-" Visible="False"></asp:Label>
    &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Height="41px" 
        Width="122px" DataSourceID="SqlDataSource1" DataTextField="name" 
            DataValueField="name" Visible="False">
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Vice-President</asp:ListItem>
                    <asp:ListItem>Secretry</asp:ListItem>
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ovms %>" 
            SelectCommand="SELECT [name] FROM [candidate_data] WHERE ([post] = @post)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="post" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
            </p>
    <p align="center" style="color: #000000; font-size: large">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Give Vote" Visible="False" />
    </p>
    <p align="center" style="color: #FF0000; font-size: large">
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
    </p>
    <br />

   
</asp:Content>
