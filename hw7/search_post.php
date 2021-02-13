<!DOCTYPE html>
<html>
<head>
<title>SEARCH MUSIC</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body  {
  background-image: url("https://wallpaperaccess.com/full/358836.jpg");
}
</style>
</head>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">

<!-- Indicators -->
<ul class="carousel-indicators">
  <li data-target="#demo" data-slide-to="0" class="active"></li>
  <li data-target="#demo" data-slide-to="1"></li>
  <li data-target="#demo" data-slide-to="2"></li>
  <li data-target="#demo" data-slide-to="3"></li>
  <li data-target="#demo" data-slide-to="4"></li>
</ul>

<!-- The slideshow -->
<div class="carousel-inner">
  <div class="carousel-item active">
    <center><img src="https://upload.wikimedia.org/wikipedia/en/thumb/2/27/Aimer_Midnight_Sun.jpg/330px-Aimer_Midnight_Sun.jpg" alt="P1" width="550" height="350">
    </center>
  </div>
  <div class="carousel-item">
  <center><img src="https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Aimer_Dawn.jpg/330px-Aimer_Dawn.jpg" alt="P2" width="550" height="350">
    </center>
  </div>
  <div class="carousel-item">
  <center><img src="https://images-na.ssl-images-amazon.com/images/I/9145Qjhv4cL._SL1500_.jpg" alt="P3" width="550" height="350">
    </center>
  </div>
  <div class="carousel-item">
  <center><img src="https://shirodesu.net/wp-content/uploads/2018/07/Lisa-Landspace.jpg" alt="P4" width="550" height="350">
    </center>
  </div>
  <div class="carousel-item">
  <center><img src="https://www.generasia.com/w/images/thumb/e/e8/LiSA_-_LEO-NiNE_lim_B.jpg/324px-LiSA_-_LEO-NiNE_lim_B.jpg" alt="P5" width="550" height="350">
    </center>
  </div>
</div>

<!-- Left and right controls -->
<a class="carousel-control-prev" href="#demo" data-slide="prev">
  <span class="carousel-control-prev-icon"></span>
</a>
<a class="carousel-control-next" href="#demo" data-slide="next">
  <span class="carousel-control-next-icon"></span>
</a>
</div>
</body>
</html>

<div class="container p-3 my-3 bg-dark text-white">
  <h3><center>Search Music</center></h3>
</div>

<center><input type="text" id="kw"></center>
<center><select id="typ"></center>
    <!--<option value="1">Midnight Sun</option>
    <option value="2">DAWN</option>
    <option value="3">Magic</option>
    <option value="3">Landspace</option>
    <option value="3">Leo-Nine</option>-->

<?php
    // connect database 
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "data";
    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    }
    $kw = $_POST['kw'];
    $typ = $_POST['typ'];
    $sql = "SELECT *
            FROM Music
            WHERE Name_song LIKE '%$kw%' OR Album_name  LIKE '%$kw%'";
    $result = $mysqli->query($sql);
    while($row = $result->fetch_object()) {
        echo "<option value='$row->Album_name'>$row->Album_name</option>";
    }
?>
</select>
<h5><center><button type="button" class="btn btn-dark" onclick="search()">Search</button></center></h5>
<form method="post" action="search.html">
  <h6><center><input type="submit" class="btn btn-dark" value="Normal Search"></center></h6>
</form>
<h4><center><div id="disp"></div></center></h4>

<script>
    function search() {
        kw = document.getElementById('kw').value;
        typ = document.getElementById('typ').value;
        console.log("kw=" + kw);
        console.log("typ=" + typ);
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById('disp').innerHTML = this.responseText;
                arr = JSON.parse(this.responseText);
                console.log(arr);
                if (arr.length == 0) {
                    document.getElementById('disp').innerHTML = "Not found";
                } else {
                    html = "";
                    for (i = 0; i < arr.length; i++) {
                        html += "Music name : " + arr[i].Name_song + "<br>" + 
                                "Music album : " + arr[i].Album_name + "<br>" + 
                                "Link lyrics : " + arr[i].Lylics + "<br>" + 
                                "Music time : " + arr[i].song_lenght + "<br>" +
                                "----------------------------------------------------------------------" + "<br>";
                    }
                    document.getElementById('disp').innerHTML = html;
                }
            }
        }
        parameters = "kw=" + kw + "&typ=" + typ;
        xmlhttp.open("post", "search.php");
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send(parameters);
    }
</script>
