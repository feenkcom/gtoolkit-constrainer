accessing
gtDescriptionFor: aView
	<gtView>
	^ aView explicit 
		title: 'Description';
		priority: 10;
		stencil: [ LeCoderTextElement coderElementFor: self description ]