accessing
gtItemsFor: aView
	<gtView>
	^ aView columnedList
		priority: 1;
		title: 'Constraints';
		items: [ self constraints ];
		column: 'Status' translated
			do: [ :column | 
			column
				item: [ :each | 
					BlElement new
						geometry: BlCircle new;
						size: 12 @ 12;
						background: each status color ];
				rowStencil: [ :eachIcon | 
					eachIcon asElement
						margin:
							(BlInsets
								top: 2
								left: 5
								bottom: 2
								right: 5) ];
				noResize ];
		column: 'Constraint' translated
			do: [ :column | column item: [ :each | each gtDisplayString ] ]