dashboards
getAvailableDashboardsNamesFor: aBpmUser
	"The receiver answer a collection with the names of all available dashboards for <aBpmUser>.
	This collection includes user's dashboards and public dashboards"

	^(self getDashboardsFor: aBpmUser) select: [:each | each isPrivate not or: [each owner == self session user]] thenCollect: [:each | each name]