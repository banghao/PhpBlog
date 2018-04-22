<?php
header('Content-Type:image/png');
$nmsg=array();
$yzm=array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H"
,"I","J","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h"
,"i","j","k","m","n","o","p","q","r","s","t","u","v","w","x","y","z");
for($Tmpa=0;$Tmpa<4;$Tmpa++){
    $x=rand(0,61);
    $nmsg[$Tmpa]=$yzm[$x];
}
$im=imagecreatetruecolor(120,55);
$blue=imagecolorallocate($im,135,206,250);
$white=imagecolorallocate($im,255,255,255);
$red=imagecolorallocate($im,255,0,0);
$greed=imagecolorallocate($im,0,255,0);
$back=imagecolorallocate($im,0,0,0);
imagefill($im,0,0,$blue);
$font='C:\Windows\Fonts\SIMLI.TTF';
imagettftext($im,20,0,29,40,$white,$font,$nmsg[0]);
imagettftext($im,20,0,54,40,$red,$font,$nmsg[1]);
imagettftext($im,20,0,79,40,$greed,$font,$nmsg[2]);
imagettftext($im,20,0,99,40,$back,$font,$nmsg[3]);
for($i=0;$i<4;$i++){
    $linecolor = imagecolorallocate($im,rand(80,220), rand(80,220),rand(80,220));
    imageline($im,rand(1,119), rand(1,54),rand(1,119), rand(1,54),$linecolor);
}
$imgeText = $nmsg[0].$nmsg[1].$nmsg[2].$nmsg[3];
session_start();
$_SESSION['imgeText']=$imgeText;
imagepng($im);
imagedestroy($im);
