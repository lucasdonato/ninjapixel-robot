*** Variables ***

${BT_ACCOUNT}       id=qaninja.com.pixel:id/accountButt
${INPUT_EMAIL}      id=qaninja.com.pixel:id/usernameTxt
${INPUT_PASS}       id=qaninja.com.pixel:id/passwordTxt
${BT_LOGIN}         id=qaninja.com.pixel:id/loginButt

${REFRESH_CART}     id=qaninja.com.pixel:id/refreshButt

${POPUP}            id=android:id/message
${POPUP_OK}         id=android:id/button1

${MENU_LIST}        id=qaninja.com.pixel:id/ibnt_icon_iv

# Paypal
${PAYPAL_EMAIL}     xpath=//android.widget.EditText[@content-desc="Email"]
${PAYPAL_PASS}      xpath=//android.widget.EditText[@content-desc="Password"]
${PAYPAL_LOGIN}     xpath=//*[@text='Log In']
${PAYPAL_PAY}       xpath=//*[@text='Pay']