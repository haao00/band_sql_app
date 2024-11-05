<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="overall.css">
  <title>BLACKPINK</title>
  <style>
    .center {
      display: flex;
      justify-content: center;
    }
  </style>
</head>

<body>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="header.css">
  <title>header</title>

  <div style="background-image: url(band背景.png);">
    <!-- header -->
    <header id="header">
      <h1><font color="white">BANDGROUP</font></h1>
      <nav>
        <ul>
          <li><a href="HOME.html">HOME</a></li>
          <li class="has-child"><a>検索</a>
            <ul>
              <li><a href="search_form.php#salary">歌詞検索</a></li>
              <li><a href="songsearch_form.php">曲検索</a></li>
              <li><a href="datarank.php#hometown">BANDGROUP検索</a></li>
            </ul>
          </li>
          <li><a href="player_search.php">INFO</a></li>
          <li><a href="team_info.php">あああ</a></li>
        </ul>
      </nav>
    </header>
  </div>            

  <br>

  <?php
  header('Content-Type:text/html; charset=UTF-8');
  require('login.php');

  $sql = "SELECT * FROM BANDGROUP WHERE name = 'BLACKPINK'";

  try {
    $stmh = $pdo->prepare($sql);
    $stmh->execute();
    $result = $stmh->fetchAll(PDO::FETCH_ASSOC);
    $count = $stmh->rowCount();

    print "BLACKPINKに関する情報です！<br><br>";
    
  } catch (PDOException $Exception) {
    die("DB検索エラー:".$Exception->getMessage());
  }
  ?>

  <div class="center">
    <img src="BLACKPINK.png" alt="BLACKPINKの画像" width="300">
  </div>
  <br>

  <table border='1' cellpadding='2' cellspacing='0' align="center">
    <thead>
      <tr bgcolor="black">
        <th><font color="white">name</th>
        <th><font color="white">genre</th>
        <th><font color="white">debut</th>
        <th><font color="white">country</th>
        <th><font color="white">managementoffice</th>
        <th><font color="white">location</th>
      </tr>
    </thead>
    <tbody>
      <?php
      foreach($result as $row) {
        print "<tr><td>"; 
        print htmlspecialchars($row["name"], ENT_QUOTES);
        print "</td><td>";
        print htmlspecialchars($row["genre"], ENT_QUOTES);
        print "</td><td>"; 
        print htmlspecialchars($row["debut"], ENT_QUOTES);
        print "</td><td>";
        print htmlspecialchars($row["country"], ENT_QUOTES);
        print "</td><td>";
        print htmlspecialchars($row["managementoffice"], ENT_QUOTES);
        print "</td><td>";
        print htmlspecialchars($row["location"], ENT_QUOTES);
        print "</td></tr>\n";
      }
      ?>
    </tbody>
  </table>
  <br>

  <div style="text-align: center;">
    <a href="HOME.php">HOME画面に戻る</a>
  </div>
</body>
</html>
