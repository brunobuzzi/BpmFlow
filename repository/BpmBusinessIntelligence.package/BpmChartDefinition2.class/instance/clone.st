clone
clone
	| newChart |

	newChart := self class newFor: user in: bpmEnvironment.

	newChart dynamicInstVarAt: #originalChart put: self.

	^newChart