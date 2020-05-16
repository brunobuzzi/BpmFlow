roles
getAllFrontOfficeRoles
	"Answer a collection with all frontoffice roles in all environments"

	^self cache inject: Set new into: [:all :environment | all addAll: environment getAllFrontOfficeRoles. all]