distribution
getAverageTime
	| totalTime |

	totalTime := processInstances inject: 0 into: [:sum :each | sum + each getTotalTime asSeconds].

	^(totalTime / processInstances size) asScaledDecimal: 2