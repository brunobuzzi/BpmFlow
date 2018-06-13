search area
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week') collect: [:each | each translateFor: self session user].
	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'date-groups';
			with: ('Date Groups' translateFor: self session user).

		html select "Field Definition List" 
			attributeAt: 'id' put: 'date-groups';
			class: 'width-200px';
			list: groupsOptions;
			callback: [:value | self addSearchValue: value named: 'date-groups'];
			selected: (self searchValueAt: 'date-groups' ifAbsent: [groupsOptions ifNotEmpty: [groupsOptions first].]).
	].

"	(self isDoubleDonutChart or: [self isDoubleBarChart]) ifTrue: [self renderFormFieldCombo2On: html]"