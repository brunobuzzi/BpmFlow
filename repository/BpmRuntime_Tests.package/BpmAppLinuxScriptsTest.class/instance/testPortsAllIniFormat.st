tests
testPortsAllIniFormat
	| file contents |

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/ports-all.ini').

	file := GsFile openReadOnServer: self gsBpmFlowPath, '/scripts/ports-all.ini'.

	contents := file contents.

	(contents subStrings: ',') do: [:each | [Number fromString: each] on: Error do: [:ex | self assert: false]].

	self assert: true