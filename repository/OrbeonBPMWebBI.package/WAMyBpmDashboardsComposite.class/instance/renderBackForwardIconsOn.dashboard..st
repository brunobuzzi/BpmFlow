other
renderBackForwardIconsOn: html dashboard: aBpmDashboardInstance

	aBpmDashboardInstance getPrevious ifNotNil: [:prevDashboard | self renderPreviousDashboardOn: html previous: prevDashboard].
 
	aBpmDashboardInstance getNext ifNotNil: [:nextDashboard | self renderNextDashboardOn: html next: nextDashboard].