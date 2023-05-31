<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="YemekTarifiApp.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <div class="auto-style4">
            <strong>HAKKIMIZDA</strong></div>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Resimler/istockphoto-1363251549-2048x2048.jpg" Width="450px" />
    </p>
</asp:Content>
