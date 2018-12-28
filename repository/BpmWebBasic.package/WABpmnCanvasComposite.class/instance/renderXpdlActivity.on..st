render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| associations textPoint |

	associations := OrderedCollection  new.
	associations 
		add: ('id' -> UUID new asString);
		add: ('x' -> aXPDLActivityNode getXcoordinate);
		add: ('y' -> aXPDLActivityNode getYcoordinate);
		add: ('rx' -> 5);
		add: ('ry' -> 5);
		add: ('height' -> aXPDLActivityNode getHeight);
		add: ('width' -> aXPDLActivityNode getWidth);
		add: ('stroke-width' -> self defaultActivityStrokeWidth);
		add: ('stroke' -> self defaultActivityStroke);
		add: ('fill' -> self defaultActivityColor).

	textPoint := (aXPDLActivityNode getXcoordinate + 5) @ (aXPDLActivityNode getYcoordinate + 32).

	self renderSvgElementOn: html tag: html svgRectangle attributes: associations with: [(aXPDLActivityNode getTooltipOrNilFor: model application) ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	html anchor 
		url: (self getUrlForOrbeonFormDefinitionNamed: aXPDLActivityNode getName);
		target: '_blank';
		with: [self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize].