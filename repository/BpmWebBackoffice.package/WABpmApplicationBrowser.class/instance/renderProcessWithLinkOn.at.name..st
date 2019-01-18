xpdl download
renderProcessWithLinkOn: html at: aPoint name: procName
	| versionsInfo procDefinition bpmnCanvas2 |

	"(procName size > 28) 
	ifTrue: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60 textSizePx: '12px'.] 
	ifFalse: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60]."

	"html div with: [html html: canvas contents]."
	procDefinition := BpmProcessDefinition  getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.
	versionsInfo :=  procDefinition version ifNil: ['v1'] ifNotNil: [:ver | 'v',ver printString]. 
	"html output: versionsInfo.	"
	bpmnCanvas2 := WABpmnCanvasComposite parent: self scale: (Array with: 0.25 with: 0.25).
	bpmnCanvas2 model: procDefinition.
	html div class: 'display-inline-block'; with: [html render: bpmnCanvas2].
	"self renderDownloadProcessMapOn: html for: procDefinition."