<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Client</title>
    <!-- Lien vers le CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">Ajouter un Client</h1>

    <form action="${pageContext.request.contextPath}/clients" method="POST" class="border p-4 shadow rounded">
        <input type="hidden" name="action" value="add" />

        <div class="mb-3">
            <label for="nom" class="form-label">Nom:</label>
            <input type="text" id="nom" name="nom" class="form-control" placeholder="Entrez le nom" required />
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Entrez l'email" required />
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">Adresse:</label>
            <input type="text" id="address" name="address" class="form-control" placeholder="Entrez l'adresse" required />
        </div>

        <div class="mb-3">
            <label for="telephone" class="form-label">Téléphone:</label>
            <input type="text" id="telephone" name="telephone" class="form-control" placeholder="Entrez le numéro de téléphone" required />
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success">Ajouter</button>
            <a href="${pageContext.request.contextPath}/clients" class="btn btn-secondary">Retour</a>
        </div>
    </form>
</div>

<!-- Lien vers le JavaScript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
