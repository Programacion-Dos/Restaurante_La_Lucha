<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Restaurante.ListaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="col-xs-12 col-sm-9">
        <h2>Bienvenido cliente </h2>
        @* Hamburguesas*@
        <a name="tabla1"></a>
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    Hamburguesas
                </th>
            </tr>
           <%
               ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
               ProductosDS.ProductoDataTable tabla = adaptador.MostrarProductos();

               foreach (ProductosDS.ProductoRow filas in tabla)
               {
                   if (filas.IdTipoProducto == 1)
                   {

                   %>
                    
            <tr>
               
                <td>
                   
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre:      <b><%Response.Write(filas.Nombre); %></b></h5>
                    <p> Descripcion: <b><%Response.Write(filas.Descripcion); %></b></p>
                    <p> Precio:      <b>$ <%Response.Write(filas.Precio); %></b></p>
                    <asp:Button ID="Button1" runat="server" Text="Agregar" class="btn btn-default"/>
                    

                </td>
                <td>
                    <img src="assets/images/<%Response.Write(filas.imagen); %>" alt="" width="213" height="194" />
                </td>
                
            </tr>
            <%}
                }%>
            
        </table>
        <a name="tabla2"></a>
        @* Complementos *@
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    Complementos
                </th>
            </tr>
            
            <%
               

               foreach (ProductosDS.ProductoRow filas in tabla)
               {
                   if (filas.IdTipoProducto == 2)
                   {

                   %>
                    
            <tr>
               
                <td>
                   
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre:      <b><%Response.Write(filas.Nombre); %></b></h5>
                    <p> Descripcion: <b><%Response.Write(filas.Descripcion); %></b></p>
                    <p> Precio:      <b>$ <%Response.Write(filas.Precio); %></b></p>
                    <asp:Button ID="Button2" runat="server" Text="Agregar" class="btn btn-default"/>
                    

                </td>
                <td>
                    <img src="assets/images/<%Response.Write(filas.imagen); %>" alt="" width="213" height="194" />
                </td>
                
            </tr>
            <%}
                }%>
          
        </table>

        <a name="tabla3"> </a>
        @* Combo *@
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    Combos
                </th>
            </tr>
           
            <%
               foreach (ProductosDS.ProductoRow filas in tabla)
               {
                   if (filas.IdTipoProducto == 3)
                   {

                   %>
                    
            <tr>
               
                <td>
                   
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre:      <b><%Response.Write(filas.Nombre); %></b></h5>
                    <p> Descripcion: <b><%Response.Write(filas.Descripcion); %></b></p>
                    <p> Precio:      <b>$ <%Response.Write(filas.Precio); %></b></p>
                    <asp:Button ID="Button3" runat="server" Text="Agregar" class="btn btn-default"/>
                    

                </td>
                <td>
                    <img src="assets/images/<%Response.Write(filas.imagen); %>" alt="" width="213" height="194" />
                </td>
                
            </tr>
            <%}
                }%>
            
        </table>
    </div><!--/.col-xs-12.col-sm-9-->
    <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
        <table class="table">
            <tr>
                <th>
                   Producto.Nombre)
                </th>
                <th>
                    Opciones
                </th>
                <th></th>
            </tr>
           
            <tr>
                <td>
                   Producto.Nombre
                </td>
                <td>
                   Borrar
                </td>
            </tr>
            
        </table>
        <input type="submit" value="Detalle" class="btn btn-default" />
   
        <input type="submit" value="Siguiente" class="btn btn-default" />
      
    </div>
</asp:Content>
