other
addNewUserNamed: aString
	| informationString bpmUser |

	bpmUser := self session systemRoot getUserNamed: aString ifAbsent: [^self].

	self sewafTableForUsers closeInformation.

	informationString := ('The user named [' translateIn: self session), bpmUser username, ('] has been added to [' translateIn: self session), self selectedLateralItem name, ('] environment !' translateIn: self session).
	self sewafTableForUsers addInformation: informationString color: 'green'.
	self selectedLateralItem registerUser: bpmUser.