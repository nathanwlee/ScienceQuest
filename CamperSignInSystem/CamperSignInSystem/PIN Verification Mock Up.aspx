<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PIN Verification Mock Up.aspx.cs" Inherits="CamperSignInSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Science Quest Camper System Website</h1>
        <p class="lead">
            <asp:Image ID="ScienceQuestLogo" runat="server" Height="170px" Width="80%" ImageUrl="~/Images/ScienceQuestLogo.png" style="margin-left: 38px" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 style="color: #000000">
                <a href="javascript:__doPostBack('LoginStatus1$ctl02','')"><span style="color: #000000">P</span></a>IN Verification for Sign-In / Sign-Out</h2>
            <p style="color: #000000">
                Please enter your unique PIN to complete the process</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="196px"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
        </div>
    </div>

</asp:Content>
