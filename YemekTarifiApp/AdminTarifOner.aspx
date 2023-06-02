<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOner.aspx.cs" Inherits="YemekTarifiApp.AdminTarifÖner" %>
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
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"    />
                        </strong></td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"     />
                        </strong></td>
                    <td class="auto-style13">ONAYSIZ TARİF LİSTESİ</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
                <asp:DataList ID="DataList1" runat="server" Width="449px">
                    <ItemTemplate>
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style16">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style9" style="font-size: x-large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style20">
                                    <a href="AdminTarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"><asp:Image ID="Image4" runat="server" Height="37px" ImageUrl="~/Icons/check.png" Width="43px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </asp:Panel>
    <div>

    </div>
    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC">
        <div class="auto-style10">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"     />
                        </strong></td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"      />
                        </strong></td>
                    <td class="auto-style13">ONAYLI TARİF LİSTESİ</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
                <asp:DataList ID="DataList2" runat="server" Width="449px">
                    <ItemTemplate>
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style16">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style9" style="font-size: x-large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style20">
                                    <a href="AdminTarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"><asp:Image ID="Image4" runat="server" Height="37px" ImageUrl="~/Icons/check.png" Width="43px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </asp:Panel>
</asp:Content>
