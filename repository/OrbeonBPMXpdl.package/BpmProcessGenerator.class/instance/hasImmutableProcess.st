process definition creation
hasImmutableProcess
	"Answer whether or not any current versions of the processes (in global cache) has immutable flag on <true>"
	"If <true> then NO process can be imported"

	^self processes anySatisfy: [:each | each getLatestVersion isImmutable]