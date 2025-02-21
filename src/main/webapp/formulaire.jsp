<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>username_patient</title>
<%@ include file="componenet/AllCss.jsp" %>
</head>
<body class="bg-light">

    <!-- Navbar -->
  <%@ include file="componenet/navbar.jsp" %>

    <!-- Formulaire -->
    <div class="container mt-5">
        <h2 class="text-center">Entrer vos information</h2>
        <p class="text-center">rappelez-vous votre username.</p>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <form action="Adduser" method="post">
                            <!-- Champ Username -->
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="userName" required>
                            </div>

                            <!-- Champ Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>

                            <!-- Champ Numéro de téléphone -->
                            <div class="mb-3">
                                <label for="phone" class="form-label">Numéro de téléphone</label>
                                <input type="tel" class="form-control" id="phone" name="phoneNumber" pattern="[0-9]{10}" placeholder="Ex : 0612345678" required>
                            </div>

                            <!-- Bouton Soumettre -->
                            <div class="d-grid">
                                <a type="submit" href="patient.jsp" class="btn btn-primary">Enregistrer</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

</body>
</html>