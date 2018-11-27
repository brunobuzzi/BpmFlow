other
testSetVariableWithProcessQuery

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	apiOperation appName: 'ue';
		processDefinitionId: procDefinition id printString;
		processInstanceId: procInstance id printString;
		xmlString: '<setvariables>
	<externalvariables>
		<boolean>
			<approved>true</approved>
		</boolean>
		<number>
			<amount>50000</amount>
		</number>
	</externalvariables>
</setvariables>'.

	apiOperation doIt.

	self assert: (procInstance valueAtExternalVariable: 'approved').
	self assert: ((procInstance valueAtExternalVariable: 'amount') = 50000)