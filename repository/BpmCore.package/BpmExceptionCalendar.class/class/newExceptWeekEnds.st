other
newExceptWeekEnds
	| calendar |

	calendar := self new initialize.

	calendar addAllWeekEndsOf: Date today year.

	^calendar