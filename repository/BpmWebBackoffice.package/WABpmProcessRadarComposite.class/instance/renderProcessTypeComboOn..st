search area
renderProcessTypeComboOn: html
	| definitionsNames |

	definitionsNames := (self session systemRoot applicationNamed: self getSelectedApplication ifNone: []) getAllProcessDefinitionsNames.

	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'processType';
			with: ('Process Type' translateIn: self session).

		html select "Process Definition List"
			attributeAt: 'id' put: 'processType';
			list: #(''), definitionsNames;
			onChange: 'submit()';
			callback: [:value | self registerProcessType: value];
			selected: (self getProcessType).
	].

	self getProcessType ifNotEmpty: [:value | self renderFormDefinitionComboOn: html]