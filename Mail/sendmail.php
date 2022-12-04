<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
//require 'vendor/autoload.php';
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
//Create an instance; passing `true` enables exceptions
class Mailer{
    function OderMail($addressMail,$TenKh,$TieuDe,$Body){
        $mail = new PHPMailer(true);
        $mail->CharSet ='UTF-8';
        try {
        //Server settings
        $mail->SMTPDebug = 0;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'kidstuto.media@gmail.com';                     //SMTP username
        $mail->Password   = 'pyibzglsszszuatn';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;            //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('kidstuto.media@gmail.com', 'Kids TuTo Media');
        $mail->addAddress($addressMail, $TenKh);     //Add a recipient
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        $mail->addCC('kidstuto.media@gmail.com');
        //$mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        $mail->addAttachment('./public/img/logokidstuto.png', 'kidstuto_lOGO.png');    //Optional name

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $TieuDe;
        $mail->Body    = $Body;
        //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        //echo 'Message has been sent';
        } catch (Exception $e) {
            //echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
    function RegMail($addressMail,$TenKh,$TieuDe,$Body){
        $mail = new PHPMailer(true);
        $mail->CharSet ='UTF-8';
        try {
        //Server settings
        $mail->SMTPDebug = 0;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'kidstuto.media@gmail.com';                     //SMTP username
        $mail->Password   = 'pyibzglsszszuatn';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;            //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('kidstuto.media@gmail.com', 'Kids TuTo Media');
        $mail->addAddress($addressMail, $TenKh);     //Add a recipient
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        $mail->addCC('kidstuto.media@gmail.com');
        //$mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        $mail->addAttachment('./public/img/logokidstuto.png', 'kidstuto_lOGO.png');

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $TieuDe;
        $mail->Body    = $Body;
        //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        //echo 'Message has been sent';
        } catch (Exception $e) {
            //echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
    function feedMail($addressMail,$TenKh,$TieuDe,$Body){
        $mail = new PHPMailer(true);
        $mail->CharSet ='UTF-8';
        try {
        //Server settings
        $mail->SMTPDebug = 0;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'kidstuto.media@gmail.com';                     //SMTP username
        $mail->Password   = 'pyibzglsszszuatn';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;            //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom($addressMail, $TenKh);
        $mail->addAddress('kidstuto.media@gmail.com', 'Kids TuTo Media');     //Add a recipient
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        $mail->addCC($addressMail, $TenKh);
        //$mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        $mail->addAttachment('./public/img/logokidstuto.png', 'kidstuto_lOGO.png');

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $TieuDe;
        $mail->Body    = $Body;
        //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        //echo 'Message has been sent';
        } catch (Exception $e) {
            //echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}