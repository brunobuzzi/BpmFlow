other
getTotalTimeFrom: aTimeStamp
	| totalTime |

	totalTime := aTimeStamp minusSeconds: createdTime asSeconds.

	^Time fromSeconds: totalTime asSeconds