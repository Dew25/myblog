/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Articles;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.ArticlesFacade;
import session.UsersManager;

/**
 *
 * @author jvm
 */
@WebServlet(name = "web_controller", loadOnStartup = 1, urlPatterns = {"/article", "/registration"})
public class web_controller extends HttpServlet {

    @EJB
    ArticlesFacade articlesFacade;
    @EJB
    UsersManager userManager;

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("articles", articlesFacade.findAll());
    }

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
        String userPath = request.getServletPath();
        if ("/article".equals(userPath)) {
            // TODO: обработка запроса статьи
            String id = null;
            Enumeration<String> params = request.getParameterNames();
            while (params.hasMoreElements()) {
                String param = params.nextElement();
                id = "id".equals(param) ? request.getParameter(param) : id;
            }
            try {
                Articles article = articlesFacade.find(Integer.parseInt(id));
                request.setAttribute("article", article);
            } catch (NumberFormatException e) {
                System.out.println("Произошла ошибка при выборе просмотка статьи");

            }
        } else if ("/registration".equals(userPath)) {
            //TODO: обработка запроса регистрации
            String login = null, pass = null, pass2 = null;
            HashMap<String, String[]> contacts = new HashMap<>();
            Enumeration<String> parameters = request.getParameterNames();
            while (parameters.hasMoreElements()) {
                String parameter = parameters.nextElement();
                switch (parameter) {
                    case "login":
                        login = request.getParameter(parameter);
                        break;
                    case "password":
                        pass = request.getParameter("password");
                        break;
                    case "password2":
                        pass2 = request.getParameter("password2");
                        break;
                    default:
                        contacts.put(parameter, request.getParameterValues(parameter));
                        break;
                }
            }
            Integer codeOperation = userManager.addUser(login, pass, pass2, contacts);
            if (codeOperation != 0) {
                request.setAttribute("notif", "Код завершения операции: " + codeOperation);
            } else {
                request.setAttribute("notif", "Пользователь " + login + " успешно создан!");
            }
        }

        request.getRequestDispatcher("/WEB-INF/views" + userPath + ".jsp").forward(request, response);
    }

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
