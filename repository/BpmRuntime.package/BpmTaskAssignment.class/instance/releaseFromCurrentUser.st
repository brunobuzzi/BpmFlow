other
releaseFromCurrentUser
	"The receiver is release from the current user"

	user ifNil: [^nil].
 
	^user untake: self