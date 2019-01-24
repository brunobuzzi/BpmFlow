import
viewSvgProcessMap: aBpmProcessDefinition
	| currentValue |

	currentValue := self componentValueAt: 'view.svg.map' ifAbsent: [nil].

	(currentValue == aBpmProcessDefinition)
	ifFalse: [self addValue: aBpmProcessDefinition named: 'view.svg.map']
	ifTrue: [self addValue: nil named: 'view.svg.map'].