<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare - Espace Patient</title>
  <%@ include file="componenet/AllCss.jsp" %>
</head>
<body class="bg-light">

    <!-- Navbar -->
    <%@ include file="componenet/navbar.jsp" %>

    <!-- Contenu principal -->
    <div class="container text-center mt-5">
        <h1>Bienvenue dans votre espace patient</h1>
        <p class="lead">Choisissez une action ci-dessous :</p>

        <div class="row justify-content-center">
            <!-- Prendre un Rendez-vous -->
            <div class="col-md-5">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <h3 class="card-title">Prendre un Rendez-vous</h3>
                        <p class="card-text">Réservez une consultation avec un médecin.</p>
                        <a href="formRendezVous.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Consulter les Rendez-vous -->
            <div class="col-md-5">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <h3 class="card-title">Consulter mes Rendez-vous</h3>
                        <p class="card-text">Voir l'historique et le statut de vos rendez-vous.</p>
                        <a href="username.jsp" class="btn btn-success">Accéder</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>