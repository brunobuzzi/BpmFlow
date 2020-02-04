roles
getAllRoles
	"Answer a collection with all roles of the receiver (frontoffice and backoffice)"

	^applications inject: OrderedCollection new into: [:all :each | all addAll: (each frontofficeRoles, each backofficeRoles). all]