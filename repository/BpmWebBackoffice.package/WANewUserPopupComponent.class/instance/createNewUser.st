other
createNewUser
	| user userName pwd |

	userName := self componentValueAt: 'username'.
	(userName isNil or: [userName isEmpty]) ifTrue: [^self].
	pwd := self componentValueAt: 'password'. 

	pwd ifEmpty: [^parent informUserWithEmptyPassword].

	(self defaultBpmUserClass getUserNamed: userName) ifNotNil: [:currentUser | ^parent informUserAlreadyExist: currentUser].
 
	user := self defaultBpmUserClass getExistingOrNewUserNamed: userName password: pwd.

	self session bpmEnvironment registerUser: user ifPresent: [].

	parent updateListWith: user