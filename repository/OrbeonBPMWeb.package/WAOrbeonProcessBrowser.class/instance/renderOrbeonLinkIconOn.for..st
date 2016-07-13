process
renderOrbeonLinkIconOn: html for: aBpmTaskInstance

	"a granted user with edit permission"
	(aBpmTaskInstance isGrantedUser: self session user) 
	ifTrue: [^self createOrbeonLinkOn: html for: aBpmTaskInstance].
	"a user that has edit permission in other part of the process and does NOT has it this Transition, is granted to READ. 
	If the Form has not been created then there is NOTHING to view"
	((aBpmTaskInstance isGrantedUser: self session user) and: [aBpmTaskInstance hasForm]) 
	ifTrue: [^self createOrbeonLinkOn: html for: aBpmTaskInstance].

	"self createLinkForSeasideComponentOn: "