<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server">Фамилия</asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server">Номер</asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server">Адрес</asp:TextBox>
            </p>
            <p>
                <asp:ListBox ID="ListBox1" runat="server" Height="270px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="383px"></asp:ListBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="203px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="201px" style="margin-left: 20">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                &nbsp;</p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button1" style="width: 179px" runat="server" Text="Добавить" OnClick="Button1_Click"/>
 
                <asp:Button ID="Button2" style="width: 179px" runat="server" Text="Удалить" OnClick="Button2_Click"/></p>
            <p>
                &nbsp;</p>
                <asp:Table ID="Table3" runat="server" Width="550px" ViewStateMode="Disabled" OnPreRender="Table3_PreRender">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Индекс</asp:TableCell>
                        <asp:TableCell runat="server">Фамилия и Имя</asp:TableCell>
                        <asp:TableCell runat="server">Телефон</asp:TableCell>
                        <asp:TableCell runat="server">Адрес</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                    </asp:TableRow>
                </asp:Table>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </div>
   
</asp:Content>

