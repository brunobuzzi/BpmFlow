query
getDashboardFor: aBpmUser

	^definitions at: aBpmUser username ifAbsent: [#()]