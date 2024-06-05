#!/bin/bash

for i in {1..10}
do
	echo "==========================iteration ${i}=========================="
	npx caliper launch manager --caliper-workspace . --caliper-networkconfig networks/fabric/test-network-org2.yaml --caliper-benchconfig assetbenchmark_300.yaml
	output_file="kata_org2_300_${i}.html" 
	sudo mv report.html workspace/kata/org2/test1/${output_file}
	sleep 1

	npx caliper launch manager --caliper-workspace . --caliper-networkconfig networks/fabric/test-network-org2.yaml --caliper-benchconfig assetbenchmark_400.yaml
	output_file="kata_org2_400_${i}.html" 
	sudo mv report.html workspace/kata/org2/test1/${output_file}
	sleep 1

	npx caliper launch manager --caliper-workspace . --caliper-networkconfig networks/fabric/test-network-org2.yaml --caliper-benchconfig assetbenchmark_500.yaml
	output_file="kata_org2_500_${i}.html" 
	sudo mv report.html workspace/kata/org2/test1/${output_file}
	sleep 1

	npx caliper launch manager --caliper-workspace . --caliper-networkconfig networks/fabric/test-network-org2.yaml --caliper-benchconfig assetbenchmark_600.yaml
	output_file="kata_org2_600_${i}.html" 
	sudo mv report.html workspace/kata/org2/test1/${output_file}
	sleep 1
	
	npx caliper launch manager --caliper-workspace . --caliper-networkconfig networks/fabric/test-network-org2.yaml --caliper-benchconfig assetbenchmark_700.yaml
	output_file="kata_org2_700_${i}.html" 
	sudo mv report.html workspace/kata/org2/test1/${output_file}
	sleep 1
done

