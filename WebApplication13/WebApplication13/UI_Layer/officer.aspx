﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="officer.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication13.officer" %>
 <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="L_Id" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="L_Id" HeaderText="L_Id" InsertVisible="False" ReadOnly="True" SortExpression="L_Id" />
                    <asp:BoundField DataField="Requested_For" HeaderText="Requested_For" SortExpression="Requested_For" />
                    <asp:BoundField DataField="Assinged_To" HeaderText="Assinged_To" SortExpression="Assinged_To" />
                    <asp:BoundField DataField="Requested_Amount" HeaderText="Requested_Amount" SortExpression="Requested_Amount" />
                    <asp:BoundField DataField="RequestStatus" HeaderText="RequestStatus" SortExpression="RequestStatus" />
                    <asp:BoundField DataField="Assessment" HeaderText="Assessment" SortExpression="Assessment" />
                    <asp:BoundField DataField="Loan_Description" HeaderText="Loan_Description" SortExpression="Loan_Description" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Sample08ConnectionString3 %>" DeleteCommand="DELETE FROM [Loan_Request] WHERE [L_Id] = @L_Id" InsertCommand="INSERT INTO [Loan_Request] ([Requested_For], [Assinged_To], [Requested_Amount], [RequestStatus], [Assessment], [Loan_Description], [Email_Id]) VALUES (@Requested_For, @Assinged_To, @Requested_Amount, @RequestStatus, @Assessment, @Loan_Description, @Email_Id)" SelectCommand="SELECT * FROM [Loan_Request] WHERE ([RequestStatus] = @RequestStatus)" UpdateCommand="UPDATE [Loan_Request] SET [Requested_For] = @Requested_For, [Assinged_To] = @Assinged_To, [Requested_Amount] = @Requested_Amount, [RequestStatus] = @RequestStatus, [Assessment] = @Assessment, [Loan_Description] = @Loan_Description, [Email_Id] = @Email_Id WHERE [L_Id] = @L_Id">
                <DeleteParameters>
                    <asp:Parameter Name="L_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Requested_For" Type="Int32" />
                    <asp:Parameter Name="Assinged_To" Type="Int32" />
                    <asp:Parameter Name="Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="RequestStatus" Type="String" />
                    <asp:Parameter Name="Assessment" Type="String" />
                    <asp:Parameter Name="Loan_Description" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Reqst" Name="RequestStatus" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Requested_For" Type="Int32" />
                    <asp:Parameter Name="Assinged_To" Type="Int32" />
                    <asp:Parameter Name="Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="RequestStatus" Type="String" />
                    <asp:Parameter Name="Assessment" Type="String" />
                    <asp:Parameter Name="Loan_Description" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                    <asp:Parameter Name="L_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="L_Id" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="L_Id" HeaderText="L_Id" InsertVisible="False" ReadOnly="True" SortExpression="L_Id" />
                    <asp:BoundField DataField="Requested_For" HeaderText="Requested_For" SortExpression="Requested_For" />
                    <asp:BoundField DataField="Assinged_To" HeaderText="Assinged_To" SortExpression="Assinged_To" />
                    <asp:BoundField DataField="Requested_Amount" HeaderText="Requested_Amount" SortExpression="Requested_Amount" />
                    <asp:BoundField DataField="RequestStatus" HeaderText="RequestStatus" SortExpression="RequestStatus" />
                    <asp:BoundField DataField="Assessment" HeaderText="Assessment" SortExpression="Assessment" />
                    <asp:BoundField DataField="Loan_Description" HeaderText="Loan_Description" SortExpression="Loan_Description" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Sample08ConnectionString4 %>" DeleteCommand="DELETE FROM [Loan_Request] WHERE [L_Id] = @original_L_Id AND (([Requested_For] = @original_Requested_For) OR ([Requested_For] IS NULL AND @original_Requested_For IS NULL)) AND (([Assinged_To] = @original_Assinged_To) OR ([Assinged_To] IS NULL AND @original_Assinged_To IS NULL)) AND (([Requested_Amount] = @original_Requested_Amount) OR ([Requested_Amount] IS NULL AND @original_Requested_Amount IS NULL)) AND (([RequestStatus] = @original_RequestStatus) OR ([RequestStatus] IS NULL AND @original_RequestStatus IS NULL)) AND (([Assessment] = @original_Assessment) OR ([Assessment] IS NULL AND @original_Assessment IS NULL)) AND (([Loan_Description] = @original_Loan_Description) OR ([Loan_Description] IS NULL AND @original_Loan_Description IS NULL)) AND (([Email_Id] = @original_Email_Id) OR ([Email_Id] IS NULL AND @original_Email_Id IS NULL))" InsertCommand="INSERT INTO [Loan_Request] ([Requested_For], [Assinged_To], [Requested_Amount], [RequestStatus], [Assessment], [Loan_Description], [Email_Id]) VALUES (@Requested_For, @Assinged_To, @Requested_Amount, @RequestStatus, @Assessment, @Loan_Description, @Email_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Loan_Request] WHERE ([RequestStatus] = @RequestStatus)" UpdateCommand="UPDATE [Loan_Request] SET [Requested_For] = @Requested_For, [Assinged_To] = @Assinged_To, [Requested_Amount] = @Requested_Amount, [RequestStatus] = @RequestStatus, [Assessment] = @Assessment, [Loan_Description] = @Loan_Description, [Email_Id] = @Email_Id WHERE [L_Id] = @original_L_Id AND (([Requested_For] = @original_Requested_For) OR ([Requested_For] IS NULL AND @original_Requested_For IS NULL)) AND (([Assinged_To] = @original_Assinged_To) OR ([Assinged_To] IS NULL AND @original_Assinged_To IS NULL)) AND (([Requested_Amount] = @original_Requested_Amount) OR ([Requested_Amount] IS NULL AND @original_Requested_Amount IS NULL)) AND (([RequestStatus] = @original_RequestStatus) OR ([RequestStatus] IS NULL AND @original_RequestStatus IS NULL)) AND (([Assessment] = @original_Assessment) OR ([Assessment] IS NULL AND @original_Assessment IS NULL)) AND (([Loan_Description] = @original_Loan_Description) OR ([Loan_Description] IS NULL AND @original_Loan_Description IS NULL)) AND (([Email_Id] = @original_Email_Id) OR ([Email_Id] IS NULL AND @original_Email_Id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_L_Id" Type="Int32" />
                    <asp:Parameter Name="original_Requested_For" Type="Int32" />
                    <asp:Parameter Name="original_Assinged_To" Type="Int32" />
                    <asp:Parameter Name="original_Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="original_RequestStatus" Type="String" />
                    <asp:Parameter Name="original_Assessment" Type="String" />
                    <asp:Parameter Name="original_Loan_Description" Type="String" />
                    <asp:Parameter Name="original_Email_Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Requested_For" Type="Int32" />
                    <asp:Parameter Name="Assinged_To" Type="Int32" />
                    <asp:Parameter Name="Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="RequestStatus" Type="String" />
                    <asp:Parameter Name="Assessment" Type="String" />
                    <asp:Parameter Name="Loan_Description" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="assesd" Name="RequestStatus" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Requested_For" Type="Int32" />
                    <asp:Parameter Name="Assinged_To" Type="Int32" />
                    <asp:Parameter Name="Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="RequestStatus" Type="String" />
                    <asp:Parameter Name="Assessment" Type="String" />
                    <asp:Parameter Name="Loan_Description" Type="String" />
                    <asp:Parameter Name="Email_Id" Type="String" />
                    <asp:Parameter Name="original_L_Id" Type="Int32" />
                    <asp:Parameter Name="original_Requested_For" Type="Int32" />
                    <asp:Parameter Name="original_Assinged_To" Type="Int32" />
                    <asp:Parameter Name="original_Requested_Amount" Type="Int64" />
                    <asp:Parameter Name="original_RequestStatus" Type="String" />
                    <asp:Parameter Name="original_Assessment" Type="String" />
                    <asp:Parameter Name="original_Loan_Description" Type="String" />
                    <asp:Parameter Name="original_Email_Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
 </asp:Content>
