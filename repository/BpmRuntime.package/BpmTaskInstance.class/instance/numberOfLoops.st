other
numberOfLoops
	"The receiver answer the number of Standard Loops"

	performersRegistry ifNil: [^0].

	^1 + performersLoops size "1 is for the current loop in <performersRegistry> instance variable"