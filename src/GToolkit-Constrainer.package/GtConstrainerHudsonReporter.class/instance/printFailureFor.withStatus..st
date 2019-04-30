private
printFailureFor: aConcern withStatus: aConcernStatus
	resultsStream 
		tab; tab;
		nextPutAll: '<error type="TestFailure" message="';
				nextPutAll: (self encode: aConcern description);
				nextPutAll: (self encode: ' (');
				nextPutAll: (self encode: aConcern stakeholder);
				nextPutAll: (self encode: ')');
			nextPutAll: '">';
			lf;
			nextPutAll: (self encode: ((String with: Character cr) join: (aConcernStatus issues collect: #gtDisplayString)));
		nextPutAll: '</error>';
		lf