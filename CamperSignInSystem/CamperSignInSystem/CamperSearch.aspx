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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:<asp:TextBox ID="LastNameSearchBox" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" style="margin-left: 8px" Text="Search" OnClick="SearchButton_Click" />
            </p>
            <p>
                <asp:GridView ID="CamperDataGridView" runat="server" AutoGenerateColumns="false">
            <EmptyDataTemplate>
                <div style="padding:10px">
                    Data not found
                </div>
            </EmptyDataTemplate>
            <Columns><%--below is the code that formats the columns in the grid view data table (TEMPORARY ON THIS PAGE)--%>
                <asp:BoundField HeaderText="ID" DataField="ID" />
                <asp:BoundField HeaderText="First Name" DataField="First_Name" />
                <asp:BoundField HeaderText="Last Name" DataField="Last_Name" />
                <asp:BoundField HeaderText="Self Sign" DataField="Self_Sign" />
                <asp:BoundField HeaderText="Approved Pick Up" DataField="Approved_Pick_Up" />
                <asp:BoundField HeaderText="Sign In Signature" DataField="Sign_In_Signature" />
                <asp:BoundField HeaderText="Time In" DataField="Time_In" />
                <asp:BoundField HeaderText="Sign Out Signature" DataField="Sign_Out_Signature" />
                <asp:BoundField HeaderText="Time Out" DataField="Time_Out" />
            </Columns>
        </asp:GridView>
                <asp:ObjectDataSource ID="PreSearchCamperDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CamperDataSetTableAdapters.CamperInfoTableTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int32" />
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
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Self_Sign" Type="String" />
                        <asp:Parameter Name="Approved_Pick_Up" Type="String" />
                        <asp:Parameter Name="Sign_In_Signature" Type="String" />
                        <asp:Parameter Name="Time_In" Type="String" />
                        <asp:Parameter Name="Sign_Out_SIgnature" Type="String" />
                        <asp:Parameter Name="Time_Out" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="CamperSearchDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="GetDataByFirstLast" TypeName="CamperDataSetTableAdapters.CamperInfoTableTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int32" />
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
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Self_Sign" Type="String" />
                        <asp:Parameter Name="Approved_Pick_Up" Type="String" />
                        <asp:Parameter Name="Sign_In_Signature" Type="String" />
                        <asp:Parameter Name="Time_In" Type="String" />
                        <asp:Parameter Name="Sign_Out_SIgnature" Type="String" />
                        <asp:Parameter Name="Time_Out" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="FirstNameSearchBox" Name="First_Name" PropertyName="Text" Type="String"/>
                        <asp:ControlParameter ControlID="LastNameSearchBox" Name="Last_Name" PropertyName="Text" Type="String"/>
                    </SelectParameters>
                </asp:ObjectDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
