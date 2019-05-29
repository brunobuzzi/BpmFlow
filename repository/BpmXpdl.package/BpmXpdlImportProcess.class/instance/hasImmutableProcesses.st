other
hasImmutableProcesses
	"Answer whether or not the receiver has immutable process.
	If a process is immutable no new versions can be created "

	processGenerator ifNil: [^false].

	^processGenerator hasImmutableProcesses