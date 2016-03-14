<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CamperSearch.aspx.cs" Inherits="CamperSignInSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Science Quest Camper System Website</h1>
        <p class="lead">
            <asp:Image ID="ScienceQuestLogo" runat="server" Height="170px" Width="80%" ImageUrl="~/Images/ScienceQuestLogo.png" style="margin-left: 38px" />
        </p>
        <p>
            &nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Use the search boxes below to refine the search for a camper </h2>
            <p>
                First Name:<asp:TextBox ID="FirstNameSearchBox" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" style="margin-left: 8px" Text="Search" OnClick="SearchButton_Click" />
            </p>
            <p>
                <asp:GridView ID="CamperDataGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="CamperDataForSearch" EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                        <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                        <asp:BoundField DataField="Self Sign" HeaderText="Self Sign" SortExpression="Self Sign" />
                        <asp:BoundField DataField="Approved Pick Up" HeaderText="Approved Pick Up" SortExpression="Approved Pick Up" />
                        <asp:BoundField DataField="Sign In Signature" HeaderText="Sign In Signature" SortExpression="Sign In Signature" />
                        <asp:BoundField DataField="Time In" HeaderText="Time In" SortExpression="Time In" />
                        <asp:BoundField DataField="Sign Out SIgnature" HeaderText="Sign Out SIgnature" SortExpression="Sign Out SIgnature" />
                        <asp:BoundField DataField="Time Out" HeaderText="Time Out" SortExpression="Time Out" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="CamperDataForSearch" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-CamperSignInSystem-20160302035746ConnectionString1 %>" SelectCommand="SELECT * FROM [CamperInfoTable] WHERE ([First Name] LIKE '%' + @First_Name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="FirstNameSearchBox" Name="First_Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
