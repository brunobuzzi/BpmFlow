applications
getAllApplications
	"Answer a collection with all applications in all environments"
	| all |

	all := Set new.

	self cache do: [:environment | environment applicationsDo: [:app | all add: app]].

	^all