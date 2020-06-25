accessing
gtDescriptionFor: aView
	<gtView>
	^ aView explicit 
		title: 'Description';
		priority: 10;
		stencil: [ GtDocumenter forText: self description ]