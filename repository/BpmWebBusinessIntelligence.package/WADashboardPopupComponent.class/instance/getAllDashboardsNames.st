existing dashboard
getAllDashboardsNames

	^(BpmDashboardRepository getDashboardsIn: self session bpmEnvironment for: self session user) collect: [:each | each name]