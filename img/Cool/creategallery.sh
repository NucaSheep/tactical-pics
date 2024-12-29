#!/bin/bash

#!/bin/bash

# Path to your images
IMAGE_DIR="./"

# Output HTML file
OUTPUT_FILE="./tn.html"

# Begin HTML file
cat > "$OUTPUT_FILE" <<EOL
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>tactical-pics</title>
    <link rel="icon" href="./img/logo1-bent.png">
    <link rel="stylesheet" href="./css/master.css">

    <style>
a:link {
  color: lightgreen;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: white;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

</style>
  </head>
  <body>
    <div class="all"">
      <br><br><br><br>
      <br><br><br><br>
      <h1>Image board with semi funny pictures found by <br>
        the Atomic Sheep</h1>
      <br><br><br><br
      ><br><br><br><br
      ><br><br>
      <p>Catergory: Historian</p>
      <br>
      <a href="../blyatiful/tn.html">blyatiful</a>
      <a href="../tacticalnuke/tn.html">tacticalnukes</a>
      <a href="../Historian/tn.html">Historian</a>
      <a href="../films/tn.html">films and co</a>
      <a href="../kniggetts/tn.html">kniggets</a>
      <a href="../misc/tn.html">misc</a>
      <a href="../stuff/tn.html">stuff</a>
      <br><br><br>


EOL

# Loop through all images and append to HTML
for IMAGE in "$IMAGE_DIR"/*; do
  FILENAME=$(basename "$IMAGE")
  cat >> "$OUTPUT_FILE" <<EOL
  <div class="gallery">
    <a target="_blank" href="$FILENAME">
      <img src="$FILENAME" alt="Image" width="1000" height="1000">
    </a>
    <div class="desc">""----""</div>
  </div>
EOL
done

# End HTML file
cat >> "$OUTPUT_FILE" <<EOL
</div>
</body>
</html>
EOL

echo "Gallery generated at $OUTPUT_FILE"

