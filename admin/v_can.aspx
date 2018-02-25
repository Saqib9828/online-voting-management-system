<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="v_can.aspx.cs" Inherits="OVMS.admin.v_can" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

                <h1 style="width: 100%; height: 30px; color: #000000; background-color: #FFFFFF; font-weight: bolder;" 
        align="center">
                    View and Delete Candidate</h1>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="srn" 
    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
    Width="100%">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="srn" HeaderText="srn" InsertVisible="False" 
            ReadOnly="True" SortExpression="srn" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="en_no" HeaderText="en_no" SortExpression="en_no" />
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
        <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ovms %>" 
    DeleteCommand="DELETE FROM [candidate_data] WHERE [srn] = @srn" 
    InsertCommand="INSERT INTO [candidate_data] ([name], [en_no], [father_name], [qulification], [age], [gender], [t_add], [contact_no], [email], [post]) VALUES (@name, @en_no, @father_name, @qulification, @age, @gender, @t_add, @contact_no, @email, @post)" 
    SelectCommand="SELECT [srn], [name], [en_no], [father_name], [qulification], [age], [gender], [t_add], [contact_no], [email], [post] FROM [candidate_data]" 
    UpdateCommand="UPDATE [candidate_data] SET [name] = @name, [en_no] = @en_no, [father_name] = @father_name, [qulification] = @qulification, [age] = @age, [gender] = @gender, [t_add] = @t_add, [contact_no] = @contact_no, [email] = @email, [post] = @post WHERE [srn] = @srn">
    <DeleteParameters>
        <asp:Parameter Name="srn" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="en_no" Type="String" />
        <asp:Parameter Name="father_name" Type="String" />
        <asp:Parameter Name="qulification" Type="String" />
        <asp:Parameter Name="age" Type="Decimal" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="t_add" Type="String" />
        <asp:Parameter Name="contact_no" Type="Decimal" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="post" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="en_no" Type="String" />
        <asp:Parameter Name="father_name" Type="String" />
        <asp:Parameter Name="qulification" Type="String" />
        <asp:Parameter Name="age" Type="Decimal" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="t_add" Type="String" />
        <asp:Parameter Name="contact_no" Type="Decimal" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="post" Type="String" />
        <asp:Parameter Name="srn" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
