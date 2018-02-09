file out
generateProcessInstanceOutput
	| stream converter selectedObject |

	stream := PrintStream on: String new.
	converter := BizagiSvgConverter convert: (fileOutObject generateProcessMapFor: user) prettyPrinted.

	stream nextPutAll: self xmlHeader, String lf.

	(fileOutObject isProcessDefinition or: [fileOutObject isTimerEvent]) 
	ifTrue: [stream nextPutAll: (converter generateSVGFor: user process: selectedObject).] 
	ifFalse: [stream nextPutAll: (converter generateSVGFor: user assignment: selectedObject)].

	

	self downloadSvg: stream