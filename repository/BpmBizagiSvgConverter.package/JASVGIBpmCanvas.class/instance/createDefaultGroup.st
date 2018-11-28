draw
createDefaultGroup
	| group |

	group := JASVGITagGroup newNamed: self defaultNameForProcessGroup.
	group transform: 'translate(0,50)'.

	^svgGroups at: self defaultNameForProcessGroup put: group