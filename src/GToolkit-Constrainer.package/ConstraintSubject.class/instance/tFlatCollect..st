transformation
tFlatCollect: aBlock
	|flatCollectSubject|
	flatCollectSubject := FlatCollectSubject new.
	flatCollectSubject addChild: self.
	flatCollectSubject the: elements block: aBlock.
	^ flatCollectSubject.