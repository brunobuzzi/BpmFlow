warning items creation
addNonExistingSeasideComponentItem: aXPDLTaskNoneNode

	detectedItems add: (
		self createItemReportType: 'Error' 
			code: 609
			xpdlObject: aXPDLTaskNoneNode
			title: 'Missing Seaside Component'
			description: 'Seaside Component [', aXPDLTaskNoneNode getSeasideComponentName, '] does not exist in the System'
			solution: 'Check for syntax errors in the name or create the GemStone/S class'
			)