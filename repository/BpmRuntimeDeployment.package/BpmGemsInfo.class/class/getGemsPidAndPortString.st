other
getGemsPidAndPortString
	"The receiver answer <aString> containing the port number and the PID of the Gem process"
	| stream |

	stream := WriteStream on: String new.

	self getGemsPidAndPort keysAndValuesDo: [:port :pid  | stream nextPutAll: port printString, '>>', pid printString, ';;'].

	^stream contents