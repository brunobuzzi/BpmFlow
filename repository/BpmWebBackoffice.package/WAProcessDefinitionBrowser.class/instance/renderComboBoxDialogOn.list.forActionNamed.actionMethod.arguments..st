assignation policy
renderComboBoxDialogOn: html list: list forActionNamed: actionName actionMethod: actionMethod arguments: arguments
	"<buttonsNames> Array with: (Array with: name with: value) with: (Array with: name2 with: value2)
	Array with: #('First Value' #firstValue) with: #('Second Value' #secondValue)"

	html div class: 'jquery-dialog-yes-no'; with: [
		html form with: [
			html fieldSet with: [
				html label class: 'margin-right-10px'; attributeAt: 'for' put: 'assignationPolicy'; with: ('Assignation Policy' translateIn: self session).
				html select 
					attributeAt: 'id' put: 'assignationPolicy';
					list: list;
					callback: [:policyName | self setAssignationPolicy: policyName];
					selected: selectedLateralItem printPolicyName.

				html label: [ 
					html checkbox class: 'margin-top-20px';
						id: html nextId;
						value: selectedLateralItem assignationPolicy isAutomatic;
						callback: [ :value | self setAutomaticAssignationPolicy: value ];
						onChange: (html jQuery ajax serializeForm).
				html text: ('Is Automatic' translateIn: self session).].

				html submitButton 
					with: ('Confirm' translateIn: self session);	
					callback: [self saveAssignationPolicy] .
			]
		] 
	].