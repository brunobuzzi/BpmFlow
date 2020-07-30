other
getHeatMapColorsAndNumersForArtifacts
	"The receiver answer <anArray> with two dictionaries:
	<heatMapDictionary> where each key is an artifact name and each value is the heatmap color name and
	<countDictionary> where each key is an artifact name and each value is total number of occurences of task in all processes.
	Check: WAHeatMapBpmnCanvasComposite>>renderLinearGradientXXX: methods"
	| heatMapDictionary countDictionary porcentageDictionary |

	heatMapDictionary := Dictionary new.
	countDictionary := Dictionary new.
	porcentageDictionary := Dictionary new.

	processInstances do: [:procInstance | 
		procInstance artifactsToRenderHeatMapDo: [:activity | 
			(countDictionary includesKey: activity getDefinitionName) ifFalse: [countDictionary at: activity getDefinitionName put: 0].
			countDictionary at: activity getDefinitionName put: ((countDictionary at: activity getDefinitionName) + 1).
		]. 
	].

	countDictionary keysAndValuesDo: [:activityName :sum | | porcentage |
		porcentage := (100 * sum) // processInstances size.
		((0 <= porcentage) and: [porcentage < 20]) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-green)'].
		((20 <= porcentage) and: [porcentage < 40]) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-green-yellow)'].
		((40 <= porcentage) and: [porcentage < 60]) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-yellow)'].
		((60 <= porcentage) and: [porcentage < 80]) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-yellow-red)'].
		((80 <= porcentage) and: [porcentage < 100]) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-red)'].
		(100 <= porcentage) ifTrue: [heatMapDictionary at: activityName put: 'url(#gradient-red-red)'].
		porcentageDictionary at: activityName put: porcentage.
	].

	^Array with: countDictionary with: heatMapDictionary with: porcentageDictionary