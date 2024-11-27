<%@ page import="ma.fstt.entities.Client" %>
<%@ page import="java.util.List" %>
<%@ page import="ma.fstt.entities.Commande" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modifier la Commande</title>
  <!-- Lien vers le CSS Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h1 class="text-center mb-4">Modifier la Commande</h1>
  <form action="${pageContext.request.contextPath}/commandes" method="post" class="border p-4 shadow rounded">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${commande.id}"> <!-- Assurez-vous que l'objet commande est bien passé -->

    <div class="mb-3">
      <label for="date" class="form-label">Date :</label>
      <input type="date" id="date" name="date" class="form-control" value="${commande.date}" required>
    </div>

    <div class="mb-3">
      <label for="client_id" class="form-label">Client :</label>
      <select id="client_id" name="client_id" class="form-select" required>
        <%-- Récupération des clients depuis la requête --%>
        <%
          List<Client> clients = (List<Client>) request.getAttribute("clients");
          Commande commande = (Commande) request.getAttribute("commande"); // Récupérer l'objet commande
          if (clients != null) {
            for (Client client : clients) {
              boolean selected = (client.getId() == commande.getClient().getId());
        %>
        <option value="<%= client.getId() %>" <%= selected ? "selected" : "" %>>
          <%= client.getNom() %>
        </option>
        <%
            }
          }
        %>
      </select>
    </div>

    <div class="text-center">
      <button type="submit" class="btn btn-success">Mettre à jour</button>
      <a href="${pageContext.request.contextPath}/commandes" class="btn btn-secondary">Annuler</a>
    </div>
  </form>
</div>

<!-- Lien vers le JavaScript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
