<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="Default.aspx.cs" Inherits="SimpleLottery._Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <asp:HyperLink ID="lnkWinningNumber" runat="server">Winning Number</asp:HyperLink><br />
   <asp:HyperLink ID="lnkPreviousWinners" runat="server">Previous Lottery Winners</asp:HyperLink><br />
   <asp:HyperLink ID="lnkLogin" runat="server">Admin Login</asp:HyperLink>
   <hr />
   <div style="margin-left: 40px; text-align: left;">
      <p style="text-align: center">
         <strong><span style="font-size: 1.4em; color: royalblue">Be supportive of the Solarian League<br />
         </span><span style="color: snow">Get a Lottery Ticket Today!<br />
         </span></strong>
      </p><br /><br />
      <p>
         Email Gold to Dody with the subject of: "Lottery Ticket Purchase".<br />
         Then attach the amount of gold desired for each ticket you want to purchase.</p>
      <span style="background-color: black; color: #ffffff;">Lottery Date: </span>
      <asp:Label ID="lblCurrentLottery" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
      Lottery Prize:
      <asp:Label ID="lblLotteryPrize" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
      <span style="background-color: black; color: #ffffff;">Total Lottery Tickets Sold:
      </span>
      <asp:Label ID="lblTotalNumbers" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
      <span style="background-color: black; color: #ffffff;">Current Players In Lottery:
      </span>
      <br />
      <br />
      <asp:Literal ID="litPlayersInLottery" runat="server"></asp:Literal><span style="background-color: black;
         color: #ffffff;"></span>
      <br />
      <br />
   </div>
</asp:Content>
