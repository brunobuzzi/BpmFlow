other
removeUser: aBpmUser
	| informationString |

	selectedLateralItem unregisterUser: aBpmUser.
	usersBatchedList items remove: aBpmUser.

	self sewafTableForUsers closeInformation.
	informationString := ('The user named [' translateIn: self session), aBpmUser username, ('] has been remove from [' translateIn: self session), selectedLateralItem name, ('] environment !' translateIn: self session).
	self sewafTableForUsers addUniqueInformation: informationString color: 'red'