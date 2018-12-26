other
removeSelectedHour
	| startTime endTime |

	(self componentValueAt: 'hour') ifNil: [^self].

	startTime := Time fromString: (self componentValueAt: 'hour').
	endTime := startTime addSeconds: ((60*60) - 1).

	model removeExceptionTimeFrom: startTime to: endTime