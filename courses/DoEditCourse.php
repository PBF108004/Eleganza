<?php
require_once("../db_connect.php");

$id=$_POST["course_id"];
// var_dump($id);
$name = $_POST["name"];
$course_category = number_format($_POST["course_category_level"]);
$teacher = number_format($_POST["course_teacher_name"]);
$style = $_POST["style"];
$comment = $_POST["comment"];
$picture = $_POST["pic"];


$des = $_POST["des"];
// var_dump($_POST["course_category_level"]);
$quota = number_format($_POST["quota"]);
$price = ($_POST["price"]);
// $start_date = $_POST["start_date"];
// $end_date = $_POST["end_date"];
// $time = $_POST["time"];

if ($_FILES["course_images"]["error"] == 0) {
    $filename = time(); //根據時間戳記
    $fileExt = pathinfo($_FILES["course_images"]["name"], PATHINFO_EXTENSION); //還有副檔名
    $filename = $filename . "." . $fileExt; //合成新的檔名
 
    if (move_uploaded_file($_FILES["course_images"]["tmp_name"], "./course_images/" . $filename)) { //改成重新命名的名字
        $now = date('Y-m-d H:i:s');
        $sql = "UPDATE course SET name='$name', course_category_id='$course_category', teacher_id='$teacher', quota='$quota', price='$price', style_id='$style', description='$des', comment='$comment', start_date='TBD', end_date='TBD', time='44', valid=1, img='$filename' WHERE course_id=$id";

        
         if ($conn->query($sql)) {
             echo "新增資料完成";
         } else {
             echo "新增資料錯誤:" . $conn->error;
         }
      }
}






if ($conn->query($sql) === TRUE) {
    // 输出之前没有任何内容
    $conn->close();
    header("location: ./course-edit.php?id=$id"); 
    //id無處可安放 需要給它一個地方安置 
} else {
    echo "更新資料錯誤: " . $conn->error;
}

?>