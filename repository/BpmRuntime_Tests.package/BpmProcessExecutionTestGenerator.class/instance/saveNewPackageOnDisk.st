gs package
saveNewPackageOnDisk
	| versionName newVersion |

	versionName := mcWorkingCopy uniqueVersionName.
	newVersion := mcWorkingCopy newVersionWithName: versionName message: 'Automatically Saved'.
	mcRepository storeVersion: newVersion.