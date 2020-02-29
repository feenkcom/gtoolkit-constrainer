accessing
gtDescriptionFor: aView
	<gtView>
	^ aView explicit 
		title: 'Description';
		priority: 10;
		stencil: [ (GtDocument new text: self description) asElement ]