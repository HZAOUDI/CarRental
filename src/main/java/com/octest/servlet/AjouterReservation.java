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
import org.bson.types.ObjectId;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.octest.clas.MongoDBConnection;

/**
 * Servlet implementation class AjouterReservation
 */
public class AjouterReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userStartDate = request.getParameter("date_debut");
        String userEndDate = request.getParameter("date_fin");

        MongoDBConnection connection = new MongoDBConnection();
        MongoDatabase database = connection.getDatabase();
        MongoCollection<Document> voitureCollection = database.getCollection("Voiture");
        MongoCollection<Document> reservationCollection = database.getCollection("Reservation");

        Document query = new Document();
        List<Document> orConditions = new ArrayList<>();

        List<Document> reserv = new ArrayList<>();


Document condition1 = new Document("DateDebut", userStartDate)
        .append("DateFin", userEndDate);
orConditions.add(condition1);

Document condition2 = new Document("DateDebut", new Document("$lt", userStartDate))
        .append("DateFin", new Document("$gt", userStartDate));
orConditions.add(condition2);

Document condition3 = new Document("DateDebut", new Document("$lt", userEndDate))
        .append("DateFin", new Document("$gt", userEndDate));
orConditions.add(condition3);

Document nestedQuery = new Document("$or", orConditions);
List<ObjectId> reservedVoitureIds = reservationCollection.distinct("voitureId", nestedQuery, ObjectId.class).into(new ArrayList<>());
query.append("_id", new Document("$nin", reservedVoitureIds));

FindIterable<Document> availableCars = voitureCollection.find(query);
try (MongoCursor<Document> iterator = availableCars.iterator()) {
    while (iterator.hasNext()) {
        Document reservation = iterator.next();
       
        reserv.add(reservation);
        System.out.print("reservatiohhhhhhhhhhhhhhhhhhhhhhhhn" + reservation);
  
    }
}
//request.setAttribute("reservation", availableCarsList);
request.setAttribute("reserv",reserv);
     System.out.print("\nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn\n"+availableCars);
    
        request.getRequestDispatcher("/WEB-INF/AfficherDispo.jsp").forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
