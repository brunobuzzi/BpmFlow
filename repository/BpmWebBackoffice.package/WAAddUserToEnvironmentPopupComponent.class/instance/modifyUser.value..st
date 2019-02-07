other
modifyUser: aBpmUser value: aBoolean
	| informationString |

	aBoolean ifFalse: [^self].

	informationString := ('The user named [' translateIn: self session), aBpmUser username, ('] has been added to [' translateIn: self session), parent selectedLateralItem name, ('] environment !' translateIn: self session).
	parent sewafTableForUsers addInformation: informationString color: 'green'.
	self selectedEnvironment registerUser: aBpmUser