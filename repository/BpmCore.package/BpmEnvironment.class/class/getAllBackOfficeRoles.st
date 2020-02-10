roles
getAllBackOfficeRoles
	"Answer a collection with all backoffice roles in all environments"

	^self cache inject: Set new into: [:all :environment | all addAll: environment getAllBackOfficeRoles. all]