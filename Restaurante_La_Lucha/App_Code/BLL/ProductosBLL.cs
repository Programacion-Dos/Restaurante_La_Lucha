using Restaurante.App_Code.DAL;
using Restaurante.App_Code.DAL.ProductosDSTableAdapters;
using Restaurante.App_Code.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurante.App_Code.BLL
{
    public class ProductosBLL
    {

        public static List<ClsProductos> MostrarTodosProductos()
        {
            List<ClsProductos> listarProductos = new List<ClsProductos>();
            ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
            ProductosDS.ProductoDataTable tabla = adaptador.MostrarProductos();

            foreach(ProductosDS.ProductoRow filas in tabla )
            {
                listarProductos.Add(filaDTOProducto(filas));
            }

            return listarProductos;
        }

        private static ClsProductos filaDTOProducto(ProductosDS.ProductoRow filas)
        {
            ClsProductos objProducto = new ClsProductos();

            objProducto.nombre = filas.Nombre;
            objProducto.idTipoProduc = filas.IdTipoProducto;
            objProducto.precio = filas.Precio;
            objProducto.descripcion = filas.Descripcion;
            objProducto.imagen = filas.imagen;

            return objProducto;
        }

        public static ClsProductos MostrarProductoID(int id)
        {
            ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
            ProductosDS.ProductoDataTable tabla = adaptador.MostrarProductoID(id);

            if(tabla.Rows.Count == 0)
            {
                return null;
            }
            return filaDTOProducto(tabla[0]);

        }

        public void InsertarProducto(string Nombre, int IdTipoProducto, decimal Precio, string Descripcion, string imagen)
        {
            ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
            adaptador.Insert(Nombre, IdTipoProducto, Precio, Descripcion, imagen);
        }

        public void EliminarProducto(int id)
        {
            ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
            adaptador.Delete(id);
        }

        public void ActualizarProducto(int id, string Nombre, int IdTipoProducto, decimal Precio, string Descripcion, string imagen)
        {
            ProductosDSTableAdapters.ProductoTableAdapter adaptador = new ProductosDSTableAdapters.ProductoTableAdapter();
            adaptador.Update(Nombre, IdTipoProducto, Precio, Descripcion, imagen, id);
        }
    }
}