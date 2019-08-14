anonymous form
isAnonymousStartEnabled
	"Answer whether or not the receiver has anonymous start"

	^self class anonymousFormMapping includesKey: self getAnonymousFormName