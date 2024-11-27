<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Produit</title>
    <!-- Lien vers le CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Ajouter un Produit</h1>

    <form action="${pageContext.request.contextPath}/produits" method="post" class="border p-4 shadow rounded">
        <input type="hidden" name="action" value="add">

        <div class="mb-3">
            <label for="nom" class="form-label">Nom :</label>
            <input type="text" id="nom" name="nom" class="form-control" placeholder="Entrez le nom du produit" required>
        </div>

        <div class="mb-3">
            <label for="prix" class="form-label">Prix :</label>
            <input type="number" id="prix" name="prix" class="form-control" placeholder="Entrez le prix" required>
        </div>

        <div class="mb-3">
            <label for="quantite_en_stock" class="form-label">Quantité en stock :</label>
            <input type="number" id="quantite_en_stock" name="quantite_en_stock" class="form-control" placeholder="Entrez la quantité en stock" required>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success">Ajouter</button>
            <a href="${pageContext.request.contextPath}/produits" class="btn btn-secondary">Retour</a>
        </div>
    </form>
</div>

<!-- Lien vers le JavaScript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
