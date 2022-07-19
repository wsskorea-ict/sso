<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "type">
        mfa-page
    <#elseif section = "header">
        인증 코드 입력
    <#elseif section = "form">
        <p class="page-description text-center">인증 앱에서 코드를 확인하세요</p>
        <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="POST" id="mfa-form">
            <input type="hidden" name="otp">

            <div class="mfa-wrapper">
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="0" class="form-control text-center mfa-code-input">
                </div>
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="1" class="form-control text-center mfa-code-input">
                </div>
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="2" class="form-control text-center mfa-code-input">
                </div>
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="3" class="form-control text-center mfa-code-input">
                </div>
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="4" class="form-control text-center mfa-code-input">
                </div>
                <div class="form-box">
                    <input maxlength="1" autocorrect="off" autocomplete="off" autocapitalize="off"
                           spellcheck="false" required
                           type="tel" data-code="5" class="form-control text-center mfa-code-input">
                </div>
            </div>
<#--            <div>-->
<#--                <input type="submit" class="form-submit" value="로그인">-->
<#--            </div>-->
        </form>
        <div class="text-center problemMail">
            <a href="mailto:abc@example.com">
                <i class="fa-regular fa-circle-question"></i> 인증앱에 문제가 발생했나요?
            </a>
        </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

</@layout.registrationLayout>