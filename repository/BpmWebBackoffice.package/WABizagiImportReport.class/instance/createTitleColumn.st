other
createTitleColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each title]
			title: 'Title')