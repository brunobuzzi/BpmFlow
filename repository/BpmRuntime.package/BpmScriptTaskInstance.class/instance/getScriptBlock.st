script
getScriptBlock
	"The receiver create a new BlockClosure for the script code"

	scriptBlock ifNotNil: [^scriptBlock].

	^scriptBlock := self getScriptCode evaluate. "it create aBlock (#getScriptCode answer a String)"