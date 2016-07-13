search area
renderProcessTypeComboOn: html
	| definitionsNames |

	definitionsNames  := (BpmProcessDefinition getAllVersionsIn: self getSelectedApplication) collect: [:each | each processName].

	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'processType';
			with: ('Process Type' translateFor: self session user).

		html select "Process Definition List"
			attributeAt: 'id' put: 'processType';
			list: #(''), definitionsNames;
			onChange: 'submit()';
			callback: [:value | self registerProcessType: value];
			selected: (self getProcessType).
	].

	self getProcessType ifNotEmpty: [:value | self renderFormDefinitionComboOn: html]