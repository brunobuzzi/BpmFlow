other
getTotalTime
	| totalTime |

	totalTime := endTime ifNil: [TimeStamp now] ifNotNil: [:value | endTime].
	
	^Time fromSeconds: (totalTime asSeconds - creationTime asSeconds)