tables
columnsforMainRole

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #name title: 'Rol' onClick: [:each | selectedObject := each. selectedUser := nil]) beSortable beSearchable; sortBlock: [:a :b | a name <= b name]; yourself);
			add: ((SewafReportColumn selector: #getApplicationName title: 'Application') beSortable beSearchable; sortBlock: [:a :b | a getApplicationName <= b getApplicationName]; yourself);
			add: ((SewafReportColumn selector: #isBackofficeRole title: 'Is Backoffice Role') beSortable beSearchable; sortBlock: [:a :b | a isBackofficeRole printString <= b isBackofficeRole printString]; yourself);
			add: ((SewafReportColumn selector: #isAdmin title: 'Is Admin Role') beSortable beSearchable; sortBlock: [:a :b | a isAdmin printString <= b isAdmin printString]; yourself);
			"add: self addCurrentUserButton;"
			add: self newRemoveRolButton;
			yourself