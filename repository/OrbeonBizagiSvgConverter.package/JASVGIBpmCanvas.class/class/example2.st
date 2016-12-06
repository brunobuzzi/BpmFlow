other
example2
	| jasv line |

	jasv := self newWidth: '500px' height: '400px'.
	jasv addMarker: 
		(self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	jasv drawStartNamed: 'start' at: 30@30.
	jasv drawActivityNamed: 'Task 1' at: 80@30.
	jasv drawGatewayAt: 250@45 id: 'g1'.
	jasv drawActivityNamed: 'Task 2' at: 320@30.
	jasv drawActivityNamed: 'Task 3' at: 100@150.
	jasv drawEndNamed: 'end' at: 290@180.

	line := jasv connect: (jasv getJasvgiTagNamed: 'start') to:  (jasv getJasvgiTagNamed: 'Task 1').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'Task 1') to:  (jasv getJasvgiTagNamed: 'g1').
	line setMarkerEnd: 'arrow'.

	line := jasv connect: (jasv getJasvgiTagNamed: 'g1') to:  (jasv getJasvgiTagNamed: 'Task 2').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'g1') to:  (jasv getJasvgiTagNamed: 'Task 3').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'Task 2') to:  (jasv getJasvgiTagNamed: 'end').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'Task 3') to:  (jasv getJasvgiTagNamed: 'end').
	line setMarkerEnd: 'arrow'.
	jasv contents.