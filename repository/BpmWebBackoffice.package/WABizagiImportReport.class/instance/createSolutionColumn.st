other
createSolutionColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each solution]
			title: 'Solution')