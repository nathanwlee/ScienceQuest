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
                <asp:GridView ID="CamperDataGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="CamperDataForSearch" EmptyDataText="There are no data records to display." OnSelectedIndexChanged="CamperDataGridView_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
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
                <asp:SqlDataSource ID="CamperDataForSearch" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-CamperSignInSystem-20160302035746ConnectionString1 %>" SelectCommand="SELECT * FROM [CamperInfoTable] WHERE ([First Name] LIKE '%' + @First_Name + '%')" DeleteCommand="DELETE FROM [CamperInfoTable] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [CamperInfoTable] ([ID], [First Name], [Last Name], [Self Sign], [Approved Pick Up], [Sign In Signature], [Time In], [Sign Out SIgnature], [Time Out]) VALUES (@ID, @First_Name, @Last_Name, @Self_Sign, @Approved_Pick_Up, @Sign_In_Signature, @Time_In, @Sign_Out_SIgnature, @Time_Out)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CamperInfoTable] SET [First Name] = @First_Name, [Last Name] = @Last_Name, [Self Sign] = @Self_Sign, [Approved Pick Up] = @Approved_Pick_Up, [Sign In Signature] = @Sign_In_Signature, [Time In] = @Time_In, [Sign Out SIgnature] = @Sign_Out_SIgnature, [Time Out] = @Time_Out WHERE [ID] = @original_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Self_Sign" Type="String" />
                        <asp:Parameter Name="Approved_Pick_Up" Type="String" />
                        <asp:Parameter Name="Sign_In_Signature" Type="String" />
                        <asp:Parameter Name="Time_In" Type="String" />
                        <asp:Parameter Name="Sign_Out_SIgnature" Type="String" />
                        <asp:Parameter Name="Time_Out" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="FirstNameSearchBox" Name="First_Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Self_Sign" Type="String" />
                        <asp:Parameter Name="Approved_Pick_Up" Type="String" />
                        <asp:Parameter Name="Sign_In_Signature" Type="String" />
                        <asp:Parameter Name="Time_In" Type="String" />
                        <asp:Parameter Name="Sign_Out_SIgnature" Type="String" />
                        <asp:Parameter Name="Time_Out" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
