using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WBL;

namespace WebApp.Pages.Orden
{
    public class EditModel : PageModel
    {
        private readonly IOrdenService OrdenService;
        private readonly IProductoService ProductoService;

        public EditModel(IOrdenService OrdenService, IProductoService ProductoService)
        {
            this.OrdenService = OrdenService;
            this.ProductoService = ProductoService;
        }

        [BindProperty]
        [FromBody]

        public OrdenEntity Entity { get; set; } = new OrdenEntity();

        public IEnumerable<ProductoEntity> PLista { get; set; } = new List<ProductoEntity>();

        [BindProperty(SupportsGet = true)]
        public int? Id { get; set; }

        public async Task<IActionResult> OnGet()
        {
            try
            {
                if (Id.HasValue)
                {
                    Entity = await OrdenService.GetById(new() { IdOrden = Id });
                }

                PLista = await ProductoService.GetLista();

                return Page();
            }
            catch (Exception ex)
            {

                return Content(ex.Message);
            }


        }

        public async Task<IActionResult> OnPost()
        {

            try
            {
                var result = new DBEntity();
                if (Entity.IdOrden.HasValue)
                {
                    result = await OrdenService.Update(Entity);


                }
                else
                {
                    result = await OrdenService.Create(Entity);

                }

                return new JsonResult(result);
            }
            catch (Exception ex)
            {

                return new JsonResult(new DBEntity { CodeError = ex.HResult, MsgError = ex.Message });
            }


        }

    }
}
