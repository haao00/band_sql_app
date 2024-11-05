<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="overall.css">
  <title>HOME</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="header.css">
  <style>
    body {
      background-image: url(band背景.png);
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    
    h2 {
      color: white;
    }
    
    form {
      margin-top: 50px;
    }
    
    table {
      margin: 0 auto;
    }
    
    .image-container {
      display: inline-block;
      text-align: center;
      margin: 20px;
    }
  </style>
</head>
<body>
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
        <li><a href="information.php">INFO</a></li>
      </ul>
    </nav>
  </header>
  
  <div style="background-image: url(band背景.png);"></div>            
  
  <div class="text-line">
    <h2>HOME</h2>
  </div>
  <p class="txt">このホームページでは、掲載されているバンドグループの詳細な情報を確認したり<br>歌詞の一部から検索や曲について検索することができます！</p>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <h3 class="txt2"><font color="white">BANDGROUP</h3>
  <p class="txt">グループのアイコンをクリックすると、そのグループの詳細をチェックすることができます！</p>
  
  <div style="text-align: center;">
    <div class="image-container">
      <a href="home1.php">
        <img src="文藝天国.png" width="300"><br>
        <span>文藝天国</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home2.php">
        <img src="BLACKPINK.png" width="300"><br>
        <span>BLACKPINK</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home3.php">
        <img src="yonige.png" width="300"><br>
        <span>yonige</span><br><br>
      </a>
    </div>
  </div>
  
  <div style="text-align: center;">
    <div class="image-container">
      <a href="home4.php">
        <img src="羊文学.png" width="300"><br>
        <span>羊文学</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home5.php">
        <img src="Charlie Puth.png" width="300"><br>
        <span>Charlie Puth</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home6.php">
        <img src="シズゴ.png" width="300"><br>
        <span>the shes gone</span><br><br>
      </a>
    </div>
  </div>
  
  <div style="text-align: center;">
    <div class="image-container">
      <a href="home7.php">
        <img src="easpa.png" width="300"><br>
        <span>easpa</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home8.php">
        <img src="RADWIMPS.png" width="300"><br>
        <span>RADWIMPS</span><br><br>
      </a>
    </div>
    <div class="image-container">
      <a href="home9.php">
        <img src="ONEOKROCK.png" width="300"><br>
        <span>ONEOKROCK</span><br><br>
      </a>
    </div>
    </div>
       
    <div style="text-align: center;">
    <div class="image-container">
      <a href="home10.php">
        <img src="Ado.png" width="300"><br>
        <span>Ado</span><br><br>
      </a>
    </div>
    
    <div class="image-container">
      <a href="home11.php">
        <img src="Vaundy.png" width="300"><br>
        <span>Vaundy</span><br><br>
      </a>
    </div>
    
    <div class="image-container">
      <a href="home12.php">
        <img src="AvrilLavigne.png" width="300"><br>
        <span>Avril Lavigne</span><br><br>
      </a>
    </div>
   </div>  
   
   <div style="text-align: center;">
    <div class="image-container">
      <a href="home13.php">
        <img src="BIGBANG.png" width="300"><br>
        <span>BIGBANG</span><br><br>
      </a>
    </div>  
   </div>
  
  <meta charset="UTF-8">
  <link rel="stylesheet" href="footer.css">
  <title>footer</title>
  
  <!-- footer -->
  <footer id="footer">
    <nav class="footer">
      <p>
        <a href="HOME.php">HOME</a> |
        <a href="lyricssearch_form.html">歌詞検索</a> |
        <a href="songsearch_form.html">曲検索</a> |
        <a href="information.php">INFO</a>
      </p>
      <p>BANDGROUP</p>
      <p>BioDatabase2023</p>
    </nav>
  </footer>
</body>
</html>

