/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.model.maytinh;

/**
 *
 * @author Administrator
 */
public class Controller extends HttpServlet {
    protected void processRequest(HttpServletRequest request, 
        HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String action = request.getParameter("action");
            String a = request.getParameter("txtSo1");
            String b = request.getParameter("txtSo2");
            int so1 = Integer.parseInt(a);
            int so2 = Integer.parseInt(b);
            if(action.equals("+")){                             
                maytinh tinh = new maytinh();
                out.write(so1+" + "+so2 + " = "+ tinh.cong(so1, so2));
            }else if(action.equals("-")){                        
                maytinh tinh = new maytinh();
                out.write(so1+" - "+so2 + " = "+ tinh.tru(so1, so2));
            }else if(action.equals("*")){                      
                maytinh tinh = new maytinh();
                out.write(so1+" * "+so2 + " = "+ tinh.nhan(so1, so2));
            }else if(action.equals("/")){                   
                maytinh tinh = new maytinh();
                out.write(so1+" / "+so2 + " = "+ tinh.chia(so1, so2));
            }          
        }catch(Exception e){
            e.printStackTrace();
        }      
    }
//...........
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
