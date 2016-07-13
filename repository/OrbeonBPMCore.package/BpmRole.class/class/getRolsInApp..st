other
getRolsInApp: anAbstractApplication
	"Answer a collection with all roles for application <anAbstractApplication> (BpmApplication or OrbeonApplication)"

	^self getAllRoles select: [:each | each application == anAbstractApplication]