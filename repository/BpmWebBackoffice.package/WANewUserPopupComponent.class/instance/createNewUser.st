other
createNewUser
	| user userName pwd |

	userName := self componentValueAt: 'username'.
	(userName isNil or: [userName isEmpty]) ifTrue: [^self].
	pwd := self componentValueAt: 'password'. 

	user := BpmUser getExistingOrNewUserNamed: userName password: pwd.

	parent updateListWith: user