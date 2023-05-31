<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiApp.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 160px;
    }
    .auto-style4 {
        font-size: large;
        background-color: #CC9900;
    }
    .auto-style5 {
        width: 160px;
        text-align: right;
    }
    .auto-style6 {
        color: #CC9900;
        text-align: center;
    }
    .auto-style7 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6" colspan="2"><strong><span class="auto-style7">MESAJ</span> <span class="auto-style7">PANELİ</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="150px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Gönder" Width="125px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
