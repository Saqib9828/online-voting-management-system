<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="reg_can.aspx.cs" Inherits="OVMS.admin.reg_can" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 232px;
            text-align: right;
        }
        .style3
        {
            width: 232px;
            text-align: right;
            height: 29px;
        }
        .style4
        {
            height: 29px;
        }
        .style5
        {
            width: 84px;
        }
        .style6
        {
            height: 29px;
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 style="font-family: 'Arial Black'; color: #003300">Candidate Registration Form</h1>
    <p style="font-family: 'Arial Black'; color: #003300">&nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style2">
                Post</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Vice-President</asp:ListItem>
                    <asp:ListItem>Secretry</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxNAME" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxNAME" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ENROLL NO</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2ENROLLNO" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2ENROLLNO" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FATHER NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxFATHERNAME" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxFATHERNAME" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MOTHER NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxMOTHERNAME" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxMOTHERNAME" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                QUALIFICATION</td>
            <td class="style6">
                <asp:DropDownList ID="DropDownListQUALIFICATION" runat="server">
                    <asp:ListItem>UG</asp:ListItem>
                    <asp:ListItem>PG</asp:ListItem>
                    <asp:ListItem>Ph.D</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListQUALIFICATION" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                AGE</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxAGE" runat="server" TextMode="Number" Width="40px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxAGE" ErrorMessage="RequiredField" ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                GENDER</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownListGENDER" runat="server">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownListGENDER" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PERMANENT ADDRESS</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPERMANENTADRESS" runat="server"></asp:TextBox>
&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxPERMANENTADRESS" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TEMPORARY ADDRESS</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxTEMPORARYADRESS" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxTEMPORARYADRESS" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CONTACT NUMBER</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxCONTACTNUMBER" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxCONTACTNUMBER" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PASSWARD</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPASSWARD" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBoxPASSWARD" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CONFIRM PASSWARD</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxCONFIRMPASSWARD" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBoxCONFIRMPASSWARD" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPASSWARD" ControlToValidate="TextBoxCONFIRMPASSWARD" 
                    ErrorMessage="REQUIRED FIELD" ForeColor="#009900"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                EMAIL ID</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxEMAILID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBoxEMAILID" ErrorMessage="RequiredField" 
                    ForeColor="#009900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" ForeColor="#333300" 
                     Text="Add Candidate" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
