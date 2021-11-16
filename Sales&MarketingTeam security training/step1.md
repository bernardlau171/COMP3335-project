# Creating secure password

A secure password is needed to ensure database security.

Say you are John from the sales and marketing team, login using the following command:

`mysql -u John -p45641`{{execute}}

The default password is 45641, which is a simple number combination and could easily be brute forced by malicious third party, so we have to update the password to a better one.

We recommend a password with a combination of numbers, uppercase letters, lowercase letters and special characters (eg. $,%,* etc)

Use the following statement to configure a new password, for simpler implementation in this sample scenario, lets use newPass as the new password:
`ALTER USER 'John' IDENTIFIED BY 'newPass';`

Success! Now you have updated your password!
