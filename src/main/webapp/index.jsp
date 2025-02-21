<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare - Accueil</title>
<%@ include file="componenet/AllCss.jsp" %>
</head>
<body >

<%@ include file="componenet/navbar.jsp" %>
<section class="d-flex justify-content-center align-items-center vh-100 bg-light">

    <div class="container text-center">
        <h1 class="mb-4">Bienvenue sur MediCare</h1>
        <p class="lead">Veuillez choisir votre espace :</p>
        
        <div class="row justify-content-center">
            <!-- Espace Patient -->
            <div class="col-md-4">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <h3 class="card-title">Espace Patient</h3>
                        <p class="card-text">Prenez et gérez vos rendez-vous en toute simplicité.</p>
                        <a href="formulaire.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Espace Médecin -->
           <div class="col-md-4">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <h3 class="card-title">Espace Medcin</h3>
                        <p class="card-text">Consulter et gérez votre agenda en toute simplicité.</p>
                        <a href="View/Doctor/doctor.jsp" class="btn btn-success">Accéder</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>

    <!-- Bootstrap JS -->
   
</body>
</html>
