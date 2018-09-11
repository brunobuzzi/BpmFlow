other
getRolsIn: aBpmEnvironment forApplication: anAbstractApplication
	"Answer a collection with all roles for application <anAbstractApplication> (BpmApplication or OrbeonApplication)"

	^(self getAllRolesIn: aBpmEnvironment) select: [:each | each application == anAbstractApplication]