accessing
gtItemsFor: aView
	<gtView>
	^ (self constraints gtItemsFor: aView)
		title: 'Constraints'