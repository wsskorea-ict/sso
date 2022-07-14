<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSO 로그인 : WSSKOREA</title>

    <link rel="stylesheet" href="./assets/css/style.css">
    <script type="text/javascript" src="./assets/js/script.js"></script>

</head>
<body>

<div>
    <h2 class="portal-title text-center"><b>WSS</b>KOREA PORTAL</h2>

    <div class="mfa-page page">
        <div class="content-box">
            <h3 class="page-title text-center">인증 코드 입력</h3>
            <p class="page-description text-center">인증 앱에서 코드를 확인하세요</p>

            <form action="" method="post" id="mfa-form">
                <input type="hidden" name="mfa">

                <div class="mfa-wrapper">
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code0" class="form-control text-center mfa-code-input">
                    </div>
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code1" class="form-control text-center mfa-code-input">
                    </div>
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code2" class="form-control text-center mfa-code-input">
                    </div>
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code3" class="form-control text-center mfa-code-input">
                    </div>
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code4" class="form-control text-center mfa-code-input">
                    </div>
                    <div class="form-box">
                        <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                               spellcheck="false" required
                               type="tel" id="code5" class="form-control text-center mfa-code-input">
                    </div>
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