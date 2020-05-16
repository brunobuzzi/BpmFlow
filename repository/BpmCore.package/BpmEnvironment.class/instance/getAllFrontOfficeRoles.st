roles
getAllFrontOfficeRoles
	"Answer a collection with all frontoffice roles of the receiver"

	^applications inject: OrderedCollection new into: [:all :each | all addAll: each frontofficeRoles. all]