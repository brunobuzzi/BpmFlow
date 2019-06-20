create random process
generateRandomValuesIn: aTimeStamp
	| randomGenerator |

	randomGenerator := self randomGenerator.

	^Array with: (randomGenerator peekRandomStringOfSize: 8) "name"
				with: (randomGenerator peekRandomStringNumberOfSize: 3) "amount"
				with: aTimeStamp time printOrbeonString "time"
				with: aTimeStamp asOrbeonDateTimeString "time stamp"
				with: aTimeStamp date printOrbeonString "date"
				with: (randomGenerator peekRandomBoolean printString). "boolean"