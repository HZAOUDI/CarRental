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

import com.octest.clas.Manager;
import com.octest.clas.ManagerCrud;


/**
 * Servlet implementation class ManagerCrud
 */
public class ManagerServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ManagerCrud managerCrud;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerServ() {
    	super();
        try {
			this.managerCrud = new ManagerCrud();
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
			
			
			case "/Manager/insert":
				insertManager(request,response);
			break;
			case "/Manager/delete":
				DeletManager(request,response);
				break;
			case "/Manager/Update":
				updateManager(request,response);
				break;
			default :
				afficher(request,response);
			
		}
		
		
	
		
	}

	public void insertManager(HttpServletRequest request, HttpServletResponse response) {
		int num = Integer.parseInt(request.getParameter("N_manager"));
		String Nom = request.getParameter("Nom");
		String Prenom = request.getParameter("Prenom");
		String CIN = request.getParameter("CIN");
		String Login = request.getParameter("Login");
		String Password = request.getParameter("Password");
		String adress = request.getParameter("adress");
		Manager manager = new Manager(num,Nom,Prenom,CIN,Login,Password,adress);
		this.managerCrud.insertManager(manager);
		afficher(request , response);
	}
	
	public void afficher(HttpServletRequest request, HttpServletResponse response) {
		List<Document> listManager = this.managerCrud.afficher();
		request.setAttribute("listManager", listManager);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ManagerList.jsp");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	
	public void updateManager(HttpServletRequest request, HttpServletResponse response) {
		int num = Integer.parseInt(request.getParameter("N_manager"));
		String Nom = request.getParameter("Nom");
		String Prenom = request.getParameter("Prenom");
		String CIN = request.getParameter("CIN");
		String Login = request.getParameter("Login");
		String Password = request.getParameter("Password");
		String adress = request.getParameter("adress");
		Manager Newmanager = new Manager(num,Nom,Prenom,CIN,Login,Password,adress);
		this.managerCrud.UpdateManager(Newmanager);
		afficher(request,response);
	}
	public void DeletManager(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		managerCrud.DeletManager(id);
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
