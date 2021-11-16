page 3
Database security - Password Validation 

The most common mechanism for online authentication is password-based authentication. However, passwords are frequently set to be short, made up of predictable words and phrases that are also semantically related. Reddit, Twitter, and Yahoo! also pointed out that the hackers can easily guess the passwords or crack the password files. As to strengthen the existing of password-based authentication and authorization, MEDIUM password policy should be inplaced. 

MEDIUM password policy required passwords must contain at least 1 numeric character, 1 lowercase character, 1 uppercase character, and 1 special (nonalphanumeric) character.

Password Validation Component Installation:
INSTALL COMPONENT 'file://component_validate_password'; {{execute}} 

If the validate_password component is enabled, it exposes several system variables that enable configuration of password checking:
SHOW VARIABLES LIKE 'validate_password.%';{{execute}} 

If the validate_password component is enabled, it exposes status variables that provide operational information:
SHOW STATUS LIKE 'validate_password.%';{{execute}} 

Password Validation has been available now, please try it !
