basic
flatCollect: aBlock
	^ FlatCollectSubject new parentConstraint: parentConstraint; the: self the block: aBlock.