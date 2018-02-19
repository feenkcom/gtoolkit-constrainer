transformation
tUnion: aCollection
	|unionSubject |
	unionSubject := UnionSubject new.
	unionSubject addChild: self.
	unionSubject the: elements unionWith: aCollection.
	^ unionSubject.