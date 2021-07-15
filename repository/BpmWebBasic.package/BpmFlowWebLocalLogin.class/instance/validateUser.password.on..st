authentication
validateUser: username password: password on: aBpmSystemRoot
	"The receiver answer <true> or <false> for the combination of user name <username> and password <password>"

	password isEmpty ifTrue: [^false]. "the password can not be empty issue #766 - secure hash does not support empty string"

	^aBpmSystemRoot usersAnySatisfy: [:each | each username = username and:[each password = password sha256Sum]]