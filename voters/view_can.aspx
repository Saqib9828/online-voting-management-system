<%@ Page Title="" Language="C#" MasterPageFile="~/voters/voter.Master" AutoEventWireup="true" CodeBehind="view_can.aspx.cs" Inherits="OVMS.voters.view_can" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<h1 align="center" 
        style="background-color: #000000; font-size: x-large; font-weight: bolder; color: #FFFFFF;">View Candidate</h1>
<br />
<p align="center">Choose Post: 
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Height="24px" Width="150px">
        <asp:ListItem>Select Candidate</asp:ListItem>
         <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Vice-President</asp:ListItem>
                    <asp:ListItem>Secretry</asp:ListItem>
    </asp:DropDownList>
</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
    AllowPaging="True" AutoGenerateColumns="False" Width="100%">
        <Columns>
            <asp:BoundField DataField="en_no" HeaderText="en_no" SortExpression="en_no" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="father_name" HeaderText="father_name" 
                SortExpression="father_name" />
            <asp:BoundField DataField="qulification" HeaderText="qulification" 
                SortExpression="qulification" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="t_add" HeaderText="t_add" SortExpression="t_add" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
        <HeaderStyle BackColor="Black" ForeColor="White" Height="30px" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ovms %>" 
    SelectCommand="SELECT [en_no], [name], [father_name], [qulification], [age], [gender], [t_add], [contact_no], [email] FROM [candidate_data] WHERE ([post] = @post)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="post" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
