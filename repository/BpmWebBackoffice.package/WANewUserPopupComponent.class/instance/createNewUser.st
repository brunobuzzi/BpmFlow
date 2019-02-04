other
createNewUser
	| user userName pwd |

	userName := self componentValueAt: 'username'.
	(userName isNil or: [userName isEmpty]) ifTrue: [^self].
	pwd := self componentValueAt: 'password'. 

	pwd ifEmpty: [^parent informUserWithEmptyPassword].

	userName := self defaultBpmUserClass getUniqueUserNameFor: userName for: self session bpmEnvironment.  "see issue #799"

	(self defaultBpmUserClass getUserNamed: userName) ifNotNil: [:currentUser | ^parent informUserAlreadyExist: currentUser].
 
	user := self defaultBpmUserClass newUsername: userName password: pwd forEnvironment: self session bpmEnvironment.

	parent updateListWith: user.