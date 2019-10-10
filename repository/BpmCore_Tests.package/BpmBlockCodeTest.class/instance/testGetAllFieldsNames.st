other
testGetAllFieldsNames

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | proc passed]'.
	self assert: bpmBlock getAllFieldsNames size equals: 1.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'passed'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | proc getValueOfProcessField: ''passed'']'.
	self assert: bpmBlock getAllFieldsNames size equals: 1.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'passed'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | (proc getValueOfProcessField: ''quantity'') and: [proc passed]]'.
	self assert: bpmBlock getAllFieldsNames size equals: 2.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'passed'.
	self assert: (bpmBlock getAllFieldsNames at: 2) equals: 'quantity'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | proc timeStamp < TimeStamp now]'.
	self assert: bpmBlock getAllFieldsNames size equals: 1.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'timeStamp'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | TimeStamp now]'.
	self assert: bpmBlock getAllFieldsNames size equals: 0.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | proc time < Time now]'.
	self assert: bpmBlock getAllFieldsNames size equals: 1.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'time'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | (proc getValueOfProcessField: ''quantity'') and: [proc passed and: [proc timeStamp < TimeStamp now]]]'.
	self assert: bpmBlock getAllFieldsNames size equals: 3.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'passed'.
	self assert: (bpmBlock getAllFieldsNames at: 2) equals: 'quantity'.
	self assert: (bpmBlock getAllFieldsNames at: 3) equals: 'timeStamp'.

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | proc time < Time now now]'.
	self assert: bpmBlock getAllFieldsNames size equals: 1.
	self assert: (bpmBlock getAllFieldsNames at: 1) equals: 'time'.