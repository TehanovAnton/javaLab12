package com.example.Lab12_JSTL;

import classes.MessageList;

import java.io.*;
import java.util.ArrayList;
import javax.jms.Message;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        MessageList lst = new MessageList();
        request.setAttribute("lst", lst.msg);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    public void destroy() {
    }
}