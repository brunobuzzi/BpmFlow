other
getUserApplications

	^self session user getApplications 
		remove: selectedLateralItem application ifAbsent: [];
		yourself