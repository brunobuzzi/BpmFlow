process definition creation
immutableProcesses
	"Answer a collection of Bpm processes <BpmProcessDefinition> with immutable flag on <true>"

	^processes select: [:each | | latestVersion | 
			latestVersion := each getLatestVersion.
			latestVersion notNil and: [latestVersion isImmutable]]