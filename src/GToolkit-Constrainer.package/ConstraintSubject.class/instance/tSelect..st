transformation
tSelect: aBlock
	|selectSubject|
	selectSubject := SelectSubject new.
	selectSubject addChild: self.
	selectSubject the: elements block: aBlock.
	^ selectSubject.