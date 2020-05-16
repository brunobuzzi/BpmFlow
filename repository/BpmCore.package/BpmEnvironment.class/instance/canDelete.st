cache
canDelete

	^(applications isEmpty and:[users isEmpty]) and: [self class adminsEnvironmentName ~= name]