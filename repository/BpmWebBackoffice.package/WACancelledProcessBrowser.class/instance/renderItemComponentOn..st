render
renderItemComponentOn: html

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [^self renderSvgProcessMapOn: html].

	(selectedLateralItem executedActivities, selectedLateralItem getActiveArtifacts) do: [:eachArtifact | | cssClass heightClass |

		cssClass := eachArtifact isTask 
						ifFalse: ['process-transition-gateway']
						ifTrue: [eachArtifact isDone
							ifTrue: ['process-transition-finished']
							ifFalse: ['process-transition-running']].

		heightClass := ((transitionsHeight at: eachArtifact ifAbsent: [#expanded]) = #expanded) 
							ifTrue: ['process-transition-expanded'] 
							ifFalse: ['process-transition-collapsed'].

		html div class: (cssClass, ' ', heightClass); with: [ self renderTaskDataOn: html for: eachArtifact].

	].