boxes
removeChildBox: aBpmUserBox

	aBpmUserBox boxParent: nil.

	^boxChildren removeKey: aBpmUserBox boxName ifAbsent: []