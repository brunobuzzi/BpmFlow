user creation
getExistingOrNewUserNamed: aString password: password forEnvironment: aBpmEnvironment
	"The receiver answer a user named <aString>.
	If the user does not exist creates a new one with password <password>."

	(self getUserNamed: aString) ifNotNil: [:user | ^user].
 
	^self newUsername: aString password: password forEnvironment: aBpmEnvironment