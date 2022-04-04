package com.dir;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registrationInput")
public class registrationInput extends HttpServlet {
    private static final long serialVersionUID = 1L;
    String name, address, email, password;
    int id;
    private static int idCounter = 0;

    public registrationInput() {
        super();
    }

    public static synchronized int createID() {
        return idCounter++;
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        name = request.getParameter("name");
        password = request.getParameter("password");
        address = request.getParameter("address");
        email = request.getParameter("email");
        response.setContentType("text/html");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefood","root","dips@20101999");
            PreparedStatement statement = connection.prepareStatement("insert into customer values(?,?,?,?,?)");
            id = createID();

            statement.setInt(1, id);
            statement.setString(2, name);
            statement.setString(3, email);
            statement.setString(4, password);
            statement.setString(5, address);

            int i = statement.executeUpdate();
            if(i>0) {
                response.sendRedirect("index.html");
            }
        } catch (Exception e2) {
            System.out.println(e2);
        }
        out.close();
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}

