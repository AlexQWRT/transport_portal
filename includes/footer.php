<?php
if (isset($_POST['emailsubscibe'])) {
  $subscriberemail = $_POST['subscriberemail'];
  $sql = "SELECT SubscriberEmail FROM tblsubscribers WHERE SubscriberEmail=:subscriberemail";
  $query = $dbh->prepare($sql);
  $query->bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
  $query->execute();
  $results = $query->fetchAll(PDO::FETCH_OBJ);
  $cnt = 1;
  if ($query->rowCount() > 0) {
    echo "<script>alert('Already Subscribed.');</script>";
  } else {
    $sql = "INSERT INTO  tblsubscribers(SubscriberEmail) VALUES(:subscriberemail)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if ($lastInsertId) {
      echo "<script>alert('Subscribed successfully.');</script>";
    } else {
      echo "<script>alert('Something went wrong. Please try again');</script>";
    }
  }
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-md-6">
          <h6>О нас</h6>
          <ul>


            <li><a href="page.php?type=aboutus">О нас</a></li>
            <li><a href="page.php?type=faqs">FAQs</a></li>
            <li><a href="page.php?type=privacy">Конфиденциальность</a></li>
            <li><a href="page.php?type=terms">Условия использования</a></li>
            <li><a href="admin/">Панель администратора</a></li>
          </ul>
        </div>

        <div class="col-md-3 col-sm-6">
          <h6>Подписаться на рассылку</h6>
          <div class="newsletter-form">
            <form method="post">
              <div class="form-group">
                <input type="email" name="subscriberemail" class="form-control newsletter-input" required placeholder="Enter Email Address" />
              </div>
              <button type="submit" name="emailsubscibe" class="btn btn-block">Подписаться <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">*Каждую неделю мы рассылаем нашим подписчикам выгодные предложения и последние новости в мире авто.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-push-6 text-right">
          <div class="footer_widget">
            <p>Связаться с нами:</p>
            <ul>
              <li><a href="https://av.by/"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a href="https://av.by/"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a href="https://av.by/"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
              <li><a href="https://av.by/"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
              <li><a href="https://av.by/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-md-pull-6">
        <p class="copy-right">Copyright &copy; 2024 Портал акционных автомобилей <a href="https://av.by/">Маша Потапчик</a></p>
        </div>
      </div>
    </div>
  </div>
</footer>