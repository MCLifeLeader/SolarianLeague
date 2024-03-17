<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="CreateLottery.aspx.cs" Inherits="SimpleLottery.CreateLottery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
       Price Per Ticket:
       <asp:TextBox ID="txtPricePerTicket" runat="server" ValidationGroup="CreateLottery"></asp:TextBox>
       <asp:RequiredFieldValidator ID="rfvPricePerTicket" runat="server" ErrorMessage="*" ControlToValidate="txtPricePerTicket" ValidationGroup="CreateLottery"></asp:RequiredFieldValidator><br />
       Lottery Prize:
       <asp:TextBox ID="txtLotteryPrize" runat="server" ValidationGroup="CreateLottery"></asp:TextBox>
       <asp:RequiredFieldValidator ID="rfvLotteryPrize" runat="server" ErrorMessage="*" ControlToValidate="txtLotteryPrize" ValidationGroup="CreateLottery"></asp:RequiredFieldValidator><br />
       Date for Lottery:
       <asp:TextBox ID="txtLotteryDate" runat="server" ValidationGroup="CreateLottery"></asp:TextBox>
       <asp:RequiredFieldValidator ID="rfvLotteryDate" runat="server" ErrorMessage="*" ControlToValidate="txtLotteryDate" ValidationGroup="CreateLottery"></asp:RequiredFieldValidator><br />
      <br />
       <asp:Calendar ID="calLotteryDate" runat="server" OnSelectionChanged="calLotteryDate_SelectionChanged" BackColor="White" ForeColor="Blue"></asp:Calendar>
       <asp:Button ID="btnCreateLottery" runat="server" Text="Create" OnClick="btnCreateLottery_Click" ValidationGroup="CreateLottery" />
   </div>
</asp:Content>
