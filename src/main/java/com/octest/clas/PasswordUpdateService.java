package com.octest.clas;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

public class PasswordUpdateService {
    private static final String COLLECTION_NAME = "Manager";

    public boolean updatePassword(String email, String currentPassword, String newPassword) {
        try {
            MongoDBConnection connection = new MongoDBConnection();
            MongoDatabase database = connection.getDatabase();

            // Accéder à la collection contenant les utilisateurs
            MongoCollection<Document> collection = database.getCollection(COLLECTION_NAME);

            // Rechercher l'utilisateur par email et mot de passe actuel
            Document query = new Document("Login", email)
                    .append("Password", currentPassword);

            // Vérifier si l'utilisateur existe et le mot de passe actuel correspond
            Document user = collection.find(query).first();
            if (user != null) {
                // Mettre à jour le mot de passe
                Document update = new Document("$set", new Document("Password", newPassword));
                collection.updateOne(query, update);
                return true; // Mot de passe mis à jour avec succès
            }
        } catch (Exception e) {
            System.out.println("Erreur lors de la mise à jour du mot de passe:");
            e.printStackTrace();
        }

        return false; // Échec de la mise à jour du mot de passe
    }
}

