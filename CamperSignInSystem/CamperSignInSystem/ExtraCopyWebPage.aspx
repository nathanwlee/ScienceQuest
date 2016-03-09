<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExtraCopyWebPage.aspx.cs" Inherits="CamperSignInSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Science Quest Camper System Website</h1>
        <p class="lead">
            <asp:Image ID="ScienceQuestLogo" runat="server" Height="170px" Width="80%" ImageUrl="~/Images/ScienceQuestLogo.png" style="margin-left: 38px" />
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="CamperSearchButton" runat="server" Text="Search" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Feature Idea - Have static buttons for options like sign in/out, and a table that autogenerates based on info found in </h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">This area could be for the data tables &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Login</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Sign Camper In and Out button area &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Undesignated Area</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
