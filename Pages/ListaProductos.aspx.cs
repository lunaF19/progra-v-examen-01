using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Examen01_PrograV.Data;


namespace Examen01_PrograV.Pages
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDataProducts();
            }
            

        }


        /// <summary>
        /// Carga los datos para enlistarlos en el GridView
        /// </summary>
        private void LoadDataProducts()
        {
            try
            {
                PV_Examen01Entities dbExamen01Entities = new PV_Examen01Entities();

                gvProducts.DataSource = dbExamen01Entities.spConsultarTodosLosProductos();
                gvProducts.DataBind();
            }
            catch
            {
                throw;
            }
        }


        protected void gvProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProducts.PageIndex = e.NewPageIndex;
            LoadDataProducts();
        }

        protected void gvProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Obtener el valor de "precioUnitario" desde el DataItem
                decimal precioUnitario = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "precioUnitario"));

                int cantidad = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "cantidad"));

                // Obtener el control Label donde se mostrará el costo total
                Label lblCostoTotal = (Label)e.Row.FindControl("costoTotal");

                Label lblEstado = (Label)e.Row.FindControl("estado");
            
                if (cantidad > 0)
                {
                    lblEstado.Text = "Disponible";
                } else
                {
                    lblEstado.Text = "No Disponible";
                }

                lblCostoTotal.Text = (precioUnitario * cantidad).ToString("C");  // Multiplicar o cambiar el valor

                
            }
        }

        protected void btnGoToCreateProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/CrearProducto");
        }
    }
}