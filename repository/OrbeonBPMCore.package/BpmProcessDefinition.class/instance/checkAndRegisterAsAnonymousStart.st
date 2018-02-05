anonymous form
checkAndRegisterAsAnonymousStart
	"The receiver check if it has and anonymous start. If <true> register itself in the anonymous start Dictionary"

	self startEvent hasAnonymousStart ifTrue: [self class registerAnonymousStartFor: self].