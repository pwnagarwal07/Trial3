<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loan_Request.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication13.Loan_Details1" %>
 <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
        <div>
            <br />
            <br />
            <br />
            <table >
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Requested_For"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Requested_Amount"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Loan_Description"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Email_Id"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" /></td>
                </tr>
            </table>
             
        </div>
        </asp:Content>
