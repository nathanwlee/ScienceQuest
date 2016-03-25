<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CamperSignInSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Science Quest Camper System Website</h1>
        <p class="lead">
            <asp:Image ID="ScienceQuestLogo" runat="server" Height="170px" Width="80%" ImageUrl="~/Images/ScienceQuestLogo.png" style="margin-left: 38px" />
        </p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    You are not logged in. Click the sign in to log in with your username and password
                </AnonymousTemplate>
                <LoggedInTemplate>
                    Welcome! You are logged in,
                    <asp:LoginName ID="LoginName1" runat="server" />
                    &nbsp;
                </LoggedInTemplate>
            </asp:LoginView>
            <h2>
                <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" ForeColor="Black" />
            </h2>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Login Here" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Member.aspx" Visible="False">Members Only Page</asp:HyperLink>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Camper Search</h2>
            <p>
                <asp:Button ID="Button2" runat="server" Text="Search Database Here" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Database Modification</h2>
            <p>
                <asp:Button ID="Button3" runat="server" Text="Upload Files Here" />
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
