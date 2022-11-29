[cmdletbinding()]
param(
    [validateset("Bytes","KB","MB","GB","TB")]            
    [string]$From,            
    [validateset("Bytes","KB","MB","GB","TB")]            
    [string]$To,            
    [Parameter(Mandatory=$true)]            
    [string]$Invalue,            
    [int]$Precision = 0    
)

$Value = $Invalue -replace ',','' -as [double];

switch($From) {            
    "Bytes" {$Value = $Value }            
    "KB" {$value = $Value * 1024 }            
    "MB" {$value = $Value * 1024 * 1024}            
    "GB" {$value = $Value * 1024 * 1024 * 1024}            
    "TB" {$value = $Value * 1024 * 1024 * 1024 * 1024}            
}            
            
switch ($To) {            
    "Bytes" {return $value}            
    "KB" {$Value = $Value/1KB}            
    "MB" {$Value = $Value/1MB}            
    "GB" {$Value = $Value/1GB}            
    "TB" {$Value = $Value/1TB}            
            
} 

return [Math]::Round($value,$Precision,[MidPointRounding]::AwayFromZero)