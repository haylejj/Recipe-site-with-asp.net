<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiApp.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: left;
    }
    .auto-style10 {
        text-align: center;
    }
        .auto-style11 {
            width: 21px;
            text-align: left;
        }
        .auto-style12 {
            width: 19px;
            text-align: left;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style16 {
            text-align: left;
            color: #000000;
            width: 585px;
        }
    .auto-style9 {
        font-size: large;
    }
        .auto-style15 {
            text-align: right;
            width: 373px;
        }
        .auto-style14 {
            font-size: small;
        }
    .auto-style8 {
        text-align: right;
    }
        .auto-style17 {
            width: 168px;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style19 {
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC">
        <div class="auto-style10">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                        </strong></td>
                    <td><span class="auto-style13"><strong>KATEGORİ</strong></span> <span class="auto-style13"><strong>LİSTESİ</strong></span></td>
                </tr>
            </table>
        </div>
</asp:Panel>
    <asp:Panel runat="server">
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="449px">
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style16">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("CategoryAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <a href="Kategoriler.aspx?CategoryId=<%#Eval("CategoryId")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/clear.png" Width="30px" CssClass="auto-style14" /></a>
                            </td>
                            <td class="auto-style8">
                                <a href="KategoriAdminDetay.aspx?CategoryId=<%#Eval("CategoryId")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/updated.png" Width="30px" CssClass="auto-style14" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" style="background-color:#CCCCCC; margin-top:15px;">
        <div class="auto-style10">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                        </strong></td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                        </strong></td>
                    <td><span class="auto-style13"><strong>KATEGORİ</strong></span> <span class="auto-style13"><strong>EKLEME</strong></span></td>
                </tr>
            </table>
        </div>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="164px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btn_kategoriekle" runat="server" CssClass="auto-style18" Text="Ekle" Width="110px" OnClick="btn_kategoriekle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
