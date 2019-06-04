browsing
getCurrentDashboardItems
	| itemsToRender itemsToRenderByColumn |

	itemsToRender := OrderedCollection new.
	itemsToRenderByColumn := OrderedCollection new.
	
	selectedLateralItem getLastDashboardInstances keysAndValuesDo: [:index :dashboard | 
		itemsToRender add: ((instancesToRender includesKey: index) 
										ifTrue: [instancesToRender at: index]
										ifFalse: [dashboard])
	].

	itemsToRender keysAndValuesDo: [:index :dashboard | | currentColumnCollection currentIndex |
		currentIndex := (index divMod: 2 into: (Array new: 2)) sum.
		currentColumnCollection := itemsToRenderByColumn at: currentIndex ifAbsentPut: [OrderedCollection new].
		currentColumnCollection add: dashboard.
	].

	^itemsToRenderByColumn