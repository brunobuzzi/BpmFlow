other
addRemoveHour: time
	| endTime |

	endTime := time addTime: (Time fromString: '00:59:59').

	(model timeIntervalExistFrom: time to: endTime)
	ifTrue: [model removeExceptionTimeFrom: time to: endTime]
	ifFalse: [model addExceptionTimeFrom: time to: endTime].