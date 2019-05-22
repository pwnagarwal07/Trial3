<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication13.DashBoard" %>
 <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
         
        <asp:Button ID="Button1" runat="server" Text="Loan_Request" OnClick="Button1_Click1" />

           <asp:GridView ID="GridView1" runat="server"></asp:GridView>             
        
         </asp:Content>