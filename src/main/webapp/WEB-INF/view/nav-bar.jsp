<header>

    <div class="logo">

        <div class="logo-icon">
            <i class="fa-solid fa-heart-pulse"></i>
        </div>

        <span>BMI Fit</span>

    </div>

    <nav>

        <a href="${pageContext.request.contextPath}/home"
           class="<%= request.getAttribute("homeActive") != null ? "active-nav" : "" %>">

            Dashboard

        </a>

        <a href="${pageContext.request.contextPath}/history"
           class="<%= request.getAttribute("historyActive") != null ? "active-nav" : "" %>">

            History

        </a>

        <a href="${pageContext.request.contextPath}/profile"
           class="<%= request.getAttribute("profileActive") != null ? "active-nav" : "" %>">

            Profile

        </a>

        <a href="${pageContext.request.contextPath}/"
           class="nav-btn">

            Logout

        </a>

    </nav>

</header>