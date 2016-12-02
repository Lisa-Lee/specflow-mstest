$vstest = "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe"
$dllFile = "specflow-mstest\bin\Debug\specflow-mstest.dll"
$pickles = "packages\Pickles.CommandLine.2.10.0\tools\pickles"
$featureDir = "specflow-mstest\Features"
$outputDir = "GeneratedDocs"
$testResults = "TestResults"

#delete last execution files
if (Test-Path $outputDir) 
{
	Remove-Item $outputDir -recurse
}
if (Test-Path $testResults) 
{
	Remove-Item $testResults -recurse
}

#execute test
& $vstest $dllFile /Logger:trx

#generate report
& $pickles /documentation-format=DHtml /feature-directory=$featureDir /output-directory=$outputDir /TestResultsFile=$testResults /test-results-format=vstest
