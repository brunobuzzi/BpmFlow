tasks details
viewProcessDetails
	| currentValue |

	currentValue := self componentValueAt: 'view.process.details' ifAbsent: [false].

	self addValue: currentValue not named: 'view.process.details'