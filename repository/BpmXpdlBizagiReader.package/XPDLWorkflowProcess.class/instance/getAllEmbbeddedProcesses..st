embedded procs
getAllEmbbeddedProcesses: anOrderedCollection

	anOrderedCollection add: self.

	embeddedSubprocesses do: [:each | each getAllEmbbeddedProcesses: anOrderedCollection].

	^anOrderedCollection