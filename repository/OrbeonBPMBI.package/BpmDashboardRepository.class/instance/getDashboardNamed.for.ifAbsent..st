query
getDashboardNamed: aString for: aBpmUser ifAbsent: aBlock

	^(definitions at: aBpmUser username ifAbsent: [^aBlock value]) detect: [:each | each name asUppercase = aString asUppercase] ifNone: [aBlock value]