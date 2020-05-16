applications
getAllApplications
	"Answer a collection with all applications in all environments"

	^self cache inject: Set new into: [:all :environment | all addAll: environment applications. all]