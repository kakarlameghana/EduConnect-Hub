/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Files;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Kakarla Meghana
 */
@WebServlet(name = "facultyreg", urlPatterns = {"/facultyreg"})
@MultipartConfig
public class facultyreg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String name = request.getParameter("name");
            String designation = request.getParameter("Designation");
            String reg = request.getParameter("regno");
            String uname = request.getParameter("email");
            String ph = request.getParameter("Phno");
            String pwd = request.getParameter("pwd");
            String branch = request.getParameter("Branch");
            String address = request.getParameter("Address"); 
            Part filepart = request.getPart("file");   
            String fileName = filepart.getSubmittedFileName();
            InputStream pdf;
            pdf = filepart.getInputStream();
//            byte[] pdf = new byte[pdfFileBody.available()];
//             pdfFileBody.read(pdf);
            out.println(filepart);
            try{
            DBconnection db = new DBconnection();
            Connection con = db.getCon();
            PreparedStatement st = con.prepareStatement("insert into facultyreg(NAME,DESIGNATION,REGNO,USERNAME,PHONENO,PASSWORD,BRANCH,ADDRESS,FILENAME,PROFILE) values(?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,name);
            st.setString(2,designation);
            st.setString(3,reg);
            st.setString(4,uname);
            st.setString(5,ph);
            st.setString(6,pwd);
            st.setString(7,branch);
            st.setString(8,address);
            st.setString(9,fileName);
            st.setBlob(10,pdf);
            st.executeUpdate();
            
            }
            catch(SQLException ex){
                out.println(ex.getMessage());
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + temtn on the left to edit the code.">
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
