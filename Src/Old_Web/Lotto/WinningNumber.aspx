<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="WinningNumber.aspx.cs" Inherits="SimpleLottery.WinningNumber" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      Player: <asp:Label ID="lblPlayerName" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#C000C0"></asp:Label><br />
      Has the winning Number of : <asp:Label ID="lblWinningNumber" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#C000C0"></asp:Label><br />
   </div>
</asp:Content>
