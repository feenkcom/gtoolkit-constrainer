accessing
asElement
	^ BlElement new
		geometry: BlCircleGeometry new;
		size: 12 @ 12;
		background: self color;
		margin: (BlInsets
				top: 2
				left: 5
				bottom: 2
				right: 5)