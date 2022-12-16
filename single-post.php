<?php include_once('database.php'); 
 $id = $_GET['post_id'];
// dumpfunk($id);
$sql = "SELECT p.id, p.title, p.body, p.created_at, p.author
                     FROM posts as p INNER JOIN comments as c ON
                    c.post_id = p.id
                    WHERE p.id = {$_GET['post_id']}";

$singlePost = fetchData($connection, $sql, true);
// var_dump($singlePost);
$sqlComments = "SELECT * FROM comments WHERE post_id = {$_GET['post_id']}";
$comments = fetchData($connection, $sqlComments, true);
function dumpfunk($data){
    echo "<pre>";
    var_dump($data);
    echo "</pre>";
}
// dumpfunk($singlePost);
?>

 <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="favicon.ico">
    <title>Single post</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link href="styles/blog.css" rel="stylesheet">
    <link href="styles/style.css" rel="stylesheet">
    
</head>

<body>
    
<?php
include_once('header.php');
 
 ?>
<div class="blog-post-single">
<h2 class="blog-post-title"><?php echo($singlePost[0]['title']) ?></h2>
                    <p class="blog-post-meta"><?php echo($singlePost[0]['created_at']) ?> by <a href="#"><?php echo($singlePost[0]['author']) ?></a></p>
                    <p><?php echo($singlePost[0]['body']) ?></p>
                    <button id="dugme" class="btn btn-default">Hide comments</button>
                    <ul id="komentari">
                    <?php foreach($comments as $comment) { ?>
                        <li><?php echo($comment['text']) ?> <br> Autor: <?php echo($comment['author']) ?></li><hr>
                        <?php } ?>
                    </ul>
                    </div>
                    <?php include("sidebar.php")?>
<?php include_once('footer.php');?>


<script src="index.js"></script>
</body>

</html>