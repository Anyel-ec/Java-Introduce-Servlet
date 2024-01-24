package com.car.controller;

import com.car.dao.AutoDaoImplement;
import com.car.idao.IAutoDAO;
import com.car.model.Auto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "servletController", value = "/servletController")
public class AutoServletController extends HttpServlet {
    private String message;
    public void init() {
        message = "Hello World! by Anyel";
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        IAutoDAO oAutoDAO = new AutoDaoImplement();
        String opcion = request.getParameter("opcion");
        if (opcion.equals("registro")){
            RequestDispatcher rd = request.getRequestDispatcher("crear.jsp");
            rd.forward(request, response);
        }else if (opcion.equals("eliminar")){
            oAutoDAO.delete(request.getParameter("placa"));
            List<Auto> listaAutos = oAutoDAO.get();
            request.setAttribute("autos", listaAutos);

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);

        }else if (opcion.equals("actualizar")){
            Auto oAuto = oAutoDAO.getAuto(request.getParameter("placa"));
            request.setAttribute("auto", oAuto);
            RequestDispatcher rd = request.getRequestDispatcher("actualizar.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String opcion = req.getParameter("opcion");
        IAutoDAO oAutoDao = new AutoDaoImplement();
        if (opcion.equals("crear")) {
            Auto oAuto = new Auto();
            oAuto.setMarca(req.getParameter("marca"));
            oAuto.setPlaca(req.getParameter("placa"));
            oAuto.setModelo(req.getParameter("modelo"));
            oAuto.setCilindraje(req.getParameter("cilindraje"));
            oAuto.setAnio(req.getParameter("anio"));
            oAuto.setConsumo(req.getParameter("consumo"));
            // agregar auto
            oAutoDao.add(oAuto);
            List<Auto> listaAutos = oAutoDao.get();
            req.setAttribute("autos", listaAutos);

            RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
            rd.forward(req, resp);
        }else if (opcion.equals("actualizar")){
            IAutoDAO oAutoDao2 = new AutoDaoImplement();
            // actualizar auto
            Auto oAuto = new Auto();
            oAuto.setMarca(req.getParameter("marca"));
            oAuto.setPlaca(req.getParameter("placa"));
            oAuto.setModelo(req.getParameter("modelo"));
            oAuto.setCilindraje(req.getParameter("cilindraje"));
            oAuto.setAnio(req.getParameter("anio"));
            oAuto.setConsumo(req.getParameter("consumo"));

            oAutoDao2.update(oAuto);
            List<Auto> listaAutos = oAutoDao2.get();
            req.setAttribute("autos", listaAutos);

            RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
            rd.forward(req, resp);
        }
    }
    public void destroy() {
    }
}