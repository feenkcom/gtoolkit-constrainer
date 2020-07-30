accessing
gtItemsFor: aView
	<gtView>
	^ aView columnedList
		priority: 1;
		title: 'Constraints';
		items: [ self constraints ];
		column: 'Status' translated icon: [ :each | 
			BlElement new
				geometry: BlCircle new;
				size: 12 @ 12;
				background: each status color;
				margin: (BlInsets top: 2 left: 5 bottom: 2 right: 5) ]
			width: 50;
		column: 'Constraint' translated
			item: [ :each | each gtDisplayString ]