other
comboBoxName

	(recursionName = #year) ifTrue: [^'Year'].

	(recursionName = #month) ifTrue: [^'Month'].

	(recursionName = #week) ifTrue: [^'Week'].

	^'N/A'