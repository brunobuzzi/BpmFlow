browsing
getCurrentDashboardItems
	| itemsToRender |

	itemsToRender := OrderedCollection new.
	
	selectedLateralItem getLastDashboardInstances keysAndValuesDo: [:index :dashboard | 
		itemsToRender add: ((instancesToRender includesKey: index) 
										ifTrue: [instancesToRender at: index]
										ifFalse: [dashboard])
	].

	^itemsToRender