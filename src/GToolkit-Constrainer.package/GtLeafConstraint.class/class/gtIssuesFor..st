ui
gtIssuesFor: aView
	<gtClassView>
	self isAbstract ifTrue: [ ^ aView empty ].

	^ aView forward
		title: 'Issues';
		priority: 20;
		object: [ self new ];
		view: #gtItemsFor:;
		actionUpdateButton