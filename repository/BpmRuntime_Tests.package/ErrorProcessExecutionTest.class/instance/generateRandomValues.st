other
generateRandomValues
	| randomGenerator |

	randomGenerator := self randomGenerator.

	^(OrderedCollection new
				add: (randomGenerator peekRandomNumberOfSize: 5); "invoice amount"
				add: (randomGenerator peekRandomNumberOfSize: 4); "cost"
				add: (randomGenerator peekRandomNumberOfSize: 3); "deductible"
				add: (randomGenerator peekRandomBoolean); "confirmed"
				add: (randomGenerator peekRandomBoolean); "direct client"
				add: (randomGenerator peekRandomCountry); "country"
				add: ''; "city"
				add: (randomGenerator peekRandomIndustry); "industry"
				yourself
		) asArray