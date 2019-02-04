user creation
getExistingOrNewUserNamed: aString
	"The receiver answer a user named <aString>.
	If the user does not exist creates a new one with password <password>"

	^self getExistingOrNewUserNamed: aString password: ' ' "the password can not be empty because the hash function does no accept empty strings"