package com.octest.servlet;

import jakarta.servlet.RequestDispatcher;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoDatabase;

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
import com.octest.clas.*;

/**
 * Servlet implementation class ListReservation
 */
public class ListReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoDBConnection mongoDBConnection = new MongoDBConnection();

		// TODO Auto-generated method stub
		 MongoDatabase database = mongoDBConnection.getDatabase();
         MongoCollection<Document> collection = database.getCollection("Reservation");
             
      
       	FindIterable<Document> documents = collection.find();
    	   List<Document> reservations = new ArrayList<>();

       	    
            
		            try (MongoCursor<Document> reservationIterator = documents.iterator()) {
		                while (reservationIterator.hasNext()) {
		                    Document reservation = reservationIterator.next();
		                    reservations.add(reservation);
		                }
		            }
		request.setAttribute("listReservation", reservations);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ReservationList.jsp");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
