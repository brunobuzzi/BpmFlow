tests
testZnPortsIniFormat
	| file contents |

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/zn-ports.ini').

	file := GsFile openReadOnServer: self gsBpmFlowPath, '/scripts/zn-ports.ini'.

	contents := file contents.

	(contents subStrings: ',') do: [:each | [Number fromString: each] on: Error do: [:ex | self assert: false]].

	self assert: true