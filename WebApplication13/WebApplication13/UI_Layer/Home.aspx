<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Home.aspx.cs" Inherits="WebApplication13.Home" %>

    <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
        <div>
            <asp:Button ID="Button1" runat="server" Text="SignIn" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="GuestRequest" OnClick="Button3_Click" />
            <br />
               <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="check" />
            <br />
               <br />
        </div>
    </asp:Content>
