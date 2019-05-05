activation
runReport: aReportName
	| reportClass reportRunner |
	
	reportClass := self class environment at: aReportName asSymbol ifAbsent: [ 
		^ self exitFailure: 'No report found with name ', aReportName ].
	
	self inform: 'Running constraints in report ', aReportName,'.'.
	
	reportRunner := GtConstrainerHudsonReporter runOn: reportClass new.
	
	self inform: 'Report run successfully.'.
	self informResultFor: reportRunner.