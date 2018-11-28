warning calculations
isOverdueFrom: startTimeValue to: endTimeValue

	^(self countExecutionTimeFrom: startTimeValue to: endTimeValue) > self value