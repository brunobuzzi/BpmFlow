xpdl download
renderProcessWithLinkOn: html at: aPoint name: procName
	| versionsInfo procDefinition bpmnCanvas2 |

	"(procName size > 28) 
	ifTrue: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60 textSizePx: '12px'.] 
	ifFalse: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60]."

	procDefinition := BpmProcessDefinition  getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.
	procDefinition isTopProcess ifFalse: [^self].
	versionsInfo :=  procDefinition version ifNil: ['v1'] ifNotNil: [:ver | 'v',ver printString]. 
	bpmnCanvas2 := WABpmnCanvasComposite parent: self.
	bpmnCanvas2 model: procDefinition;
		beParentScaled;
		disableViewPortAutoSet.
	html div class: 'display-inline-block process-map-scaled'; 
		with: [html output: procName, ' - ', versionsInfo.
				html render: bpmnCanvas2].