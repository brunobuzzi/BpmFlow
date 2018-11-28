other
addRemoveHour: time
	| endTime |

	endTime := time addTime: (Time fromString: '00:59:59').

	(selectedLateralItem timeIntervalExistFrom: time to: endTime)
	ifTrue: [selectedLateralItem removeExceptionTimeFrom: time to: endTime]
	ifFalse: [selectedLateralItem addExceptionTimeFrom: time to: endTime].