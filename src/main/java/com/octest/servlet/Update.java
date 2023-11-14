package com.octest.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.octest.clas.MongoDBConnection;
import com.octest.clas.PasswordUpdateService;

/**
 * Servlet implementation class Update
 */
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.getRequestDispatcher("/WEB-INF/PasswordUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String email = request.getParameter("email");
	        String currentPassword = request.getParameter("currentPassword");
	        String newPassword = request.getParameter("newPassword");

	        PasswordUpdateService passwordUpdateService = new PasswordUpdateService();
	        boolean success = passwordUpdateService.updatePassword(email, currentPassword, newPassword);

	        if (success) {
	            request.setAttribute("message", "Mot de passe mis à jour avec succès");
	        } else {
	            request.setAttribute("errorMessage", "Échec de la mise à jour du mot de passe");
	        }

	        request.getRequestDispatcher("/WEB-INF/PasswordUpdate.jsp").forward(request, response);
	    }
	}


