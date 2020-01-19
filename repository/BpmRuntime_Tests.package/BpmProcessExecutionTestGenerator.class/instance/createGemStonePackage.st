gs package
createGemStonePackage

	mcPackage := MCPackage named: self defaultGsPackageName.
	mcWorkingCopy := MCWorkingCopy forPackage: mcPackage.

	mcRepository := MCFileTreeRepository new directory:  (ServerFileDirectory on: self defaultPackagePath).

	mcWorkingCopy repositoryGroup add: mcRepository