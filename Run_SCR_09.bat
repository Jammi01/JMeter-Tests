@echo off

set scriptFile=E:\Suneel_EHub\New_Perf_Jmeter_Script\SCR_09_Import_Schedules_Onshore\SCR_09_Import_Schedules_Onshore.jmx
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
echo datetimef=%datetimef: =%
set HTMLdir=E:\Suneel_EHub\New_Perf_Jmeter_Script\SCR_09_Import_Schedules_Onshore\Report\HTML
set summaryDir=E:\Suneel_EHub\New_Perf_Jmeter_Script\SCR_09_Import_Schedules_Onshore\Report
cd E:\Suneel_EHub\apache-jmeter-5.4.3\bin

set /p threads=Enter Number of Virtual Threads
set /p rampUp=Enter Number of Ramp-up period

echo %threads%

echo %rampUp%

jmeter -Jthreads=%threads% -Jramp=%rampUp% ^
				-n ^
				-t %scriptFile% ^
				-l %summaryDir%\Summary_%threads%VU_%rampUp%Sec_%datetimef: =%.csv ^
				-e ^
				-o %HTMLdir%_%threads%VU_%rampUp%Sec_%datetimef: =%

pause
