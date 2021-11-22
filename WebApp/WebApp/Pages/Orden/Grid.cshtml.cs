using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WBL;
using Entity;

namespace WebApp.Pages.Orden
{
    public class GridModel : PageModel
    {
        private readonly IOrdenService OrdenService;

        public GridModel(IOrdenService OrdenService)
        {
            this.OrdenService = OrdenService;
        }

        public IEnumerable<OrdenEntity> GridList { get; set; } = new List<OrdenEntity>();

        public async Task<IActionResult> OnGet()
        {

            try
            {
                GridList = (IEnumerable<OrdenEntity>)await OrdenService.Get();


                return Page();

            }
            catch (Exception ex)
            {

                return Content(ex.Message);
            }

        }

        public async Task<IActionResult> OnDeleteEliminar(int id)
        {

            try
            {
                var result = await OrdenService.Delete(new() { IdOrden = id });

                return new JsonResult(result);


            }
            catch (Exception ex)
            {

                return new JsonResult(new DBEntity { CodeError = ex.HResult, MsgError = ex.Message });
            }

        }









    }
}
