existing dashboard
getAllDashboardsNames

	^((BpmDashboardRepository getDashboardsIn: self session bpmEnvironment for: self session user) select: [:each | each isPrivate not or: [each owner == self session user]]) 
			collect: [:each | each name]