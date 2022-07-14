<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSO 로그인 : WSSKOREA</title>

    <link rel="stylesheet" href="./assets/css/style.css">

</head>
<body class="step1">

<div>
    <h2 class="portal-title text-center"><b>WSS</b>KOREA PORTAL</h2>

    <div class="login-page page">
        <div class="content-box">
            <h3 class="page-title text-center">통합 로그인</h3>

            <form action="" method="post">
                <div class="form-box login-form-box">
                    <input type="text" name="userid" id="userid" class="form-control" placeholder="아이디" required>
                    <label for="userid" class="form-label"><i class="f"></i> 아이디</label>
                </div>
                <div class="form-box password-form-box">
                    <input type="password" name="password" id="password" class="form-control" placeholder="비밀번호" required>
                    <label for="password" class="form-label"><i class="f"></i> 비밀번호</label>
                </div>
                <div class="auto_login-form-box">
                    <input type="checkbox" name="auto-login" id="auto-login">
                    <label for="auto-login">로그인 유지</label>
                </div>
                <div>
                    <button type="submit" class="form-submit">로그인</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>