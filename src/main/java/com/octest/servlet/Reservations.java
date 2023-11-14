package com.octest.servlet;
import com.mongodb.client.AggregateIterable;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;
import com.octest.clas.MongoDBConnection;

import org.bson.Document;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Servlet implementation class Reservations
 */
public class Reservations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reservations() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MongoDBConnection connection = new MongoDBConnection();
        MongoDatabase database = connection.getDatabase();
        MongoCollection<Document> reservationCollection = database.getCollection("Reservation");
        MongoCollection<Document> voitureCollection = database.getCollection("Voiture");

        List<Document> reservations = new ArrayList<>();

        AggregateIterable<Document> result = reservationCollection.aggregate(Arrays.asList(
            Aggregates.lookup("Voiture", "voitureId", "_id", "voiture")
        ));

        try (MongoCursor<Document> iterator = result.iterator()) {
            while (iterator.hasNext()) {
                Document reservation = iterator.next();
                reservations.add(reservation);
                
                System.out.print("Hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" + reservation);
            }
        }

        // Ajouter la liste des réservations à l'attribut de la requête
        
        request.setAttribute("reservations", reservations);
        // Redirection vers la page JSP
        request.getRequestDispatcher("/WEB-INF/Reservations.jsp").forward(request, response);
    }

//		    MongoCollection<Document> voitureCollection = database.getCollection("Voiture");
//		    MongoCollection<Document> reservationCollection = database.getCollection("Reservation");
//
//		    FindIterable<Document> result = voitureCollection.find(Filters.eq("estReservee", true));
//
//		    List<Document> voituresReservees = new ArrayList<>();
//		    try (MongoCursor<Document> iterator = result.iterator()) {
//		        while (iterator.hasNext()) {
//		            Document voiture = iterator.next();
//		            String matricule = voiture.getString("Matricule");
//
//		            FindIterable<Document> reservationResult = reservationCollection.find(Filters.eq("Matricule", matricule));
//
//		            List<Document> reservations = new ArrayList<>();
//		            try (MongoCursor<Document> reservationIterator = reservationResult.iterator()) {
//		                while (reservationIterator.hasNext()) {
//		                    Document reservation = reservationIterator.next();
//		                    reservations.add(reservation);
//		                }
//		            }
//
//		            voiture.append("reservations", reservations);
//
//		            voituresReservees.add(voiture);
//		        }
//		    }

		  // System.out.print("Caaaaaaaaaaaaaaaaaars"+voituresReservees);

		   
			
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
