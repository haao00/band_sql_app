<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="overall.css">
  <title>検索結果</title>
</head>

<body class="search2">
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
              <li><a href="lyricssearch_form.html">歌詞検索</a></li>
              <li><a href="songsearch_form.html">曲検索</a></li>
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

if (isset($_GET["genre"]) && is_array($_GET["genre"]) && $_GET["genre"] != "") {
  $genre = implode(",", $_GET["genre"]);
} else {
  $genre = "%";
}

if (isset($_GET["name"]) && is_array($_GET["name"]) && $_GET["name"] != "") {
  $name = implode(",", $_GET["name"]);
} else {
  $name = "%";
}

if (isset($_GET["country"]) && is_array($_GET["country"]) && $_GET["country"] != "") {
  $country = implode(",", $_GET["country"]);
} else {
  $country = "%";
}

if (isset($_GET["managementoffice"]) && is_array($_GET["managementoffice"]) && $_GET["managementoffice"] != "") {
  $managementoffice = implode(",", $_GET["managementoffice"]);
} else {
  $managementoffice = "%";
}

// resだけ他と違うので注意
if (isset($_GET["res"]) && $_GET["res"] != "") {
  $res = $_GET["res"];
}

$sql = "SELECT * FROM BANDGROUP NATURAL JOIN SONG WHERE genre LIKE :genre AND name LIKE :name AND country LIKE :country AND managementoffice LIKE :managementoffice";

if (isset($res)) {
  $sql .= " AND (groupID <= :res)";
}

try {
  $stmh = $pdo->prepare($sql);

  $stmh->bindValue(":genre", "%{$genre}%", PDO::PARAM_STR);
  $stmh->bindValue(":name", "%{$name}%", PDO::PARAM_STR);
  $stmh->bindValue(":country", "%{$country}%", PDO::PARAM_STR);
  $stmh->bindValue(":managementoffice", "%{$managementoffice}%", PDO::PARAM_STR);

  if (isset($res)) {
    $stmh->bindValue(":res", $res, PDO::PARAM_INT);
  }

  $stmh->execute();

  $count = $stmh->rowCount();

  print "検索結果は{$count}件です。<br><br>";

} catch (PDOException $Exception) {
  die("DB検索エラー:".$Exception->getMessage());
}
?>

    <table border='1' cellpadding='2' cellspacing='0' align = "center">
      <thead>
        <tr bgcolor="black"><th><font color="white">songname</th><th><font color="white">release</th><th><font color="white">time</th><th><font color="white">groupname</th><th><font color="white">groupID</th></tr>
      </thead>
      <tbody>
        <?php
        $result = $stmh->fetchAll(PDO::FETCH_ASSOC);

        foreach($result as $row) {
          print "<tr><td>"; 
          print htmlspecialchars($row["songname"], ENT_QUOTES);
          print "</td><td>";
          print htmlspecialchars($row["mrelease"], ENT_QUOTES);
          print "</td><td>"; 
          print htmlspecialchars($row["mtime"], ENT_QUOTES);
          print "</td><td>";
          print htmlspecialchars($row["name"], ENT_QUOTES);
          print "</td><td>";
          print htmlspecialchars($row["groupID"], ENT_QUOTES);
          print "</td></tr>\n";
        }
        ?>
      </tbody>
    </table>
    <br>

<div style="text-align: center;">
  <a href="songsearch_form.html">前のページに戻る</a>
</div>
</body>
</html>
