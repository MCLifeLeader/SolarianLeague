<%@ Page Language="C#" MasterPageFile="~/LotteryMain.Master" AutoEventWireup="true"
   Codebehind="AssignWinningNumber.aspx.cs" Inherits="SimpleLottery.AssignWinningNumber"
   Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPageContent" runat="server">
   <div style="margin-left: 40px;">
      Winning Number:
      <asp:TextBox ID="txtAssignWinningNumber" runat="server"></asp:TextBox><br />
      <asp:Button ID="btnWinningNumber" runat="server" Text="Save Winning Number" OnClick="btnWinningNumber_Click" />
   </div>
</asp:Content>
