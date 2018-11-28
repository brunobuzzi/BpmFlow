distribution
getAverageTime
	"The receiver answer the average time in seconds to execute an instance of itself "
	| totalTime |

	totalTime := processInstancesSet inject: 0 into: [:sum :each | sum + each getTotalTime asSeconds].

	^(totalTime / processInstancesSet size) asScaledDecimal: 2