<?php
require_once("../db_connect.php");

$name = $_POST["name"];
$course_category = number_format($_POST["course_category_level"]);
$teacher = ($_POST["course_teacher_name"]);
$style = $_POST["style"];
$comment = $_POST["comment"];
// $picture = $_POST["pic"];


$des = $_POST["des"];
// var_dump($_POST["course_category_level"]);
$quota = ($_POST["quota"]);
$price = ($_POST["price"]);
// $start_date = $_POST["start_date"];
// $end_date = $_POST["end_date"];
// $time = $_POST["time"];

// $sql="INSERT INTO course (name, course_category_id, teacher_id, quota, price, style_id, description, comment, start_date, end_date, time, valid, img)
// VALUES ('$name', $course_category, $teacher, $quota, $price, '$style', '$des', '$comment', 'TBD', 'TBD', '44', 1, '$picture')";

// // $sql = "INSERT INTO course_images (img) 
// // VALUES ('$picture')";

// if(empty($name) || empty($teacher) || empty($quota)|| empty($price) || empty($style)){
//      echo "請輸入必要欄位";
//      exit;
//  }

if ($_FILES["course_images"]["error"] == 0) {
    $filename = time(); //根據時間戳記
    $fileExt = pathinfo($_FILES["course_images"]["name"], PATHINFO_EXTENSION); //還有副檔名
    $filename = $filename . "." . $fileExt; //合成新的檔名
 
    if (move_uploaded_file($_FILES["course_images"]["tmp_name"], "./course_images/" . $filename)) { //改成重新命名的名字
        // 可以先var_dump來看一下資料夾路徑對不對
        $now = date('Y-m-d H:i:s');
        $sql = "INSERT INTO course (name, course_category_id, teacher_id, quota, price, style_id, description, comment, start_date, end_date, time, valid, img)
                 VALUES ('$name', $course_category, $teacher, $quota, $price, '$style', '$des', '$comment', 'TBD', 'TBD', '44', 1, '$filename')";

        
         if ($conn->query($sql)) {
             echo "新增資料完成";
         } else {
             echo "新增資料錯誤:" . $conn->error;
         }
      }
}
$conn->close();
header("location: ./course-upload.php");

// 日期時間的放置 要合併還是分開再想清楚、處理