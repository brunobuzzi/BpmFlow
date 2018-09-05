other
getRolsIn: aBpmEvironment forApplication: anAbstractApplication
	"Answer a collection with all roles for application <anAbstractApplication> (BpmApplication or OrbeonApplication)"

	^(self getAllRolesIn: aBpmEvironment) select: [:each | each application == anAbstractApplication]