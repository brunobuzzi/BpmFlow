seaside form link
renderSeasideFormLinkIconOn: html for: aBpmSeasideTaskInstance

	"a granted user with edit permission"
	(aBpmSeasideTaskInstance isGrantedUser: self session user) 
	ifTrue: [^self createSeasideLinkOn: html for: aBpmSeasideTaskInstance].