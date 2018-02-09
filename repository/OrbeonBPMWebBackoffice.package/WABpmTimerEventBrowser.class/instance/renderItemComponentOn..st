other
renderItemComponentOn: html
	| timer blockSource cleanBlockSource stringToRemove |

	timer := selectedLateralItem isTimerEvent 
		ifFalse: [selectedLateralItem getStartEvent]
		ifTrue: [selectedLateralItem definition].

	blockSource := timer getTimerBlock blockSource.
	stringToRemove := '"This is source for a block.  "'.
	cleanBlockSource := ((blockSource indexOfSubCollection: stringToRemove) = 1)
		ifTrue: [blockSource copyFrom: stringToRemove size + 1 to: blockSource size] 
		ifFalse: [blockSource].


	html output: cleanBlockSource