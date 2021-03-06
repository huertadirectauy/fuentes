﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Site.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View("../../Views/Usuario/Login");
        }

        public ActionResult Registrar()
        {
            return View("../../Views/Usuario/Registrar");
        }

        public ActionResult Tienda()
        {
            return View("../../Views/Tienda/ListadoProductos");
        }
                
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Carrito()
        {
            return View("../../Views/Tienda/Carrito");
        }
    }
}