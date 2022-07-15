<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "type">
        mfa-page
    <#elseif section = "header">
        인증 코드 입력
    <#elseif section = "form">
        <p class="page-description text-center">인증 앱에서 코드를 확인하세요</p>
        <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="POST">
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
                <input type="submit" class="form-submit" value="로그인">
            </div>
        </form>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

</@layout.registrationLayout>