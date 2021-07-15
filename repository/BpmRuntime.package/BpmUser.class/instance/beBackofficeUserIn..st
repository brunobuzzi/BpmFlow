roles
beBackofficeUserIn: anApplication
	"The receiver is granted as Backoffice role (rol named 'admins') for application <anApplication> "
	| adminsRole |

	adminsRole := systemRoot createNewOrGetExistingBackOfficeRole: 'admins' in: anApplication applicationName.
	adminsRole isAdmin: true.  " 'admins' roles should be always <admins>"
	adminsRole grantUser: self ifPresent: [].