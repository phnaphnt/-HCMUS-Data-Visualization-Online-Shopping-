using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShopping.Models;

namespace OnlineShopping.Controllers
{
    public class ProductController : Controller
    {
        HCMUS_OnlineShoppingEntities1 onlineShoppingEntities = new HCMUS_OnlineShoppingEntities1();
        // GET: Product
        public ActionResult Detail(string id)
        {
            var objProduct = onlineShoppingEntities.PRODUCTs.Where(n => n.ID == id).FirstOrDefault();
            return View(objProduct);
        }
    }
}