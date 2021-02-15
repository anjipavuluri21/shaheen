<?php

function randString($length, $charset='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789')
{
    $str = '';
    $count = strlen($charset);
    while ($length--) {
        $str .= $charset[mt_rand(0, $count-1)];
    }

    return $str;
}
$unique_id = randString(7);
$amount="20";
$transaction_id="ENET-".$unique_id;
$passcode="53723E3B";
$sec_key=md5($transaction_id.$amount.$passcode);
$processpage= base_url() . 'home/invoice/';
 
?>
<form name="myform" method="POST" action="https://test.e.net.kw/Merchant/Payment/eNetCpgMainAPI.aspx" id="myform1">   
<div>
    <input type="hidden" name="merchant" value="EPG6123">
    <input type="hidden" name="transaction_id" value="<?php echo $transaction_id;?>"> 
    <input type="hidden" name="amount" value="<?php echo $amount;?>"> 
    <input type="hidden" name="sec_key" value="<?php echo $sec_key ;?>"> 
   <input type="hidden"   id="op_post"  value="true" name="op_post"/>
    <input type="hidden" name="md_flds" value="transaction_id:amount"> 
    <input type="hidden" name="user_email" value="anji.naga1@gmail.com"> 
    <input type="hidden" name="currency" value="KWD"> 
    <input type="hidden" name="language" value="en"> 
    <input type="hidden" name="UDF1" value="User Defind Value"> 
    <input type="hidden" name="processpage" value="http://e.net.kw/"> 
    <input type="submit" name="submit"/>     
</div>
</form>

