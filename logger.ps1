# Drop this inline in any Powershell script and call it using 'log($message)'

Function log {

    Param ([string]$logstring)

    $date = get-date
    $scriptname = $MyInvocation.ScriptName
    $line = $MyInvocation.ScriptLineNumber
    $logmessage = "[$date] [$scriptname`:$line] $logstring"

    Add-content $logFile -value $logmessage

}
