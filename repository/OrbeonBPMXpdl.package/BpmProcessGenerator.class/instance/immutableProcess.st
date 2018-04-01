process definition creation
immutableProcess
	"Answer a collection of Bpm processes <BpmProcessDefinition> with immutable flag on <true>"

	^self processes select: [:each | | latestVersion | 
			latestVersion := each getLatestVersion.
			latestVersion notNil and: [latestVersion isImmutable]]