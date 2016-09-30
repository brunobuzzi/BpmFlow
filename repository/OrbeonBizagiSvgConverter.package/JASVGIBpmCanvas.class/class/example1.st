other
example1
	| jasv line |

	jasv := JASVGIBpmCanvas newWidth: '400px' height: '400px'.
	jasv addMarker: 
		(self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	jasv drawStartNamed: 'start' at: 30@30.
	jasv drawActivityNamed: 'Task 1' at: 200@30.
	jasv drawActivityNamed: 'Task 2' at: 60@90.
	jasv drawEndNamed: 'end' at: 300@300.

	line := jasv connect: (jasv getJasvgiTagNamed: 'start') to:  (jasv getJasvgiTagNamed: 'Task 1').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'start') to:  (jasv getJasvgiTagNamed: 'Task 2').
	line setMarkerEnd: 'arrow'.

	line := jasv connect: (jasv getJasvgiTagNamed: 'Task 1') to:  (jasv getJasvgiTagNamed: 'end').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getJasvgiTagNamed: 'Task 2') to:  (jasv getJasvgiTagNamed: 'end').
	line setMarkerEnd: 'arrow'.

	jasv contents.