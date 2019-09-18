*bpmxpdl
setBpmMultiInstanceLoopOptionsFor: aBpmMultiInstanceTaskLoop
	"The receiver set the loop for BPM element <aBpmMultiInstanceTaskLoop>"
	| loopElement loopMIElement |

	loopElement := xmlSegment elementAt: 'Loop' ifAbsent: [XpdlIncompleteContentsException signal: '[Loop] node not found'].
	loopMIElement := loopElement elementAt: 'LoopMultiInstance' ifAbsent: [XpdlIncompleteContentsException signal: '[LoopMultiInstance] node not found'].

	aBpmMultiInstanceTaskLoop isSequential: ((loopMIElement attributeAt: 'MI_Ordering' ifAbsent:[]) = 'Sequential')