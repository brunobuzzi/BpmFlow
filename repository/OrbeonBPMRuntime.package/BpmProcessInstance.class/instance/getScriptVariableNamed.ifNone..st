running
getScriptVariableNamed: aString ifNone: aBlock
	"Answer the first variable named (in ALL script) that has a variable named <aString> if there is none evaluate the zero arg block <aBlock>"
	| script |

	script := executedScripts detect: [:each | each hasVariableNamed: aString] ifNone: [^nil].

	^script getValueOf: aString ifNone: aBlock