gs package
initializeGemStonePackageElements

	mcWorkingCopy := MCWorkingCopy allManagers detect: [:each | each package name = self defaultGsPackageName] ifNone: [].
	mcRepository := mcWorkingCopy repositoryGroup repositories last.