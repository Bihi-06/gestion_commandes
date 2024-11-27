<%@ page import="ma.fstt.entities.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Produits</title>
    <!-- Lien vers le CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Liste des Produits</h1>

    <div class="text-end mb-3">
        <a href="${pageContext.request.contextPath}/produits?action=add" class="btn btn-primary">Ajouter un produit</a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prix</th>
            <th>Quantité en Stock</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Produit> produits = (List<Produit>) request.getAttribute("produits");
            if (produits != null && !produits.isEmpty()) {
                for (Produit produit : produits) {
        %>
        <tr>
            <td><%= produit.getId() %></td>
            <td><%= produit.getNom() %></td>
            <td><%= produit.getPrix() %></td>
            <td><%= produit.getQuantite_en_stock() %></td>
            <td>
                <a href="${pageContext.request.contextPath}/produits?action=edit&id=<%= produit.getId() %>" class="btn btn-warning btn-sm">Modifier</a>
                <a href="${pageContext.request.contextPath}/produits?action=delete&id=<%= produit.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Supprimer ce produit ?')">Supprimer</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="5" class="text-center">Aucun produit trouvé.</td>
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
