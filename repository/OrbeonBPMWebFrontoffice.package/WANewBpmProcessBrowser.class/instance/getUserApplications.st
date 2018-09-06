other
getUserApplications

	^(self session user getApplicationsIn: self session bpmEnvironment)
		remove: selectedLateralItem application ifAbsent: [];
		yourself