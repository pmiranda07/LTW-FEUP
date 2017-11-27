<?php
  include_once("database/connection.php");

  // Insert image data into database
  $stmt = $dbh->prepare("INSERT INTO images VALUES(NULL, ?)");
  $stmt->execute(array($_POST['title']));

  // Get image ID
  $id = $dbh->lastInsertId();

  // Generate filenames for original, small and medium files
  $originalFileName = "assets/users/originals/$id.jpg";
  $smallFileName = "assets/users/thumbs_small/$id.jpg";
  $mediumFileName = "assets/users/thumbs_medium/$id.jpg";

  // Move the uploaded file to its final destination
  move_uploaded_file($_FILES['image']['tmp_name'], $originalFileName);

  // Crete an image representation of the original image
  $original = imagecreatefromjpeg($originalFileName);

  $width = imagesx($original);     // width of the original image
  $height = imagesy($original);    // height of the original image
  $square = min($width, $height);  // size length of the maximum square

  // Create and save a small square thumbnail
  $small = imagecreatetruecolor(200, 200);
  imagecopyresized($small, $original, 0, 0, ($width>$square)?($width-$square)/2:0, ($height>$square)?($height-$square)/2:0, 200, 200, $square, $square);
  imagejpeg($small, $smallFileName);

  // Calculate width and height of medium sized image (max width: 400)
  $mediumwidth = $width;
  $mediumheight = $height;
  if ($mediumwidth > 400) {
    $mediumwidth = 400;
    $mediumheight = $mediumheight * ( $mediumwidth / $width );
  }

  // Create and save a medium image
  $medium = imagecreatetruecolor($mediumwidth, $mediumheight);
  imagecopyresized($medium, $original, 0, 0, 0, 0, $mediumwidth, $mediumheight, $width, $height);
  imagejpeg($medium, $mediumFileName);

  header("Location: index.php");
?>
