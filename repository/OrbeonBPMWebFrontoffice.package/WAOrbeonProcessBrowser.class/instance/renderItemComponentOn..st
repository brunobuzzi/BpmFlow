process
renderItemComponentOn: html
	| heightClass |

	(self hasComponentValueAt: 'jQueryId') ifTrue: [(html jQuery id: (self componentValueAt: 'jQueryId')) dialog open].
	"	ifFalse: ["
			self getAllTasks do:[:eachArtifact | | cssClass |
				cssClass := eachArtifact isTask 
					ifFalse: ['process-transition-gateway']
					ifTrue: [eachArtifact isDone
						ifTrue: ['process-transition-finished']
						ifFalse: ['process-transition-running']].

				heightClass := ((transitionsHeight at: eachArtifact ifAbsent: [#expanded]) = #expanded) 
										ifTrue: ['process-transition-expanded'] 
										ifFalse: ['process-transition-collapsed'].

				html div class: (cssClass, ' ', heightClass); with: [
					self renderTransitionDataOn: html for: eachArtifact].
			]. 
	"	]."