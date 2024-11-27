<%@ page import="ma.fstt.entities.Client" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ajouter une Commande</title>
  <!-- Lien vers le CSS Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h1 class="text-center mb-4">Ajouter une Commande</h1>

  <form action="${pageContext.request.contextPath}/commandes" method="post" class="border p-4 shadow rounded">
    <input type="hidden" name="action" value="add">

    <div class="mb-3">
      <label for="date" class="form-label">Date :</label>
      <input type="date" id="date" name="date" class="form-control" required>
    </div>

    <div class="mb-3">
      <label for="client_id" class="form-label">Choisir un Client :</label>
      <select id="client_id" name="client_id" class="form-select" required>
        <option value="">-- Sélectionner un Client --</option>
        <%-- Récupération de la liste des clients depuis la requête --%>
        <%
          List<Client> clients = (List<Client>) request.getAttribute("clients");
          if (clients != null) {
            for (Client client : clients) {
        %>
        <option value="<%= client.getId() %>">
          <%= client.getNom() %>
        </option>
        <%
            }
          }
        %>
      </select>
    </div>

    <div class="text-center">
      <button type="submit" class="btn btn-success">Ajouter</button>
      <a href="${pageContext.request.contextPath}/commandes" class="btn btn-secondary">Retour</a>
    </div>
  </form>
</div>

<!-- Lien vers le JavaScript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
