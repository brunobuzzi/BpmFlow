tasks
initializeSewafTableForTasksOn: html
	| table |

	table := (SewafSelectTableReport parent: self)
		summary: 'Next Tasks';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (self getColumnsForTasksOn: html);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: selectedTask;
		yourself.

	
	^self addSewafTable: table named: 'Tasks'.