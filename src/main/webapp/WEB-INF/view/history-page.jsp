<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>BMI History</title>

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
        <a href="${pageContext.request.contextPath}/home">Dashboard</a>
        <a href="#" style="color: #38bdf8">History</a>
        <a href="${pageContext.request.contextPath}/profile">Profile</a>

        <a href="${pageContext.request.contextPath}/" class="nav-btn"> Logout </a>
      </nav>
    </header>

    <!-- ================= HISTORY ================= -->

    <section class="history-page">
      <!-- PAGE HEADER -->

      <div class="history-header">
        <div>
          <span class="dashboard-tag"> BMI HISTORY </span>

          <h1>Your <span>BMI Records</span></h1>

          <p>Track all previous BMI calculations and monitor your fitness journey over time.</p>
        </div>

        <!-- ACTION -->

        <button class="auth-submit-btn">
          <i class="fa-solid fa-download"></i>

          Export History
        </button>
      </div>

      <!-- STATS -->

      <div class="history-stats">
        <!-- CARD 1 -->

        <div class="history-stat-card">
          <div class="history-stat-icon">
            <i class="fa-solid fa-chart-line"></i>
          </div>

          <h3>24</h3>

          <p>Total Records</p>
        </div>

        <!-- CARD 2 -->

        <div class="history-stat-card">
          <div class="history-stat-icon">
            <i class="fa-solid fa-heart-pulse"></i>
          </div>

          <h3>22.4</h3>

          <p>Latest BMI</p>
        </div>

        <!-- CARD 3 -->

        <div class="history-stat-card">
          <div class="history-stat-icon">
            <i class="fa-solid fa-fire"></i>
          </div>

          <h3>Healthy</h3>

          <p>Current Status</p>
        </div>
      </div>

      <!-- HISTORY TABLE -->

      <div class="history-table-card">
        <!-- TABLE HEADER -->

        <div class="table-header">
          <h2>BMI Calculation History</h2>

          <div class="table-search">
            <i class="fa-solid fa-magnifying-glass"></i>

            <input type="text" placeholder="Search records" />
          </div>
        </div>

        <!-- TABLE -->

        <div class="table-wrapper">
          <table>
            <thead>

            <tr>
                <th>#</th>
                <th>Date</th>
                <th>Height</th>
                <th>Weight</th>
                <th>BMI</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            </thead>

            <tbody>
              <tr>
                <td>1</td>
                <td>16 May 2026</td>
                <td>172 cm</td>
                <td>68 kg</td>
                <td>22.9</td>

                <td>
                  <span class="status-badge healthy"> Healthy </span>
                </td>

                <td>
                  <button class="table-action-btn delete-btn">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                </td>
              </tr>

              <tr>
                <td>2</td>
                <td>12 May 2026</td>
                <td>172 cm</td>
                <td>70 kg</td>
                <td>23.7</td>

                <td>
                  <span class="status-badge healthy"> Healthy </span>
                </td>

                <td>
                  <button class="table-action-btn delete-btn">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                </td>
              </tr>

              <tr>
                <td>3</td>
                <td>08 May 2026</td>
                <td>172 cm</td>
                <td>76 kg</td>
                <td>25.6</td>

                <td>
                  <div class="status-badge obese"> Overweight </div>
                </td>

                <td>
                  <button class="table-action-btn delete-btn">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
