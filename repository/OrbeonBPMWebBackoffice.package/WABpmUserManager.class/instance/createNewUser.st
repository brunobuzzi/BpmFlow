operations
createNewUser
	| newUser |

	newUser := model class getExistingOrNewUserNamed: model username password: model password.

	usersBatchedList add: newUser.	

	model := BpmUser new.

	^self answer