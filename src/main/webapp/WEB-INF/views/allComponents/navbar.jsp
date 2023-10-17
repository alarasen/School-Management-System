<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(0deg, rgba(229,115,115,1) 0%, rgba(76,175,80,1) 100%);">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath }/"><i class="bi bi-mortarboard-fill"></i> School Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       </ul>
      <form class="d-flex ">
          <a href="login" class="btn btn-light mt-1 me-2 text-white border-0" style="background: #e57373"><span class="fa fa-user-circle fa-spin"></span> Login</a>
          <a href="register" class="btn btn-light mt-1 text-white border-0" style="background: #4caf50"><i class="bi bi-person-plus-fill"></i> Register</a>
      </form>
    </div>
  </div>
</nav>