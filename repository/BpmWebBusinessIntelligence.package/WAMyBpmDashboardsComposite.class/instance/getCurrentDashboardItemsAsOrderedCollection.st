browsing
getCurrentDashboardItemsAsOrderedCollection

	^self getCurrentDashboardItems inject: OrderedCollection new into:  [:result :eachCollection | result addAll: eachCollection. result]