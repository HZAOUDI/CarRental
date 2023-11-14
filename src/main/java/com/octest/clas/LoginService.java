package com.octest.clas;

import java.net.UnknownHostException;

import org.bson.Document;

import com.octest.clas.MongoDBConnection;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class LoginService {
    private MongoDBConnection mongoDBConnection;

    public LoginService() throws UnknownHostException {
        mongoDBConnection = new MongoDBConnection();
    }

    public boolean authenticate(String email, String password) {
        System.out.print("MMMMMMMMMMMMMMMM");
        MongoDatabase database = mongoDBConnection.getDatabase();
                    
        MongoCollection<Document> collection = database.getCollection("Manager");
            
        BasicDBObject query = new BasicDBObject();
        query.put("Login", email);
        query.put("Password", password);
        
        FindIterable<Document> result = collection.find(query);
        
        Document manager = result.first();
        
        if (manager != null) {
            String storedUsername = manager.getString("Login");
            String storedPassword = manager.getString("Password");
            
            if (email.equals(storedUsername) && password.equals(storedPassword)) {
                return true;
            }
        }

        return false;
    }

}
