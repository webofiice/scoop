﻿if (!(Test-Path Variable:PSScriptRoot)) { $PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent }
$path = join-path "$psscriptroot" "..\apps\git\current\cmd\gitk.exe"
if($myinvocation.expectingInput) { $input | & $path  @args } else { & $path  @args }
