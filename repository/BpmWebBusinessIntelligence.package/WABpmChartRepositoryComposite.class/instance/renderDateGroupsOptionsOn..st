date groups
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week' 'Day') collect: [:each | each translateIn: self session].

	html div id: 'bpm-report-bottom-options'; with: [
		html form with: [ 
			html fieldSet with: [
				html radioGroup
					callback: [:value | self onDateRadioButtonChanged: value];
					selected: selectedLateralItem dateGroupName;
					with: [ :group |
						groupsOptions do: [ :each |
							html label: [ 
								group radioButton onChange: 'submit()'; value: each.
								html text: each ].
							] 
				].
			].
		].
	].