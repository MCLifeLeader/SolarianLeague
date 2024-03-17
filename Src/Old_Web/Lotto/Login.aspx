<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="Login.aspx.cs" Inherits="SimpleLottery.Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      UserName:
      <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
      Password:
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
   </div>
</asp:Content>
