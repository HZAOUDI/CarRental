package com.octest.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.octest.clas.Voiture;
import com.octest.clas.ManagerCrud;
import com.octest.clas.VoitureCrud;


/**
 * Servlet implementation class ManagerCrud
 */
public class VoitureServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private VoitureCrud voitureCrud;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoitureServ() {
    	super();
        try {
			this.voitureCrud = new VoitureCrud();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getServletPath();
		System.out.println(action);
		switch(action){
			
			
			case "/Voiture/insert":
				insertManager(request,response);
			break;
			case "/Voiture/delete":
				DeletManager(request,response);
				break;
			case "/Voiture/Update":
				updateManager(request,response);
				break;
			default :
				afficher(request,response);
			
		}
		
		
	
		
	}

	public void insertManager(HttpServletRequest request, HttpServletResponse response) {
		String Matricule = request.getParameter("Matricule");
		String Modele = request.getParameter("Modèle");
		int Kilometrage = Integer.parseInt(request.getParameter("Kilométrage"));
		int Annee = Integer.parseInt(request.getParameter("Annee"));
		String Couleur = request.getParameter("Couleur");
		String Marque = request.getParameter("Marque");
		int prix = Integer.parseInt(request.getParameter("prix"));
		Voiture voiture = new Voiture(Matricule,Marque,Modele,Kilometrage,Annee,Couleur,prix);
		this.voitureCrud.insertVoiture(voiture);
		
		afficher(request , response);
	}
	
	public void afficher(HttpServletRequest request, HttpServletResponse response) {
		List<Document> listVoiture = this.voitureCrud.afficher();
		request.setAttribute("listVoiture", listVoiture);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/VoitureList.jsp");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	public void updateManager(HttpServletRequest request, HttpServletResponse response) {
		String Matricule = request.getParameter("Matricule");
		String Modele = request.getParameter("Modele");
		System.out.println("hna "+Modele);
		int Kilometrage = Integer.parseInt(request.getParameter("Kilometrage"));
		int Annee = Integer.parseInt(request.getParameter("Annee"));
		String Couleur = request.getParameter("Couleur");
		String Marque = request.getParameter("Marque");
		int prix = Integer.parseInt(request.getParameter("prix"));

		Voiture Newvoiture = new Voiture(Matricule,Marque,Modele,Kilometrage,Annee,Couleur,prix);
		this.voitureCrud.UpdateVoiture(Newvoiture);
		afficher(request,response);
	}
	public void DeletManager(HttpServletRequest request, HttpServletResponse response) {
		String id =request.getParameter("id");
		voitureCrud.DeletVoiture(id);
		afficher(request,response);
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
