csv
printSystemRoleStructureIn: aBpmEnvironment
	| structure stream |

	structure := self getSystemRoleStructureIn: aBpmEnvironment.
	stream := PrintStream on: String new.

	structure do: [:each | 
		stream nextPutAll: aBpmEnvironment name, ';'.
		stream nextPutAll: each applicationName, ';'.
		stream nextPutAll: each printApplicationType, ';'.
		stream nextPutAll: each role name, ';'.
		stream nextPutAll: each printRoleType, ';'.
		stream nextPutAll: each roleIsAdmin printString, ';'.
		stream nextPutAll: each user username.
		stream nextPutAll: String lf.
 ].

	^stream contents