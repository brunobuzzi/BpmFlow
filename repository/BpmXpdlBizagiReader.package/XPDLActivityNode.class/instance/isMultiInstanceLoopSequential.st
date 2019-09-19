other
isMultiInstanceLoopSequential
	"The receiver answer whether or not the multi instance loop is sequential (opposite to parallel)"
	| loopElement loopMIElement |

	loopElement := xmlSegment elementAt: 'Loop' ifAbsent: [XpdlIncompleteContentsException signal: '[Loop] node not found'].
	loopMIElement := loopElement elementAt: 'LoopMultiInstance' ifAbsent: [^false].

	^(loopMIElement attributeAt: 'MI_Ordering' ifAbsent:[]) = 'Sequential'