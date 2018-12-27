line m
getConnectionPointsStringFrom: coordinates
	"The receiver answer <aString> with a line-m type for coordinates of transition <aXPDLTransitionNode>"
	| pointsString |

	pointsString := PrintStream on: (String withAll: 'M').
	coordinates do: [:eachPoint | pointsString nextPutAll: (eachPoint x printString, ',', eachPoint y printString), ' '].

	^pointsString contents