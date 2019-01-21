other
createNewUser
	| user userName pwd |

	userName := self componentValueAt: 'username'.
	(userName isNil or: [userName isEmpty]) ifTrue: [^self].
	pwd := self componentValueAt: 'password'. 

	pwd ifEmpty: [^self].

	user := BpmUser getExistingOrNewUserNamed: userName password: pwd.

	self session bpmEnvironment registerUser: user ifPresent: [].

	parent updateListWith: user