<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiApp.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            height: 30px;
            background-color: #CC9900;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #CC3300;
        }
        .auto-style5 {
            background-color: #C0C0C0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><strong><a href="YemekDetay.aspx?YemekId=<%#Eval("YemekId")%>"></a>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%#Eval("YemekAd")%>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    <strong>-Puan:</strong><asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
