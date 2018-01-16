search area
renderFilterFields

	^(self hasSearchValueAt: 'form-type') 
		and: [(self hasSearchValueAt: 'process-type')  
		and:[(self hasSearchValueAt: 'field-name') 
		and:[self getSelectedProcessDefinitionOrNil notNil]]]