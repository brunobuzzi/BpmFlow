gs package
createGemStonePackage
	| packageInfo |

	packageInfo := PackageInfo named: self defaultGsPackageName.
	PackageOrganizer default registerPackage: packageInfo.