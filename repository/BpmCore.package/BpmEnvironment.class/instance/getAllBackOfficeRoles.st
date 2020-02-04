roles
getAllBackOfficeRoles
	"Answer a collection with all backoffice roles of the receiver"

	^applications inject: OrderedCollection new into: [:all :each | all addAll: each backofficeRoles. all]