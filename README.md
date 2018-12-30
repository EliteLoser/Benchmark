# Benchmark

Svendsen Tech's Benchmark module provides a convenient interface to benchmark and compare execution speed of code blocks containing arbitrary PowerShell code

Online blog documentation: https://www.powershelladmin.com/wiki/PowerShell_benchmarking_module_built_around_Measure-Command

PowerShell Gallery (Save-Module/Find-Module/Install-Module): https://www.powershellgallery.com/packages/Benchmark/

Example to install:

```powershell
Install-Module -Name Benchmark -Scope CurrentUser #-Force
```

Example use in a screen dump:

![alt_tag](/img/Benchmark-Measure-These-example.png)

The same example as in the screenshot as text:

```
PS C:\temp> $SelectObjectSB = { $a = 1..4 | select -SkipLast 1; $a = $a | select -skip 1; $a }
PS C:\temp> $ArrayIndexingSB = { $a = 1..4; $a = $a[0..($a.count-2)]; $a = $a[1..($a.count-1)]; $a }
PS C:\temp> & $SelectObjectSB
2
3
PS C:\temp> & $ArrayIndexingSB
2
3
PS C:\temp> Compare-Object (&$SelectObjectSB) (&$ArrayIndexingSB)
PS C:\temp> # they do the same thing, let's see which one is faster at it...
PS C:\temp> Measure-These -Count 1, 10, 1000 -ScriptBlock $SelectObjectSB, $ArrayIndexingSB -Title   "Select-Object", "Array indexing" | Format-Table -AutoSize

Title/no.      Average (ms) Count Sum (ms) Maximum (ms) Minimum (ms)
---------      ------------ ----- -------- ------------ ------------
Select-Object        6.0126     1   6.0126       6.0126       6.0126
Array indexing       7.2241     1   7.2241       7.2241       7.2241
Select-Object       0.11701    10   1.1701       0.1626       0.1026
Array indexing      0.01887    10   0.1887        0.023       0.0181
Select-Object       0.08741  1000  87.4112       0.2455       0.0807
Array indexing      0.01461  1000  14.6114       2.2528       0.0106


PS C:\temp> Measure-These -Count 1, 10, 1000 -ScriptBlock $SelectObjectSB, $ArrayIndexingSB -Title   "Select-Object", "Array indexing" | Format-Table -AutoSize

Title/no.      Average (ms) Count Sum (ms) Maximum (ms) Minimum (ms)
---------      ------------ ----- -------- ------------ ------------
Select-Object        0.1092     1   0.1092       0.1092       0.1092
Array indexing       0.0167     1   0.0167       0.0167       0.0167
Select-Object       0.08665    10   0.8665       0.0922       0.0847
Array indexing      0.01187    10   0.1187       0.0134       0.0113
Select-Object       0.09341  1000  93.4146        1.477       0.0799
Array indexing      0.01265  1000  12.6506       0.5359       0.0106
```
