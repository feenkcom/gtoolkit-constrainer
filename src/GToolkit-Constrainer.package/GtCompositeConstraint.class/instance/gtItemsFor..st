accessing
gtItemsFor: aView
	<gtView>
	^ aView columnedList
		priority: 1;
		title: 'Constraints';
		items: [ self constraints ];
		column: 'Status' translated
			icon: [ :each | each statusElement ]
			width: 50;
		column: 'Constraint' translated text: [ :each | each gtDisplayString ]