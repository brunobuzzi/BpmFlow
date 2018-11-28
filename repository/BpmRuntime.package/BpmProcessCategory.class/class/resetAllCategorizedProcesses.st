other
resetAllCategorizedProcesses

	self cache do: [:userDictionary | 
		userDictionary do: [:category | category resetProcesses]]