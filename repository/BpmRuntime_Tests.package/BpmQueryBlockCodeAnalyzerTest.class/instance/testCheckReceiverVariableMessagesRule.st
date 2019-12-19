other
testCheckReceiverVariableMessagesRule
	"#checkReceiverVariableMessagesRule - check all message sent to <proc> must not be implemented in the process or form (so they fail and are dispatched using #doesNotUnderstand:). 
	And only #perform: without arguments is allowed"

	analyzer blockCode: '[:proc | proc country. proc perform: #country]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[:proc | proc country. proc perform: #country: with: ''Canada'']'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc | proc definition. proc perform: #country: with: ''Canada'']'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 2.