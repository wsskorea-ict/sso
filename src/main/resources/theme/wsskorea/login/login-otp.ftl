<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('totp'); section>
    <#if section="header">
        ${msg("doLogIn")}
    <#elseif section="form">
        <form id="kc-otp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}"
            method="post">
            <#if otpLogin.userOtpCredentials?size gt 1>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <#list otpLogin.userOtpCredentials as otpCredential>
                            <input id="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListInputClass!}" type="radio" name="selectedCredentialId" value="${otpCredential.id}" <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>
                            <label for="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListClass!}" tabindex="${otpCredential?index}">
                                <span class="${properties.kcLoginOTPListItemHeaderClass!}">
                                    <span class="${properties.kcLoginOTPListItemIconBodyClass!}">
                                      <i class="${properties.kcLoginOTPListItemIconClass!}" aria-hidden="true"></i>
                                    </span>
                                    <span class="${properties.kcLoginOTPListItemTitleClass!}">${otpCredential.userLabel}</span>
                                </span>
                            </label>
                        </#list>
                    </div>
                </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="otp" class="${properties.kcLabelClass!}">${msg("loginOtpOneTime")}</label>
                </div>

            <div class="${properties.kcInputWrapperClass!}">
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
                <input id="otp" name="otp" autocomplete="off" type="hidden"
                       autofocus aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"/>
<#--                <input id="otp" name="otp" autocomplete="off" type="text" class="${properties.kcInputClass!}"-->
<#--                       autofocus aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"/>-->

                <#if messagesPerField.existsError('totp')>
                    <span id="input-error-otp-code" class="${properties.kcInputErrorMessageClass!}"
                          aria-live="polite">
                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                    </span>
                </#if>
            </div>
        </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input
                        class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                        name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>