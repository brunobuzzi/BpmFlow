bpm users
registerUserNamed: userName password: userPass ifPresent: aBlock
	| appUser bpmUser |

	appUser := ApplicationUser newUserNamed: userName password: userPass.

	self registerUser: appUser ifPresent: [appUser := self getUserNamed: userName ifAbsent: []].

	bpmUser := BpmUser newAs: appUser.

	^bpmUser