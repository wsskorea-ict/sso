<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "type">
        login-page
    <#elseif section = "header">
        통합 로그인
    <#elseif section = "form">
        <#if realm.password>
            <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="POST">
                <div class="form-box login-form-box">
                    <#if usernameEditDisabled??>
                        <input id="username" class="form-control" name="username"
                               value="${(login.username!'')}" type="text" placeholder="아이디" disabled>
                    <#else>
                        <input id="username" class="form-control" name="username"
                               value="${(login.username!'')}" type="text" placeholder="아이디" autofocus autocomplete="off">
                    </#if>
                    <label for="username" class="form-label"><i class="f"></i> 아이디</label>
                </div>

                <div class="form-box password-form-box">
                    <input id="password" class="form-control" name="password"
                           type="password" placeholder="비밀번호" autocomplete="off">
                    <label for="password" class="form-label"><i class="f"></i> 비밀번호</label>
                </div>

                <input class="form-submit" name="login" type="submit" value="로그인"/>
            </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

</@layout.registrationLayout>