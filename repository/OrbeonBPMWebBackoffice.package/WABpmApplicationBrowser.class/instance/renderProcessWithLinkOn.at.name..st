xpdl download
renderProcessWithLinkOn: html at: aPoint name: procName
	| canvas |

	canvas := JASVGIBpmCanvas newWidth: '200px' height: '72px'.
	canvas cancelDefaultGroupTranslation.

	(procName size > 28) 
	ifTrue: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60 textSizePx: '12px'.] 
	ifFalse: [canvas drawSubProcessActivityNamed: procName at: aPoint extent: 180@60].

	html div class: 'float-left'; with: [ 
		html div with: [html html: canvas contents].
		html div class: 'float-right margin-right-10px'; with: [ | versionsInfo |
			versionsInfo :=  (BpmProcessDefinition  getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName) version
									ifNil: ['v1'] ifNotNil: [:ver | (ver = 1) ifTrue: ['v1'] ifFalse: ['v1..v', ver printString]]. 
			html output: versionsInfo.	
			self renderDownloadProcessMapOn: html for: procName.
		].
	].