gs package
createGemStonePackage
	| packageInfo |

	packageInfo := PackageInfo named: 'BpmRuntime_Test_Automatic'.
	PackageOrganizer default registerPackage: packageInfo.