*bpmxpdl
setBpmStadartLoopOptionsFor: aBpmStandartTaskLoop
	"The receiver set the loop for BPM element <aBpmStandartTaskLoop>"
	| loopElement loopStandardElement loopConditionElement |

	loopElement := xmlSegment elementAt: 'Loop' ifAbsent: [XpdlIncompleteContentsException signal: '[Loop] node not found'].
	loopStandardElement := loopElement elementAt: 'LoopStandard' ifAbsent: [XpdlIncompleteContentsException signal: '[LoopStandard] node not found'].
	loopConditionElement := loopStandardElement elementAt: 'LoopCondition' ifAbsent: [XpdlIncompleteContentsException signal: '[LoopCondition] node not found'].

	aBpmStandartTaskLoop 
		loopCondition: loopConditionElement innerXML;
		loopMaximum: (Number fromString: (loopStandardElement attributeAt: 'LoopMaximum' ifAbsent: [XpdlIncompleteContentsException signal: '[LoopMaximum] attribute not found']));
		testTime: (loopStandardElement attributeAt: 'TestTime' ifAbsent: ['After']) asLowercase asSymbol.