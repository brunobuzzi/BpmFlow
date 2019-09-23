*bpmWebBasic
asSVGfor: aBpmUser
"	| stream |

	stream := WriteStream on: String new.

	self getProcessesTreeAsCollection do: [:eachProcess | 
		stream nextPutAll: ((XpdlSvgConverter convert: eachProcess definition xmlString) generateSVGFor: aBpmUser process: eachProcess).
	].

	^stream contents "

	| result |

	WAHtmlCanvas builder render: [ :html | 
		self getProcessesTreeAsCollection do: [:process | 
			WABpmnCanvasComposite new
				isOnlineComponent: false; 
				webSession: (WABpmSession new user: aBpmUser);
				model: process;
				renderContentOn: html.
		].
		result := html].
	^result document stream contents