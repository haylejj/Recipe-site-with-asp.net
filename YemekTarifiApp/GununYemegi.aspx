<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiApp.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style5 {
            text-align: left;
            height: 31px;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style8 {
            font-size: large;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <div class="auto-style7">
                                            <strong>&nbsp;GÜNÜN YEMEĞİ</strong></div>
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style2"><strong>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style8"></asp:Label>
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                    <strong>MALZEMELER</strong>:<asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                                    <br />
                                                    <table class="auto-style1">
                                                        <tr>
                                                            <td>
                                                                <strong>TARİF</strong>:<asp:Label ID="Label10" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Image1" runat="server" Height="216px" Width="415px" ImageUrl="~/Resimler/shish-kebab-2438669_1280.jpg" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <strong>PUAN:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <strong>TARİH</strong>:<asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Content>


