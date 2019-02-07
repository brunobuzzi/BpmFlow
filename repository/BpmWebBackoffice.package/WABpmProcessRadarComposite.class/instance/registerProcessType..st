search area
registerProcessType: value

	self addSearchValue: value named: 'process-type'.
	self removeSearchValueNamed: 'form-type'.
	self removeSearchValueNamed: 'field-name'.
	self removeSearchValueNamed: 'field-value'.