@echo off

SET CONFIGURATION=Debug
SET PROJECT_NAME=aadsp2_projekat
SET PROJECT_ULD="SULDWavTemplate\output\standalone\WavTemplate.uld"


: TO DO: Add additional command line args for your program
SET ADDITIONAL_ARGS=320" "0.8912509381337456
SET ADDITIONAL_ARGS2=220" "0.8912509381337456"

SET SIMULATOR=C:\CirrusDSP\bin\cmdline_simulator.exe -silent
SET COMPARE=PCMCompare.exe


: Delete log files first.

del /Q OutCmp\*
del /Q OutStreams\*


: For each Test stream
for %%f in (TestStreams\*.*) do ( 
	@echo Running tests for stream: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
	"model_0\Debug\model_0.exe" "%%f" "OutStreams//%%~nf_model0.wav" "%ADDITIONAL_ARGS%"
	echo     model 1
	"model_1\Debug\model_1.exe" "%%f" "OutStreams//%%~nf_model1.wav" "%ADDITIONAL_ARGS%"
	echo     model 2
	"model_2\Debug\model_2.exe" "%%f" "OutStreams//%%~nf_model2.wav" "%ADDITIONAL_ARGS%"

	: Create .sbr file for testing Model 3 
	echo     model 3
	(
		@echo ^<?xml version="1.0" encoding="UTF-8" standalone="yes"?^>
		@echo ^<CL_PROJECT^>
		@echo     ^<argv^>%%f OutStreams\%%~nf_model3.wav^</argv^>
		@echo     ^<FILE_IO_CFG block_type="Input" channels_per_line="2" delay="0" file_mode="PCM" index="0" justification="Left" sample_format="LittleEndian" sample_rate="48000" sample_size="32"/^>
		@echo     ^<FILE_IO_CFG block_type="Output" channels_per_line="2" delay="0" file_mode="PCM" index="0" justification="Left" sample_format="LittleEndian" sample_rate="48000" sample_size="32"/^>
		@echo     ^<MEMORY_CFG^>
		@echo         ^<ULD_FILE disk_path=%PROJECT_ULD%/^>
		@echo     ^</MEMORY_CFG^>
		@echo     ^<PROFILE_CFG enable="on"/^>
		@echo     ^<SCP_CFG load_delay="0"/^>
		@echo ^</CL_PROJECT^>
	
	) > SimulatorConfigurationTemp.sbr
	
	: Execute Model 0
	%SIMULATOR% -project SimulatorConfigurationTemp.sbr -max_cycles 10000000

	
	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0.wav OutStreams//%%~nf_model1.wav 2> OutCmp//%%~nf_Model0_vs_Model1.txt
	%COMPARE% OutStreams//%%~nf_model1.wav OutStreams//%%~nf_model2.wav 2> OutCmp//%%~nf_Model1_vs_Model2.txt
	%COMPARE% OutStreams//%%~nf_model2.wav OutStreams//%%~nf_model3.wav 2> OutCmp//%%~nf_Model2_vs_Model3.txt

)