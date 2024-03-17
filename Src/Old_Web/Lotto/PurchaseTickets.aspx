<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="PurchaseTickets.aspx.cs" Inherits="SimpleLottery.PurchaseTickets"
   Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      Find Exisiting Player<br />
      <asp:ListBox ID="lstbxPlayerName" runat="server" OnSelectedIndexChanged="lstbxPlayerName_SelectedIndexChanged" AutoPostBack="True" Height="160px" Width="312px"></asp:ListBox><br />
      Player:
      <asp:TextBox ID="txtPlayerName" runat="server" ValidationGroup="PurchaseTicket" Width="252px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="rfvPlayerName" runat="server" ControlToValidate="txtPlayerName"
         ErrorMessage="*" ValidationGroup="PurchaseTicket"></asp:RequiredFieldValidator><br />
      Number of Tickets:
      <asp:TextBox ID="txtNumberOfTickets" runat="server" ValidationGroup="PurchaseTicket" Width="165px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="rfvNumberOfTickets" runat="server" ControlToValidate="txtNumberOfTickets"
         ErrorMessage="*" ValidationGroup="PurchaseTicket"></asp:RequiredFieldValidator><br />
      <asp:Button ID="btnPurchaseTickets" runat="server" OnClick="btnPurchaseTickets_Click"
         Text="Purchase Tickets" ValidationGroup="PurchaseTicket" /></div>
</asp:Content>
