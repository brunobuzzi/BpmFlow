connecting
addActivity: activityOrEventOrGateway
	"The receiver add the artifact <activityEventGateway> to activities collection.
	If there is already an artifact with the same name (error 108) add the OPP to the name. View issue #970"

	(activities includesKey: activityOrEventOrGateway getName) ifTrue: [^activities at: (activityOrEventOrGateway getName, ' (error_108_) ',activityOrEventOrGateway asOop printString) put: activityOrEventOrGateway].

	^activities at: activityOrEventOrGateway getName put: activityOrEventOrGateway