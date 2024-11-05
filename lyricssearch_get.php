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
          <li><a href="HOME.php">HOME</a></li>
          <li class="has-child"><a>検索</a>
            <ul>
              <li><a href="lyricssearch_form.html">歌詞検索</a></li>
              <li><a href="songsearch_form.html">曲検索</a></li>
            </ul>
          </li>
          <li><a href="player_search.php">INFO</a></li>
        </ul>
      </nav>
    </header>
  </div> 

<?php
header('Content-Type:text/html; charset=UTF-8');

require('login.php');

if (isset($_GET["lyrics"]) && $_GET["lyrics"] != "") {
        $lyrics = $_GET["lyrics"];
}
else {
        $lyrics = "%";
}

$sql = "
SELECT * FROM BANDGROUP NATURAL JOIN SONG WHERE lyrics LIKE :lyrics ";


if(isset($res)) {
  $sql = "$sql and (BANDGROUP.country <= :res)";
}

try{

        $stmh=$pdo->prepare($sql);

	$stmh->bindvalue(":lyrics","%{$lyrics}%",PDO::PARAM_STR);
	
        $stmh->execute();

        $count=$stmh->rowCount();

        print "検索結果は{$count}件です。<br><br>";

} catch(PDOException $Exception){
        die("DB検索エラー:".$Exception->getMessage());

}

?>

<table border='1' cellpadding='2' cellspacing='0' align = "center">
<thead>
<tr bgcolor="black"><th><font color="white">songID</th><th><font color="white">name</th><th><font color="white">groupname</th><th><font color="white">time</th><th><font color="white">release</th></tr>
</thead>
<tbody>

<?php
 
$result=$stmh->fetchAll(PDO::FETCH_ASSOC);

foreach($result as $row) {
	print "<tr><td>"; 
	print htmlspecialchars($row["songID"],ENT_QUOTES);
	print "</td><td>";
        print htmlspecialchars($row["songname"],ENT_QUOTES);
        print "</td><td>";
        print htmlspecialchars($row["name"],ENT_QUOTES);
	print "</td><td>";
	print htmlspecialchars($row["mtime"],ENT_QUOTES);
	print "</td><td>";
	print htmlspecialchars($row["mrelease"],ENT_QUOTES);
	print "</td></tr>\n";
}

?>

</tbody></table>
<br>

<div style="text-align: center;">
  <a href="lyricssearch_form.html">前のページに戻る</a>
</div>

</body>
</html>
