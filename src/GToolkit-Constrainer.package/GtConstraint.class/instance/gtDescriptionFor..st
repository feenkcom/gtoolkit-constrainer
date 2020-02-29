accessing
gtDescriptionFor: aView
	<gtView>
	^ aView explicit 
		title: 'Description';
		stencil: [ (GtDocument new text: self description) asElement ]