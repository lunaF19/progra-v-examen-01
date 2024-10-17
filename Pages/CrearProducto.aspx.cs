 using Examen01_PrograV.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Examen01_PrograV.Data;

namespace Examen01_PrograV.Pages
{
    public partial class CrearProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessageError.Text = "";
            if (txtNombreProducto.Text.Length < 1)
            {
                lblMessageError.Text = "El nombre debe ir con un valor";
                return;
            }


            if (txtCanitdad.Text.Length < 1)
            {
                lblMessageError.Text = "La cantidad debe ir con un valor";
                return;
            }

            if (txtPrecioVenta.Text.Length < 1)
            {
                lblMessageError.Text = "El precio venta debe ir con un valor";
                return;
            }
            
            try
            {
                Producto producto = new Producto();

                producto.nombre = txtNombreProducto.Text;
                producto.cantidad = Convert.ToInt16(txtCanitdad.Text);
                producto.precioUnitario = Convert.ToDecimal(txtPrecioVenta.Text);
                producto.fechaRegistro = DateTime.Now;

                PV_Examen01Entities dbExamen01Entities = new PV_Examen01Entities();
                dbExamen01Entities.spCrearProducto(producto.nombre, producto.cantidad, producto.precioUnitario, producto.fechaRegistro);

                Response.Redirect("/Pages/Mensaje");

            }
            catch (Exception ex)
            {
                lblMessageError.Text = ex.ToString();
                return;
            }
            
           

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/ListaProductos");
        }
    }
}