<%-- 
    Document   : signup
    Created on : Jul 28, 2020, 3:49:03 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AM Education</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body style="background: url(img/nature.jpg);background-size: cover;background-attachment: fixed">

        <div class="container" >
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align">AM Education</h3>
                            <h3 style=" margin-top: 10px;" class="center-align">Register here</h3>
                            <h5 id="msg"></h5>
                            <div class="form center-align" id="myform" >
                                <form action="register" method="post" id="mform" >
                                    <input type="text" name="user" placeholder="Enter user name"/>
                                    <input type="password" name="password" placeholder="Enter your password" />
                                    <input type="email" name="email" placeholder="Write your email address here" />


                                    <button type="submit" class="btn">Submit</button>
                                </form>

                            </div>
                            <div class="loader center-align" style="margin-top: 10px; " >

                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h3>Please wait.........</h3>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                $("#mform").on('submission',function(event){
                    
                    event.preventDefault();
                    var f=(this).serialize();
                    console.log(f);
                    $.ajax({
                       url: "register",
                       data: f ,
                       type: 'POST',
                       
                       success: function(data,textStatus,jqXHR){
                        console.log(data);
                        console.log("Success.....");
                       },
                       error: function(jqXHR,textStatus,errorThrown){
                           
                           
                           console.log(f);
        
                             console.log("Error.......");
                       }
                       
                       
                    });
                });
            });
        </script>


    </body>
</html>
