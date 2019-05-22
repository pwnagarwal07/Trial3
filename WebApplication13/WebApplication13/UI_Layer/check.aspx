<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check.aspx.cs" Inherits="WebApplication13.check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>
<body bgcolor="orange">
    <form id="form1" runat="server">
        <div>
            <center>
                <br />
                <br />
                <br />
                <br />
                <img src="check.jpg" style="width: 543px; height: 139px; margin-left: 0px" /><br />
                 <div align="center"></div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" BorderStyle="Inset" />
                 <img src="status1.jpg" style="width: 78px" />
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:TextBox>
            </center>
           
        </div>
    </form>
</body>
</html>
