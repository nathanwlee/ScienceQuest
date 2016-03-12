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
                <asp:Button ID="SearchButton" runat="server" style="margin-left: 8px" Text="Search" />
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
