<?php header('Access-Control-Allow-Origin: *'); ?>
<div class="container wrap_body" style="text-align: center;width: 100%;height: 50%;">
    <script>
        var fb_accessToken;

        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            fb_accessToken = response.authResponse.accessToken;
            if (response.status === 'connected') {
                testAPI();
            } else if (response.status === 'not_authorized') {
                document.getElementById('status').innerHTML = 'Please log ' +
                    'into this app.';
            } else {
                document.getElementById('status').innerHTML = 'Please log ' +
                    'into Facebook.';
            }
        }

        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '297056597337389',
                cookie: true,  // enable cookies to allow the server to access
                xfbml: true,  // parse social plugins on this page
                version: 'v2.5' // use graph api version 2.5
            });
        };
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
        function testAPI() {
            console.log('Welcome!  Fetching your information.... ');
            FB.api('/me', function (response) {
                console.log('Successful login for: ' + response.name);
                console.log(response);
                var data = {};
                data.facebook_id = response.id;
                data.fb_token = fb_accessToken;
//                    $.getJSON("http://truytimkhachno.com/app/login?fb_id=" + response.id + "&fb_token=" + fb_accessToken, function (data) {
                $.getJSON("http://localhost/truytim/public/app/login?fb_id=" + response.id + "&fb_token=" + fb_accessToken, function (data) {
                    console.log("success");
                })
                    .success(function (e) {
                        console.log(e);

                    })
                    .error(function (e) {
                        console.log(e);
                    })
                    .complete(function (e) {
                        console.log(e);
                        location.reload();
                    });
            });
        }

        function fb_login() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
            FB.login(function () {
            }, {scope: 'email,public_profile'});
        }


    </script>
    <div onclick="fb_login()" class="fb_login_btn"><img class="fb_login_icon" src="../assets/images/fb.png"/>
        <div class="fb_login_text">Login with Facebook</div>
    </div>
</div>
