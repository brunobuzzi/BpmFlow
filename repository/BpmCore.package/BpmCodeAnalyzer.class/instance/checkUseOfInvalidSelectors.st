code analyzer
checkUseOfInvalidSelectors
	"The receiver check if any invalid selector is referenced in the parsed code <parsedNode>.
	It does NOT differentiate between class and instance methods.

	This should be addressed in the future (see issue #1063)"

	isValidSelectorsEnabled ifFalse: [^self].

	self getReferencedSelectorsByClasses keysAndValuesDo: [:receiverName :selectors |
		selectors do: [:selector | | validSelectorsForThisReceiver |
			validSelectorsForThisReceiver := validSelectors at: receiverName ifAbsent: [#()].
			(validSelectorsForThisReceiver includes: selector) ifFalse: [self addBlockWarning: ('Invalid selector used [', selector , '] in class [', receiverName, ']')]
		].
	].