adding exception
timeIntervalExistFrom: startTime to: endTime
	"The receiver answer whether or not the time interval <startTime> to: <endTime> already exist"
	| newInterval |

	newInterval := Interval from: startTime hours to: endTime hours.

	hours do: [:intervalArray | | currentIterval |
		currentIterval := Interval from: intervalArray first hours to: intervalArray second hours.
		(currentIterval intersection: newInterval) notEmpty ifTrue: [^true].
	].

	^false