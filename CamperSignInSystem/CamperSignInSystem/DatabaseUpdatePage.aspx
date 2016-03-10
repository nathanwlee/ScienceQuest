<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatabaseUpdatePage.aspx.cs" Inherits="CamperSignInSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Update the Camper Database<%: Title %>.</h2>
    <h3>Upload the Excel spreadsheet to update the database with below.</h3>
    <address>
        Make sure that the spreadsheet follows the same formatting as the SQL database table to insure comptatibility.</address>

<%--    <address>
        
        <asp:Button ID="UploadButton" runat="server" Text="Upload" />
    </address>--%>

    <table>
        <tr>
            <td>Select File : </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="UploadFileButton" runat="server" Text="Upload File" OnClick="UploadFileButton_Click" style="margin-left: 220px" />
            </td>
        </tr>
    </table>
    <div>
        <br />
        <asp:Label ID="MessageLabel" runat="server" Font-Bold="true" />
        <br />
        <asp:GridView ID="CamperDataGridView" runat="server" AutoGenerateColumns="false">
            <EmptyDataTemplate>
                <div style="padding:10px">
                    Data not found
                </div>
            </EmptyDataTemplate>
            <Columns><%--below is the code that formats the columns in the grid view data table (TEMPORARY ON THIS PAGE)--%>
                <asp:BoundField HeaderText="ID Number" DataField="ID Number" />
                <asp:BoundField HeaderText="First Name" DataField="First Name" />
                <asp:BoundField HeaderText="Last Name" DataField="Last Name" />
                <asp:BoundField HeaderText="Self Sign" DataField="Self Sign" />
                <asp:BoundField HeaderText="Approved Pick Up" DataField="Approved Pick Up" />
                <asp:BoundField HeaderText="Sign In Signature" DataField="Sign In Signature" />
                <asp:BoundField HeaderText="Time In" DataField="Time In" />
                <asp:BoundField HeaderText="Sign Out Signature" DataField="Sign Out Signature" />
                <asp:BoundField HeaderText="Time Out" DataField="Time Out" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
