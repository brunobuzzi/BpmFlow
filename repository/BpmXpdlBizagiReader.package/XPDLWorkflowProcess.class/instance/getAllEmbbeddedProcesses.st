embedded procs
getAllEmbbeddedProcesses
	| all |

	all := OrderedCollection new.

	embeddedSubprocesses do: [:each | each getAllEmbbeddedProcesses: all].

	^all