#! /bin/bash

declare -a my_array
my_array=("Aloe_Emodin_Pose1_epik_22.pdb" "Benazepril_Pose1_epik_22.pdb" "Camostat_Pose1_epik_22.pdb" "Capropril_Pose1_epik_22.pdb" "Diquafosol_Pose1_epik_22.pdb" "Diquafosol_Pose2_epik_22.pdb" "Diquafosol_Pose3_epik_22.pdb" "Emodin_H11074_Pose1_epik_22.pdb" "Emodin_H11074_Pose2_epik_22.pdb" "Emodin_H11074_Pose3_epik_22.pdb" "Emodin_H17409_Pose1_epik_22.pdb" "Enalapril_Pose1_epik_22.pdb" "Fosinopril_Pose1_epik_22.pdb" "Fosinopril_Pose2_epik_22.pdb" "Fosinopril_Pose3_epik_22.pdb" "Fosinoprilat_Pose1_epik_22.pdb" "Fosinoprilat_Pose2_epik_22.pdb" "Fosinoprilat_Pose3_epik_22.pdb" "Lisinopril_NH_Pose1_epik_22.pdb" "Lisinopril_NH_Pose2_epik_22.pdb" "Lisinopril_NH_Pose3_epik_22.pdb" "Lisinopril_Pose1_epik_22.pdb" "Lisinopril_Pose2_epik_22.pdb" "Lisinopril_Pose3_epik_22.pdb" "Perindopril_Pose1_epik_22.pdb" "Physcion_Pose1_epik_22.pdb" "Physcion_Pose2_epik_22.pdb" "Physcion_Pose3_epik_22.pdb" "Quinapril_Pose1_epik_22.pdb" "Ramipril_Pose1_epik_22.pdb" "Trandolapril_Pose1_epik_22.pdb")

for variable in "${my_array[@]}"
do 
	#echo "$variable"
	var=$(echo $variable | cut -d "_" -f 1-3)
#	IMAGE_NAME=$cut -d "_" -f 1,2 variable
#	echo "$var.png"
	obabel $(echo $variable) -O  $(echo "$var.png")
done 
