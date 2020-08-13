anonymous form
getAnonymousFormName
	"Answer the name of the anonymous form"

	self canBeStartedByAnonymousForm 
	ifFalse: [^NoAnonymousStartException signal: 'This process can NOT be started by an anonymous form'].

	^startEvent getAnonymousFormName