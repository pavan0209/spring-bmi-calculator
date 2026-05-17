<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>BMI Fit</title>

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

    <!-- CSS -->
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
        <a href="#">Home</a>
        <a href="#features">Features</a>
        <a href="javascript:void(0)" onclick="openLoginModal()"> Login </a>
        <a href="javascript:void(0)" onclick="openRegisterModal()"> Register </a>
      </nav>
    </header>

    <!-- ================= HERO SECTION ================= -->

    <section class="hero">
      <div class="hero-content">
        <h1>Your Smart <span>Fitness Journey</span> Starts Here</h1>
        <p>
          BMI Fit helps users track their health, monitor BMI records, and maintain a better
          lifestyle with a clean and modern experience. Login or create an account to access your
          personalized dashboard.
        </p>
        <div class="hero-buttons">
          <a href="#" class="primary-btn">Get Started</a>
          <a href="#features" class="secondary-btn">Explore Features</a>
        </div>
      </div>

      <!-- RIGHT SIDE CARD -->

      <div class="hero-image">
        <div class="hero-card">
          <h2>Future Ready Platform</h2>
          <p>
            After login, users will be able to calculate BMI, track fitness progress, and access
            personalized health insights.
          </p>
          <div class="card-points">
            <div class="point">
              <div class="point-icon">
                <i class="fa-solid fa-chart-line"></i>
              </div>
              <span>BMI Dashboard</span>
            </div>
            <div class="point">
              <div class="point-icon">
                <i class="fa-solid fa-dumbbell"></i>
              </div>
              <span>Progress Tracking</span>
            </div>

            <div class="point">
              <div class="point-icon">
                <i class="fa-solid fa-user-shield"></i>
              </div>

              <span>Secure User Accounts</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- ================= FEATURES ================= -->

    <section class="features" id="features">
      <div class="section-title">
        <h2>Platform Features</h2>
        <p>Modern UI/UX with future-ready health tracking features</p>
      </div>

      <div class="feature-grid">
        <div class="feature-card">
          <div class="feature-icon">
            <i class="fa-solid fa-bolt"></i>
          </div>
          <h3>Fast Experience</h3>
          <p>Optimized and responsive interface built for smooth navigation across all devices.</p>
        </div>

        <div class="feature-card">
          <div class="feature-icon">
            <i class="fa-solid fa-layer-group"></i>
          </div>
          <h3>User Focused Design</h3>
          <p>Clean UI/UX designed to provide a modern and engaging user experience.</p>
        </div>

        <div class="feature-card">
          <div class="feature-icon">
            <i class="fa-solid fa-shield-heart"></i>
          </div>
          <h3>Scalable Architecture</h3>
          <p>
            Built with Java Spring MVC architecture to support future features and user management.
          </p>
        </div>
      </div>
    </section>

    <!-- ================= CTA ================= -->

    <section class="cta">
      <div class="cta-box">
        <div class="cta-text">
          <span class="cta-tag"> START YOUR JOURNEY </span>
          <h2>Ready To Build A Healthier Lifestyle?</h2>
          <p>
            Create your BMI Fit account and access future BMI tracking, personalized dashboards, and
            fitness monitoring tools.
          </p>
        </div>

        <div class="cta-action">
          <a href="javascript:void(0)" onclick="openLoginModal()" class="cta-btn">
            Create Free Account
          </a>
        </div>
      </div>
    </section>

    <!-- ================= FOOTER ================= -->

    <footer>Copyright 2026 BMI Fit. All rights reserved.</footer>

    <!-- ================= LOGIN MODAL ================= -->

    <div class="modal-overlay" id="loginModal">
      <div class="auth-modal">

        <!-- CLOSE BUTTON -->
        <button class="modal-close-btn" onclick="closeLoginModal()">
          <i class="fa-solid fa-xmark"></i>
        </button>

        <!-- HEADER -->
        <div class="auth-header">
          <div class="auth-logo">
            <div class="logo-icon">
              <i class="fa-solid fa-heart-pulse"></i>
            </div>
            <span>BMI Fit</span>
          </div>
          <h2>Welcome Back</h2>
          <p>Login to continue your fitness journey</p>
        </div>

        <!-- FORM -->

        <form class="auth-form">
          <!-- USERNAME -->
          <div class="form-group">
            <label>
              <i class="fa-solid fa-user"></i>
              Username
            </label>
            <input type="text" placeholder="Enter your username" />
          </div>
          <!-- PASSWORD -->
          <div class="form-group">
            <label>
              <i class="fa-solid fa-lock"></i>
              Password
            </label>
            <input type="password" placeholder="Enter your password" />
          </div>

          <!-- BUTTON -->
          <a href="${pageContext.request.contextPath}/home" class="auth-submit-btn">Login</a>
        </form>

        <!-- FOOTER -->
        <div class="auth-footer">
          <p>Don't have an account?</p>
          <a href="#" onclick="switchToRegister()"> Register </a>
        </div>
      </div>
    </div>

    <!-- ================= REGISTER MODAL ================= -->

    <div class="modal-overlay" id="registerModal">
      <div class="auth-modal">
        <!-- CLOSE BUTTON -->

        <button class="modal-close-btn" onclick="closeRegisterModal()">
          <i class="fa-solid fa-xmark"></i>
        </button>

        <!-- HEADER -->
        <div class="auth-header">
          <div class="auth-logo">
            <div class="logo-icon">
              <i class="fa-solid fa-heart-pulse"></i>
            </div>
            <span>BMI Fit</span>
          </div>
          <h2>Create Account</h2>
          <p>Register to start your fitness journey</p>
        </div>

        <!-- FORM -->
        <form class="auth-form">
          <!-- USERNAME -->
          <div class="form-group">
            <label>
              <i class="fa-solid fa-user"></i>
              Username
            </label>
            <input type="text" placeholder="Choose username" />
          </div>

          <!-- PASSWORD -->
          <div class="form-group">
            <label>
              <i class="fa-solid fa-lock"></i>
              Password
            </label>
            <input type="password" placeholder="Create password" />
          </div>

          <!-- BUTTON -->
          <button type="submit" class="auth-submit-btn">Create Account</button>
        </form>

        <!-- FOOTER -->
        <div class="auth-footer">
          <p>Already have an account?</p>
          <a href="#" onclick="switchToLogin()"> Login </a>
        </div>
      </div>
    </div>
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>
