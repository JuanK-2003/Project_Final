<%@ Page Title="LogIn" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Final.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Height="300px" Width="600px" CssClass="btn-info" Font-Bold="True" ForeColor="Black">
        <LoginButtonStyle Font-Bold="True" Font-Italic="False" ForeColor="Red" />
</asp:Login>
</asp:Content>
