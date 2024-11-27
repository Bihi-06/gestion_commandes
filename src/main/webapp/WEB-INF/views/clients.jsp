<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="ma.fstt.entities.Client" %> <!-- Assurez-vous d'importer la classe Client -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Clients</title>
    <!-- Lien vers le CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Liste des Clients</h1>
    <a href="${pageContext.request.contextPath}/clients?action=add" class="btn btn-primary mb-3">Ajouter un client</a>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Adresse</th>
            <th>Téléphone</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            // Récupérer la liste des clients passée par le servlet
            List<Client> clients = (List<Client>) request.getAttribute("clients");

            if (clients != null) {
                // Itérer sur la liste des clients et afficher les données
                for (Client client : clients) {
        %>
        <tr>
            <td><%= client.getId() %></td>
            <td><%= client.getNom() %></td>
            <td><%= client.getEmail() %></td>
            <td><%= client.getAddress() %></td>
            <td><%= client.getTelephone() %></td>
            <td>
                <a href="${pageContext.request.contextPath}/clients?action=edit&id=<%= client.getId() %>" class="btn btn-warning btn-sm">Modifier</a>
                <a href="${pageContext.request.contextPath}/clients?action=delete&id=<%= client.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Supprimer ce client ?')">Supprimer</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6" class="text-center">Aucun client trouvé.</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<!-- Lien vers le JavaScript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
