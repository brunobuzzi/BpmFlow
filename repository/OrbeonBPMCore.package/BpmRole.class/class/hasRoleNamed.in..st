other
hasRoleNamed: aString in: anAbstractApplication
	"Answer whether or not the receiver has a role named <aString> in the Application <anAbstractApplication> (BpmApplication or OrbeonApplication)"

	^((self getRolsInApp: anAbstractApplication) select: [:each | each name = aString]) notEmpty