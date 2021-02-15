<?php
$servername = "localhost";
$username = "alshahee_dbuser";
$password = "3ndLdN49B6Ih";
$dbname="alshahee_db";
$conn = mysqli_connect($servername, $username, $password,$dbname);

if(!$conn){
    die('connectoion failed:'. mysqli_connect_errno());
  
} 


$response=$_REQUEST;

//////////////updating

if($response['result']=="CAPTURED"){
  $payment_status[] = array('admin' => '', 'status' =>'paid' );

}else{
  $payment_status[] = array('admin' => '', 'status' => "due");

}

 $payment_status = json_encode($payment_status);
 $payment_details =json_encode($response);
 $sale_id=$response['UDF1'];


$sql = "UPDATE sale SET payment_status='$payment_status',payment_details='$payment_details' WHERE sale_id='$sale_id'";

if ($conn->query($sql) === TRUE) {
  if($response['result']=="CAPTURED"){
      header("location:http://www.alshaheen.com.kw/demo1/home/invoice/");
  }else{
    echo "Your order failed,continue shopping";
        echo "<a href='http://www.alshaheen.com.kw/demo1/home/'>Click to contnue shopping</a>";
  }
  
} else {
  echo "Error updating record: " . $conn->error;
}


?>