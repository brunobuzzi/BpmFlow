operations
createNewUser
	| newUser |

	newUser := model class getExistingOrNewUserNamed: model username password: model password.

	self session bpmEnvironment registerUser: newUser.

	usersBatchedList add: newUser.	

	model := BpmUser new.

	^self answer