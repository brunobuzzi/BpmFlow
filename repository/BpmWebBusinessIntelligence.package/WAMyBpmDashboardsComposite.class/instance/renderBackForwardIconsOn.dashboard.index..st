browsing
renderBackForwardIconsOn: html dashboard: aBpmDashboardInstance index: index

	aBpmDashboardInstance getPrevious ifNotNil: [:prevDashboard | self renderPreviousDashboardOn: html previous: prevDashboard index: index].
 
	aBpmDashboardInstance getNext ifNotNil: [:nextDashboard | self renderNextDashboardOn: html next: nextDashboard index: index].