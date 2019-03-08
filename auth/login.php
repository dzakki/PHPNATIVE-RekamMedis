<?php require_once "../_config/config.php";
if (isset($_SESSION['user'])) {
   echo "<script>window.location='".base_url('index.php')."'</script>";
}else{ 
?> 
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login - Rumah Sakit</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url('_assets/css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=base_url('_assets/css/simple-sidebar.css')?>" rel="stylesheet">

</head>

<body>

<div id="wrapper">
 <div class="container">
     <div class="center" style="margin-top: 210px; width: 280px">
        <?php
        if(isset($_POST['login'])){
            $user =trim(mysqli_real_escape_string($con, $_POST['user']));
            $pass =sha1(trim(mysqli_real_escape_string($con, $_POST['pass'])));
            $sql_login=mysqli_query($con, "SELECT * FROM tb_user WHERE username = '$user' AND password = '$pass' ");
            if(mysqli_num_rows($sql_login) > 0){
                $_SESSION['user'] = $user;
                echo "<script>window.location='".base_url('')."'</script>";
            }else{ ?>
                <div class="row">
                    <div class="col-lg-6 col-lg-offset-3">
                        <div class="alert alert-danger alert-dismissable" role="alert">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <strong>Login gagal</strong> Usernma / Password salah
                        </div>
                    </div>
                </div>
            <?php    
            }
        }
        ?>
         <form class="" method="post" class="navbar-form">
            <div class="input-grup">
                <span class="input-grup-addon"><i>Username </i></span>
                <input type="text" name="user" class="form-control" required />
            </div>
            <div class="input-grup">
                <span class="input-grup-addon"><i>Password</i></span>
                <input type="password" name="pass" class="form-control" required />
            </div>
            <div class="input-grup" style="margin-top: 10px">
                <input type="submit" name="login" class="btn brn-primary"  value="login" />
            </div>
         </form>
     </div>
 </div>    
</div>

    <!-- Bootstrap core JavaScript -->
    <script src="<?=base_url('_assets/jquery/jquery.min.js')?>"></script>
    <script src="<?=base_url('_assets/js/bootstrap.bundle.min.js')?>"></script>

</body>

</html>
<?php }?>