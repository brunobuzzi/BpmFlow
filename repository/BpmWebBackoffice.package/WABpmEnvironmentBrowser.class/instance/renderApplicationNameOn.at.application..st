other
renderApplicationNameOn: html at: aPoint application: anApplication
	| canvas |

	canvas := JASVGIBpmCanvas newWidth: '200px' height: '72px'.
	canvas cancelDefaultGroupTranslation.
	
	(anApplication applicationName size > 28) 
	ifTrue: [canvas drawActivityNamed: anApplication applicationName at: aPoint extent: 180@60 color: 'white' asString  stroke: 'black' asString textSizePx: '12px'] 
	ifFalse: [canvas drawActivityNamed: anApplication applicationName at: aPoint extent: 180@60 color: 'white' asString stroke: 'black' asString].

	html div class: 'float-left'; with: [ 
		html div with: [html html: canvas contents].
	].