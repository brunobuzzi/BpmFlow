other
session
	"Normally answer <super session> but when the receiver is used to render a SVG object without a Web Application only to get the SVG code then <webSession> is set by hand.
	See issue: #955 "

	webSession ifNil: [^super session].

	^webSession

"
For example:
	| result |

	WAHtmlCanvas builder render: [ :html | | canvas |
		canvas := WABpmnCanvasOfflineComposite new.
		canvas webSession: (WABpmSession new user: aBpmUser).
		self getProcessesTreeAsCollection do: [:process | 
			canvas			
				model: process;
				renderContentOn: html.
		].
		result := html].
	^result document stream contents
"