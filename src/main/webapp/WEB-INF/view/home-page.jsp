<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>BMI Fit Dashboard</title>

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
        <a href="${pageContext.request.contextPath}/home" style="color: #38bdf8">Dashboard</a>
        <a href="${pageContext.request.contextPath}/history">History</a>
        <a href="${pageContext.request.contextPath}/profile">Profile</a>

        <a href="${pageContext.request.contextPath}/" class="nav-btn"> Logout </a>
      </nav>
    </header>

    <!-- ================= DASHBOARD ================= -->

    <section class="dashboard">
      <!-- LEFT SIDE -->

      <div class="dashboard-content">
        <span class="dashboard-tag"> HEALTH TRACKER </span>
        <h1>Calculate Your <span>BMI</span></h1>

        <!-- BMI FORM -->

        <div class="bmi-form-card">
          <h2>BMI Calculator</h2>

          <form:form action="calculateBMI" method="get" class="bmi-form" modelAttribute="bmiData">

            <!-- HEIGHT -->

            <div class="form-group">

                <label for="height">
                   <i class="fa-solid fa-ruler-vertical"></i>
                   Height (cm)
                </label>

                <div class="input-wrapper">

                 <form:input
                    type="number"
                    id="height"
                    path="height"
                    value="${bmiData.height}"
                    placeholder="Enter your height"
                    min="50"
                    max="300"
                    required="required"/>

                    <button type="button"
                              class="clear-input-btn"
                              onclick="clearInput('height')">
                          <i class="fa-solid fa-xmark"></i>
                      </button>
                  </div>
              </div>

              <!-- WEIGHT -->

              <div class="form-group">
                  <label for="weight">
                      <i class="fa-solid fa-weight-scale"></i>
                      Weight (kg)
                  </label>

                  <div class="input-wrapper">

                      <form:input
                              type="number"
                              id="weight"
                              path="weight"
                              value="${bmiData.weight}"
                              placeholder="Enter your weight"
                              min="10"
                              max="500"
                              required="required"/>

                      <button type="button" class="clear-input-btn" onclick="clearInput('weight')">
                          <i class="fa-solid fa-xmark"></i>
                      </button>
                  </div>
              </div>

              <!-- BUTTON -->

              <input type="submit"
                     value="Calculate BMI"
                     class="auth-submit-btn"/>

              <button type="button" class="secondary-btn email-btn" onclick="openEmailModal()">
                  <i class="fa-solid fa-envelope"></i>
                  Send Result To Email
              </button>
          </form:form>
        </div>
      </div>

      <!-- ================= EMAIL MODAL ================= -->

      <div class="modal-overlay" id="emailModal">
        <div class="auth-modal">
          <!-- CLOSE BUTTON -->

          <button class="modal-close-btn" onclick="closeEmailModal()">
            <i class="fa-solid fa-xmark"></i>
          </button>

          <!-- HEADER -->

          <div class="auth-header">
            <div class="auth-logo">
              <div class="logo-icon">
                <i class="fa-solid fa-paper-plane"></i>
              </div>

              <span>BMI Fit</span>
            </div>

            <h2>Send BMI Result</h2>

            <p>Enter your email to receive BMI result</p>
          </div>

          <!-- FORM -->

          <form class="auth-form">
            <div class="form-group">
              <label>
                <i class="fa-solid fa-envelope"></i>
                Email Address
              </label>

              <input type="email" placeholder="Enter your email" />
            </div>

            <!-- BUTTON -->

            <button type="submit" class="auth-submit-btn">Send Email</button>
          </form>
        </div>
      </div>

      <!-- RIGHT SIDE -->

      <div class="dashboard-sidebar">
          <!-- ================= BMI REPORT CARD ================= -->

          <div class="dashboard-card">

              <!-- HEADER -->
              <div class="dashboard-card-header">
                  <div class="dashboard-icon">
                      <i class="fa-solid fa-chart-line"></i>
                  </div>
                  <h3>BMI Report</h3>
              </div>

              <!-- BMI + STATUS -->
              <div class="bmi-status-row">
                  <h1 class="bmi-result">${bmiData.bmi}
                  </h1>
                  <span class="status-badge ${bmiData.status}">
                      ${bmiData.status}
                  </span>
              </div>

              <!-- FITNESS TIP -->

                  <div class="tip-title">
                      <i class="fa-solid fa-lightbulb"></i>
                      <span>Fitness Tip</span>
                  </div>
                  <p style="white-space: pre-line;">
                      ${bmiData.fitnessTip}
                  </p>

          </div>
          <br>

          <!-- ================= BMI CATEGORY CARD ================= -->
          <div class="dashboard-card">
              <!-- HEADER -->
              <div class="dashboard-card-header">
                  <div class="dashboard-icon">
                      <i class="fa-solid fa-heart-pulse"></i>
                  </div>
                  <h3>BMI Categories</h3>
              </div>

              <!-- CATEGORY LIST -->
              <div class="category-list">

                  <!-- UNDERWEIGHT -->
                  <div class="category-item underweight">
                      <span>Underweight</span>
                      <span>Below 18.5</span>
                  </div>

                  <!-- HEALTHY -->
                  <div class="category-item healthy">
                      <span>Healthy</span>
                      <span>18.5 - 24.9</span>
                  </div>

                  <!-- OVERWEIGHT -->
                  <div class="category-item overweight">
                      <span>Overweight</span>
                      <span>25.0 - 29.9</span>
                  </div>

                  <!-- OBESE -->
                  <div class="category-item obese">
                      <span>Obese</span>
                      <span>30.0 & Above</span>
                  </div>
              </div>
          </div>
      </div>
    </section>
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>
