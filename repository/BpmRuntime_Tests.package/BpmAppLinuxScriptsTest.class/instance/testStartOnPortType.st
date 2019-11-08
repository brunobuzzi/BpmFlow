tests
testStartOnPortType
	"See issue: https://github.com/brunobuzzi/BpmFlow/issues/1017"
	| gsFile contents |

	gsFile := GsFile openReadOnServer: self gsBpmFlowPath, '/scripts/start-on.sh'.
	contents := gsFile contents.
	gsFile close.
	
	"the port number passed as a bash argument it must not be a string: sh start-on.sh '8787' "
	self assert: (contents indexOfSubCollection: '''$1''') equals: 0.

	"the port number passed as a bash argument and it must be a integer: sh start-on.sh 8787 "	
	self deny: (contents indexOfSubCollection: '$1') equals: 0.