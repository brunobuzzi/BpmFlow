other
createTypeColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each type]
			title: 'Type')