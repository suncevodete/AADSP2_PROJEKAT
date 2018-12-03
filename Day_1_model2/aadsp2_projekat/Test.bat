:Delete log files first/
cd OutCmp
del output1_Model0_vs_Model1.txt
del output1_Model1_vs_Model2.txt
del output2_Model1_vs_Model3.txt

:Executue model_0 model_1 model_2
cd ..

cd model_0\Debug

"model_0.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\speech_2ch_2.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_speech_2ch_2.wav" "320" "0.8912509381337456"

"model_1.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\speech_2ch_2.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_speech_2ch_2.wav" "320" "0.8912509381337456"

"model_2.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\speech_2ch_2.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_speech_2ch_2.wav" "320" "0.8912509381337456"



"model_0.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_lvl_amt_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_2ch_lvl_amt_48k.wav" "320" "0.8912509381337456"

"model_1.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_lvl_amt_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_lvl_amt_48k.wav" "320" "0.8912509381337456"

"model_2.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_lvl_amt_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_2ch_lvl_amt_48k.wav" "320" "0.8912509381337456"


"model_0.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_contour_ne40_24b_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_2ch_contour_ne40_24b_48k.wav" "320" "0.8912509381337456"

"model_1.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_contour_ne40_24b_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_contour_ne40_24b_48k.wav" "320" "0.8912509381337456"

"model_2.exe" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\TestStreams\2ch_contour_ne40_24b_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_2ch_contour_ne40_24b_48k.wav" "320" "0.8912509381337456"



cd ..\..
:Generate new logs


PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_2ch_contour_ne40_24b_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_contour_ne40_24b_48k.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model0_vs_Model1_2ch_contour_ne40_24b_48k.txt

PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_contour_ne40_24b_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_2ch_contour_ne40_24b_48k.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model1_vs_Model2_2ch_contour_ne40_24b_48k.txt

PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_2ch_lvl_amt_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_lvl_amt_48k.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model0_vs_Model1_2ch_lvl_amt_48k.txt

PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_2ch_lvl_amt_48k.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_2ch_lvl_amt_48k.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model1_vs_Model2_2ch_lvl_amt_48k.txt

PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model0_output_speech_2ch_2.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_speech_2ch_2.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model0_vs_Model1_model0_output_speech_2ch_2.txt

PCMCompare "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model1_output_speech_2ch_2.wav" "C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutputStreams\model2_output_speech_2ch_2.wav" > C:\Users\student\Desktop\ra22-2015\AADSP2_PROJEKAT\Day_1_model2\aadsp2_projekat\OutCmp\Model1_vs_Model2_model0_output_speech_2ch_2.txt
