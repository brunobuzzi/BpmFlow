export
viewSvgProcessMap
	| currentValue |

	currentValue := self componentValueAt: 'view.svg.map' ifAbsent: [false].

	self addValue: currentValue not named: 'view.svg.map'