<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="voter_reg.aspx.cs" Inherits="OVMS.voter_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 242px;
        text-align: right;
        color:BLACK;
    }
    .style3
    {
        width: 140px;
    }
    .style4
    {
        width: 242px;
        text-align: right;
        height: 26px;
    }
    .style5
    {
        width: 140px;
        height: 26px;
    }
    .style6
    {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <table class="style1">
    <tr>
        <td class="style4">
            NAME</td>
        <td class="style5">
            <asp:TextBox ID="TextBoxNAME" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBoxNAME" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            ENROLL NO</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxENROLL" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxENROLL" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            FATHER NAME</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxFATHER" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBoxFATHER" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            MOTHER NAME</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxMOTHER" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBoxMOTHER" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            QUALIFICATION</td>
        <td class="style3">
            <asp:DropDownList ID="DropDownListQUALIFICATION" runat="server">
                <asp:ListItem>UG</asp:ListItem>
                <asp:ListItem>PG</asp:ListItem>
                <asp:ListItem>Ph.D</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="DropDownListQUALIFICATION" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            AGE</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxAGE" runat="server" TextMode="Number" Width="51px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBoxAGE" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            GENDER</td>
        <td class="style3">
            <asp:DropDownList ID="DropDownListQUALIFICATION0" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="DropDownListQUALIFICATION0" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            PERMANENT ADDRESS</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxADDRES" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBoxADDRES" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            TEMPORARY ADDRESS</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxADDRES0" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBoxADDRES0" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            CONTACT&nbsp; NO</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxCONTACT" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBoxCONTACT" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            PASSWARD</td>
        <td class="style5">
            <asp:TextBox ID="TextBoxPASSWARD" runat="server" 
                 style="height: 22px" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBoxPASSWARD" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            CONFIRM PASSWARD
        </td>
        <td class="style5">
            <asp:TextBox ID="TextBoxC_PASSWARD" runat="server" 
                 TextMode="Password"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="TextBoxPASSWARD" ErrorMessage="Required Field" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBoxPASSWARD" ControlToValidate="TextBoxC_PASSWARD" 
                ErrorMessage="CompareValidator" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            E-MAIL ID</td>
        <td class="style3">
            <asp:TextBox ID="TextBoxEMAIL" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldEMAIL" runat="server" 
                ControlToValidate="TextBoxEMAIL" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" 
                Text="Add Voter" Width="121px" onclick="Button1_Click" />
        </td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
