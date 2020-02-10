roles
getAllRoles
	"Answer a collection with all roles in all environments"

	^self cache inject: Set new into: [:all :environment | all addAll: environment getAllRoles. all]