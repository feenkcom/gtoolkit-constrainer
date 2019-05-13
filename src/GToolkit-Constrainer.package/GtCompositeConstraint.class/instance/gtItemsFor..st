accessing
gtItemsFor: aView
	<gtView>
	^ aView columnedList
		title: 'Constraints';
		items: [ self constraints ];
		column: 'Status' translated
			do: [ :column | 
			column
				item: [ :each | 
					BlElement new 
						geometry: BlCircle new;
						size: 16@16; 
						background: each status color ];
				rowStencil: [ :eachIcon | eachIcon asElement margin: (BlInsets left: 5 right: 5) ];
				noResize ];
		column: 'Constraint' translated do: [ :column | 
			column item: [ :each | each gtDisplayString ] ]