other
generateSVG
	| xpdlReader svgCanvas |

	xpdlReader := XPDLReader2 for: 'convert' withString: xpdlString.
	svgCanvas := JASVGIBpmCanvas newWidth: '1000px' height: '1000px'.
	svgCanvas addMarker: (JASVGITagMarker newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	xpdlReader getAllWorkflows do: [:eachWorkflow | 
		eachWorkflow activities do: [:eachActivityNode | eachActivityNode drawOn: svgCanvas].
		eachWorkflow transitions do: [:eachTransition | eachTransition drawOn: svgCanvas].
	].

	^svgCanvas contents