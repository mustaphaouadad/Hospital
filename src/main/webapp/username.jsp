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
<div class="container mt-5">
        <h2 class="text-center">Entrer vos information</h2>
        <p class="text-center">rappelez-vous votre username.</p>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg border-0">
                    <div class="card-body">
                        <form action="RendezVousServlet" method="post">
                            <!-- Champ Username -->
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                          </form>
                          <a href="list-rvs-patient.jsp" class="btn btn-primary">Accéder</a>
                      </div>
                  </div>
              </div>
           </div>
    </div>                       
                            
</body>
</html>