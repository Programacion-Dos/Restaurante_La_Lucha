<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="MostrarProductos.aspx.cs" Inherits="Restaurante.MostrarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 13px;
            margin-right: 0;
            margin-top: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="odsProductos" Width="1260px">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="idTipoProduc" HeaderText="idTipoProduc" SortExpression="idTipoProduc" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="imagen" HeaderText="imagen" SortExpression="imagen" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsProductos" runat="server" SelectMethod="MostrarTodosProductos" TypeName="Restaurante.App_Code.BLL.ProductosBLL"></asp:ObjectDataSource>
    </div>
</asp:Content>
