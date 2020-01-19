gs package
saveNewPackageOnDisk
	| monticelloWC repository |

	monticelloWC := MCWorkingCopy allManagers detect: [:each | each package name = self defaultGsPackageName] ifNone: [^self].
	"MCRepositoryGroup default repositories detect: [:each | each description ] ifNone: [^self]."
	repository := monticelloWC repositoryGroup repositories last.


	repository storeVersion: 'aVersion'.