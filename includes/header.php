<header>
  <div class="default-header">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-2">
          <div class="logo"> <a href="index.php"><img src="assets/images/logg.png" alt="image" /></a> </div>
        </div>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Для поддержки напишите нам: </p>
              <a href="mailto:info@example.com">autocars@gmail.com</a>
            </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Служба поддержки Позвоните нам: </p>
              <a href="tel:375291010203">+375291010203</a>
            </div>
            <div class="social-follow">
              <ul>
                <li><a href="https://ru-ru.facebook.com/sergey.mytnik.90"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="https://twitter.com/covetskii27"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="https://by.linkedin.com/i"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.google.com/"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.instagram.com/sergeimytnik"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <?php if (empty($_SESSION['login'])) {
            ?>
              <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Вход / Регистрация</a> </div>
            <?php } else {

              echo "Веб-сервис покупки акционных ТС";
            } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>
                <?php
                $email = $_SESSION['login'] ?? '';
                $sql = "SELECT FullName FROM tblusers WHERE EmailId=:email ";
                $query = $dbh->prepare($sql);
                $query->bindParam(':email', $email, PDO::PARAM_STR);
                $query->execute();
                $results = $query->fetchAll(PDO::FETCH_OBJ);
                if ($query->rowCount() > 0) {
                  foreach ($results as $result) {

                    echo htmlentities($result->FullName);
                  }
                } ?><i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
                <?php if (!empty($_SESSION['login'])) { ?>
                  <li><a href="profile.php">Настройки профиля</a></li>
                  <li><a href="update-password.php">Обновить пароль</a></li>
                  <li><a href="my-booking.php">Мое бронирование</a></li>
                  <li><a href="post-testimonial.php">Опубликовать отзыв</a></li>
                  <li><a href="my-testimonials.php">Мои отзывы</a></li>
                  <li><a href="logout.php">Выход</a></li>
                <?php } else { ?>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Настройки профиля</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Обновить пароль</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Мое бронирование</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Опубликовать отзыв</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Мои отзывы</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Выход</a></li>
                <?php } ?>
              </ul>
            </li>
          </ul>
        </div>
        <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <input type="text" placeholder="Поиск..." class="form-control">
            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">
          <li><a href="index.php">Домой</a> </li>

          <li><a href="page.php?type=aboutus">О нас</a></li>
          <li><a href="car-listing.php">Список ТС</a>
          <li><a href="page.php?type=faqs">FAQs</a></li>
          <li><a href="contact-us.php">Связаться с нами</a></li>

        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation end -->

</header>