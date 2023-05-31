<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiApp.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 86px;
        }
    .auto-style4 {
        margin-left: 38px;
        background-color: #CC9900;
    }
    .auto-style5 {
        width: 86px;
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextTarif" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yapılış:</td>
            <td>
                <asp:TextBox ID="TextYapılıs" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUploadTarif" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Öneren:</td>
            <td>
                <asp:TextBox ID="TextTarifOner" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="45px" Text="Tarif Öner" Width="188px" OnClick="Button1_Click" />
            </td>
        </tr>
        
    </table>
</asp:Content>
