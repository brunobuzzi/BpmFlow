applications
getAllApplications
	"Answer a collection with all applications in all environments"
	| all |

	all := Set new.

	environments do: [:environment | environment applicationsDo: [:app | all add: app]].

	^all