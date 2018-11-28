xpdl fileout
getSingleProcessMapStreamFor: aBpmUser
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: self xmlHeader, String lf, (self generateProcessMapFor: aBpmUser) prettyPrinted.

	^stream