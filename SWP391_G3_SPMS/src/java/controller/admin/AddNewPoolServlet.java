/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.PoolDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.LocalTime;
import model.Pool;

/**
 *
 * @author Lenovo
 */
@WebServlet(name="AddNewPoolServlet", urlPatterns={"/addPool"})
public class AddNewPoolServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNewPoolServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewPoolServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PoolDao dao = new PoolDao();
        Pool pool;
        String pool_name = request.getParameter("poolName");
        String pool_road = request.getParameter("poolRoad");
        String pool_addresss = request.getParameter("poolAddress");
        String max_slot_raw = request.getParameter("maxSlot");
        String open_time = request.getParameter("openTime");
        String close_time = request.getParameter("closeTime");
        String status = request.getParameter("poolStatus");
        LocalDate currentDate = LocalDate.now();
        LocalTime open,close;
        boolean pool_status;
        int max_slot;
        try {
            open = LocalTime.parse(open_time);
            close = LocalTime.parse(close_time);
            max_slot = Integer.parseInt(max_slot_raw);
            pool_status = Boolean.parseBoolean(status);
            pool = new Pool(0, pool_name, pool_road, pool_addresss, max_slot, open, close, pool_status, currentDate, null);
            dao.insertPool(pool);
            response.sendRedirect("poolmanagement");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
