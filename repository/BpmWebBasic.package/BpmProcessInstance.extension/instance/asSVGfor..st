*bpmWebBasic
asSVGfor: aBpmUser
	| result |

	WAHtmlCanvas builder render: [ :html | | canvas |
		canvas := self defaultBpmnCanvasClass new.
		canvas webSession: (WABpmSession new user: aBpmUser);
					isWorkingOnline: false. 
		self getProcessesTreeAsCollection do: [:process | 
			canvas			
				model: process;
				renderContentOn: html.
		].
		result := html].
	^result document stream contents


"OLD FRAMEWORK"
"	| stream |

	stream := WriteStream on: String new.

	self getProcessesTreeAsCollection do: [:eachProcess | 
		stream nextPutAll: ((XpdlSvgConverter convert: eachProcess definition xmlString) generateSVGFor: aBpmUser process: eachProcess).
	].

	^stream contents "