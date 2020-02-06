query
getDashboardsFor: aBpmUser

	^definitions at: aBpmUser username ifAbsent: [#()]