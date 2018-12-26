other
addSelectedHour
	| startTime endTime |

	(self componentValueAt: 'hour') ifNil: [^self].

	startTime := Time fromString: (self componentValueAt: 'hour').
	endTime := startTime addTime: (Time fromString: '00:59:59').

	model addExceptionTimeFrom: startTime to: endTime