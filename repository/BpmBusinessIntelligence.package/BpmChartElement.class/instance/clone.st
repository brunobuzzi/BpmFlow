clone
clone
	| newElement |

	newElement := self class new.

	newElement 
		properties: (Dictionary withAll: properties);
		yourself.

	^newElement