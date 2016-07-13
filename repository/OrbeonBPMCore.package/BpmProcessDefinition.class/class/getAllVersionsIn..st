query
getAllVersionsIn: appName
	"Answer a collection with all processes and all processes versions in Application named <appName>"
	| all |

	all := OrderedCollection new.
	(self cache at: appName ifAbsent: [^all]) do: [:procVersions | all addAll: procVersions].

	^all