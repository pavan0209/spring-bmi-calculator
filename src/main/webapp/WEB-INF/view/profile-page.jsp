<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>BMI Fit Profile</title>

    <!-- Website Icon -->
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2966/2966486.png" />

    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />

    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />

    <!-- Existing CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
  </head>

  <body>
    <!-- ================= HEADER ================= -->

    <header>
      <div class="logo">
        <div class="logo-icon">
          <i class="fa-solid fa-heart-pulse"></i>
        </div>

        <span>BMI Fit</span>
      </div>

      <nav>
        <a href="${pageContext.request.contextPath}/home"> Dashboard </a>

        <a href="${pageContext.request.contextPath}/history"> History </a>

        <a href="${pageContext.request.contextPath}/profile" style="color: #38bdf8"> Profile </a>

        <a href="${pageContext.request.contextPath}/" class="nav-btn"> Logout </a>
      </nav>
    </header>

    <!-- ================= PROFILE PAGE ================= -->

    <section class="profile-page">
      <!-- ================= TOP PROFILE CARD ================= -->

      <div class="profile-hero-card">
        <!-- LEFT -->

        <div class="profile-user-info">
          <div class="profile-avatar">
            <i class="fa-solid fa-user"></i>
          </div>

          <div>
            <span class="dashboard-tag"> USER PROFILE </span>

            <h1>John <span>Doe</span></h1>

            <p>Manage your account settings and health information.</p>
          </div>
        </div>

        <!-- RIGHT -->

        <button class="auth-submit-btn">
          <i class="fa-solid fa-pen"></i>

          Edit Profile
        </button>
      </div>

      <!-- ================= PROFILE GRID ================= -->

      <div class="profile-layout">
        <!-- LEFT SIDE -->

        <div class="profile-main-card">
          <div class="profile-section-header">
            <div class="dashboard-icon">
              <i class="fa-solid fa-user-gear"></i>
            </div>

            <div>
              <h2>Personal Information</h2>

              <p>Update your account details</p>
            </div>
          </div>

          <!-- FORM -->

          <form class="profile-form">
            <div class="profile-form-grid">
              <!-- USERNAME -->

              <div class="form-group">
                <label>
                  <i class="fa-solid fa-user"></i>
                  Username
                </label>

                <input type="text" value="john_doe" />
              </div>

              <!-- EMAIL -->

              <div class="form-group">
                <label>
                  <i class="fa-solid fa-envelope"></i>
                  Email
                </label>

                <input type="email" value="john@example.com" />
              </div>

              <!-- HEIGHT -->

              <div class="form-group">
                <label>
                  <i class="fa-solid fa-ruler-vertical"></i>
                  Height (cm)
                </label>

                <input type="number" value="172" />
              </div>

              <!-- WEIGHT -->

              <div class="form-group">
                <label>
                  <i class="fa-solid fa-weight-scale"></i>
                  Weight (kg)
                </label>

                <input type="number" value="68" />
              </div>
            </div>

            <!-- BUTTON -->

            <button type="submit" class="auth-submit-btn profile-save-btn">Save Changes</button>
          </form>
        </div>

      </div>
    </section>
  </body>
</html>
