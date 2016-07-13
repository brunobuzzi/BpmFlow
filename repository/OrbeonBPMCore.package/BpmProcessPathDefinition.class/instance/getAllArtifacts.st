get artifacts
getAllArtifacts

	^(OrderedCollection with: startEvent),
			tasks asOrderedCollection,
			gateways asOrderedCollection,
			intermediateEvents asOrderedCollection,
			subProcessTasks asOrderedCollection,
			scripts asOrderedCollection,
			endEvents asOrderedCollection