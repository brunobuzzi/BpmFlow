other
getAllRolesIn: aBpmEnvironment
	"Answer a collection with all roles all caches (frontoffice and backoffice)"

	^aBpmEnvironment applications inject: OrderedCollection new into: [:all :each | all addAll: each frontofficeRoles. all]