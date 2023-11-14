package com.octest.servlet;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.mongodb.client.AggregateIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;
import com.octest.clas.*;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

/**
 * Servlet implementation class Reserver
 */
public class Reserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reserver() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rid = request.getParameter("reservationId");
		
		  MongoDBConnection connection = new MongoDBConnection();
	        MongoDatabase database = connection.getDatabase();
	        MongoCollection<Document> voitureCollection = database.getCollection("Voiture");

	        Bson filter = Filters.eq("_id", new ObjectId(rid));

	        Document reservationId = voitureCollection.find(filter).first();

	     if (reservationId != null) {
	    	 request.setAttribute("reservationId", reservationId);
	    	 System.out.print("llllll"+reservationId);
	     } else {
	         System.out.print("nooooo mabriiiiitch");
	     }

	     

		
		
		
		ClientCrud client = new ClientCrud();
		List<Document> listclient = client.afficher();
		
		request.setAttribute("listClient", listclient);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/FormulaireReservation.jsp");
	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
