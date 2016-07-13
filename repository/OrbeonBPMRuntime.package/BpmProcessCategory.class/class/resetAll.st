other
resetAll

	self cache do: [:userDictionary | 
		userDictionary do: [:category | category resetAll]]