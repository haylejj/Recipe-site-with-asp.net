<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegi.aspx.cs" Inherits="YemekTarifiApp.AdminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style10 {
        text-align: center;
    }
        .auto-style12 {
            width: 19px;
            text-align: left;
        }
        .auto-style19 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style11 {
            width: 21px;
            text-align: left;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style20 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC">
        <div class="auto-style10">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                        </strong></td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                        </strong></td>
                    <td class="auto-style13"><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="449px" >
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style16">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <a href='AdminYemekGuncelle.aspx?YemekId=<%#Eval("YemekId")%>'>
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/Icons/check.png" Width="30px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    
    
</asp:Content>
