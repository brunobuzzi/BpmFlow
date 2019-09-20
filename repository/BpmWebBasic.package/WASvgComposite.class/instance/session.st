other
session
	"Normally answer <super session> but when the receiver is used to render a SVG object without a Web Application only to get the SVG code then <webSession> is set by hand.
	See issue: #955 "

	webSession ifNil: [^super session].

	^webSession

"
For example:

| result |
WAHtmlCanvas builder render: [ :html | 
	WABpmnCanvasComposite new
		webSession: (WABpmSession new user: (BpmUser getUserNamed: 'admin'));
		model: ((BpmProcessDefinition cache at: 'ue') at: 'visa-appliance') last;
		renderContentOn: html.
	result := html].
result document stream contents

"