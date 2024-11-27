<%@ page import="ma.fstt.entities.Commande" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Commandes</title>
    <!-- Lien vers le CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Liste des Commandes</h1>

    <div class="text-end mb-3">
        <a href="${pageContext.request.contextPath}/commandes?action=add" class="btn btn-primary">Ajouter une nouvelle commande</a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Client</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            // Récupérer la liste des commandes passée par le servlet
            List<Commande> commandes = (List<Commande>) request.getAttribute("commandes");

            if (commandes != null && !commandes.isEmpty()) {
                for (Commande commande : commandes) {
        %>
        <tr>
            <td><%= commande.getId() %></td>
            <td><%= commande.getDate() %></td>
            <td><%= commande.getClient().getId() %></td>
            <td>
                <a href="${pageContext.request.contextPath}/commandes?action=edit&id=<%= commande.getId() %>" class="btn btn-warning btn-sm">Modifier</a>
                <a href="${pageContext.request.contextPath}/commandes?action=delete&id=<%= commande.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Supprimer cette commande ?')">Supprimer</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4" class="text-center">Aucune commande trouvée.</td>
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
