search area
renderFormFieldCombo2On: html
	|  fieldNames |

	fieldNames := self getProcessFieldList.
	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'form-fields-2';
			with: ('Field' translateFor: self session user).

		html select "Field Definition List" 
			attributeAt: 'id' put: 'form-fields-2';
			class: 'width-200px';
			list: fieldNames;
			callback: [:value | self addSearchValue: value named: 'field-name-2'];
			selected: (self searchValueAt: 'field-name-2' ifAbsent: [fieldNames ifNotEmpty: [fieldNames first].]).
	].