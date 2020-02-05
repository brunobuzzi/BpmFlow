applications
getAllApplications

	^self cache inject: Set new into: [:all :environment | all addAll: environment applications. all]