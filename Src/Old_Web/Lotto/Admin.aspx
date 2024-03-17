<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="Admin.aspx.cs" Inherits="SimpleLottery.Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      <asp:HyperLink ID="lnkCreateLottery" runat="server">Create Lottery</asp:HyperLink><br />
      <asp:HyperLink ID="lnkPurchaseTicket" runat="server">Purchase Tickets</asp:HyperLink><br />
      <asp:HyperLink ID="lnkWinningNumber" runat="server">Assign Winning Number</asp:HyperLink><br />
      <hr />
      Lottery Date:
      <asp:Label ID="lblCurrentLottery" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
      <asp:Literal id="litPlayersInLottery" runat="server"></asp:Literal><br />
   </div>
</asp:Content>
