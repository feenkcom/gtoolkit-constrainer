activation
runReport: aReportName
	| reportClass reporter reportRunner |
	
	reportClass := self class environment at: aReportName asSymbol ifAbsent: [ 
		^ self exitFailure: 'No report found with name ', aReportName ].
	
	self inform: 'Running constraints in report ', aReportName,'.'.
	
	reporter := reportClass new.
	reportRunner := GtConstrainerHudsonReporter runOn: reporter.
	GtConstrainerCsvReporter runOn: reporter.
	
	self inform: 'Report run successfully.'.
	self informResultFor: reportRunner.