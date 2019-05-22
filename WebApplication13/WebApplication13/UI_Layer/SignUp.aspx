<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/UI_Layer/SignUp.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication13.SignUp" %>
 <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>

        
            <br />
            <br />
            <br />
            <table>
                <tr><td colspan="2">User Registration</td></tr>
                <tr><td><asp:Label ID="Label1" runat="server" Text="Email_Id"></asp:Label></td><td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Label2" runat="server" Text="Passwrd"></asp:Label></td><td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Label3" runat="server" Text="Names"></asp:Label></td><td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Label4" runat="server" Text="Phoneno"></asp:Label></td><td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Label5" runat="server" Text="Addres"></asp:Label></td><td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td></tr>
                <tr><td colspan="2"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button></td></tr>
         </table>
 </asp:Content>
