//Maya ASCII 2016 scene
//Name: flappyPlayer.ma
//Last modified: Tue, Jun 19, 2018 04:29:09 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201508242200-969261";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "31425E1C-41C5-6BAD-254C-7F886953C612";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.460598031625999 166.94984119771388 29.854399543892669 ;
	setAttr ".r" -type "double3" 53.482924915363306 0 -140.40508600525408 ;
	setAttr ".rp" -type "double3" 1.5987211554602254e-014 -1.2079226507921703e-013 1.7763568394002505e-014 ;
	setAttr ".rpt" -type "double3" -143.04054457218538 -2.5844486854204951 122.56992209526548 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "017D6AD0-49A2-0623-D4AE-CEAB9810F4B0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 319.6108803208179;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4967FAA3-4068-E9C7-63EC-BA866673F481";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".rp" -type "double3" 0 -2.2226664952995623e-014 -100.09999999999998 ;
	setAttr ".rpt" -type "double3" 0 -100.09999999999998 100.10000000000004 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "47869FA9-4AC8-49F9-5B86-258E897C339B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "FD3525A9-4E3F-78E5-2869-66A0F2B03F87";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 0 -100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F49A7EA2-4DE4-4101-D30F-1BBBC313EFBB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "145E6CB0-414B-1829-E096-13AB67C16AE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 90 1.9083328088781091e-014 89.999999999999972 ;
	setAttr ".rp" -type "double3" -2.2226664952995623e-014 0 -100.09999999999998 ;
	setAttr ".rpt" -type "double3" -100.09999999999998 0 100.10000000000004 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B14020A2-4EDD-435E-BC0B-E0819207D1DC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "SL_root_JNT";
	rename -uid "F96EEEBE-4C5D-DC2D-0085-24B9ACC138F8";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "SL_adjust_JNT" -p "SL_root_JNT";
	rename -uid "08F7EF92-4091-4896-B2C2-C0BE344476A0";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -4.4408920985006262e-016 1 0 0 -1 -4.4408920985006262e-016 0
		 0 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "SL_body_JNT" -p "SL_adjust_JNT";
	rename -uid "7FCF2016-4B46-6656-58BC-66AEAF68494E";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.2485504093837566e-019 -1.3817737400531767 2.9952601954993699e-018 ;
	setAttr ".jo" -type "double3" 179.07596508708249 65.809703228145182 89.905603619583474 ;
	setAttr ".bps" -type "matrix" 0.00067510471905496416 0.91218952490189853 0.40976800130423463 0
		 0.9998928346730418 -0.0066082361211322682 0.013063322122519146 0 0.014624069308084135 0.40971526927198648 -0.91209623106460447 0
		 2.2485504093837566e-019 6.1063554821628167e-016 -1.3817737400531767 1;
	setAttr ".radi" 1.4284318256378177;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 380;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "SL_rWing01_JNT" -p "SL_body_JNT";
	rename -uid "75008204-4E97-BD9C-28A0-97A7FC4FD061";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 33.668129444122314 0.49417279660702007 4.7866648435592607 ;
	setAttr ".jo" -type "double3" 68.872817993164091 -2.5635006948018231 79.249212489434214 ;
	setAttr ".bps" -type "matrix" 0.98213937609941038 0.1818267281979386 0.048386845608017384 0
		 0.039627853182620604 0.051502313747228079 -0.99788633868332877 0 -0.18393444257995262 0.98198093290629396 0.043377047401674418 0
		 0.5868498699139586 32.669619066738569 8.0549049451634946 1;
	setAttr ".radi" 2.5104748821258545;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 381;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "SL_rWing02_JNT" -p "SL_rWing01_JNT";
	rename -uid "1BFB1EF8-4D11-5DFD-2C82-7AA46A2335A2";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 59.773210327645366 -2.9802326562133885e-007 -4.7683707222745397e-006 ;
	setAttr ".jo" -type "double3" -2.557586880750589 26.376241353696006 -1.1444669636631157 ;
	setAttr ".bps" -type "matrix" 0.96072556313609059 -0.27431473500371628 0.041926346092676356 0
		 0.047079982542131742 0.012227654241433551 -0.99881627926039762 0 0.27347736209908585 0.96156222400403879 0.024662152941958927 0
		 59.292474233823995 43.537981636703542 10.947142135338325 1;
	setAttr ".radi" 2.5104748821258545;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 413;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode transform -n "rWing02_JNT_phys" -p "SL_rWing02_JNT";
	rename -uid "10144FD1-4C57-8CE7-22FD-CB931C1B9F36";
	setAttr ".t" -type "double3" -45.479659472645629 7.6103277385216552 -58.349607990648884 ;
	setAttr ".r" -type "double3" 88.530799647934003 -15.871295419934023 2.8055130576689167 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 75.855603098403535 22.968572170691107 5.5270949602127075 ;
	setAttr ".rpt" -type "double3" -9.0480729868899257 -24.636992365451341 37.439716675454434 ;
	setAttr ".sp" -type "double3" 75.855603098403492 22.968572170691107 5.5270949602127066 ;
	setAttr ".spt" -type "double3" 1.4210854715202007e-014 0 8.8817841970012543e-016 ;
createNode mesh -n "rWing02_JNT_physShape" -p "rWing02_JNT_phys";
	rename -uid "623B4E7B-4DF4-82F0-7C1F-62BDD7211F67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  63.257206 -16.275745 14.191676 
		123.99184 22.025135 14.191676 63.257187 42.159588 14.191676 123.99184 32.738647 14.191676 
		63.257187 42.159588 3.6782546 123.99184 32.738647 3.6782546 63.257206 -16.275745 
		3.6782546 123.99184 22.025135 3.6782546;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "SL_rWing02_JNT_parentConstraint1" -p "SL_rWing02_JNT";
	rename -uid "41AD210C-4DE4-CE49-9A0C-27AD2747BA92";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rWing02_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 7.1054273576010019e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-016 6.3611093629270335e-015 
		1.987846675914698e-016 ;
	setAttr ".lr" -type "double3" 5.2180975242760805e-016 -9.5323460130971976e-015 -2.981770013872047e-016 ;
	setAttr ".rst" -type "double3" 59.77321032764538 -2.9802327095040937e-007 -4.7683706938528303e-006 ;
	setAttr ".rsrr" -type "double3" 5.2180975242760805e-016 -9.5323460130971976e-015 
		-2.981770013872047e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rWing01_JNT_phys" -p "SL_rWing01_JNT";
	rename -uid "5EFF88B7-4EB1-1ECF-DC6C-CA908764CE45";
	setAttr ".t" -type "double3" -6.9063297534482588 6.332063032508656 -32.322399098770767 ;
	setAttr ".r" -type "double3" 87.470717554384379 10.59901442413376 2.3105455959030343 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 30.739297031096786 22.968572170691118 5.5270949602127102 ;
	setAttr ".rpt" -type "double3" 3.8947159964347229 -26.082917764146821 11.613338562856416 ;
	setAttr ".sp" -type "double3" 30.739297031096793 22.968572170691115 5.5270949602127111 ;
	setAttr ".spt" -type "double3" -7.1054273576010003e-015 3.5527136788005017e-015 
		-8.8817841970012513e-016 ;
createNode mesh -n "rWing01_JNT_physShape" -p "rWing01_JNT_phys";
	rename -uid "B041E98D-4243-5F3C-14E9-20904D52CEF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  14.112714 -13.420597 12.85876 
		49.372849 -13.420597 12.85876 14.112714 34.127663 12.85876 49.372849 34.127663 12.85876 
		14.112714 34.127663 3.6480227 49.372849 34.127663 3.6480227 14.112714 -13.420597 
		3.6480227 49.372849 -13.420597 3.6480227;
	setAttr -s 8 ".vt[0:7]"  3.52817845 -3.35514927 1.83291626 12.34321213 -3.35514927 1.83291626
		 3.52817845 8.53191566 1.83291626 12.34321213 8.53191566 1.83291626 3.52817845 8.53191566 -0.46976802
		 12.34321213 8.53191566 -0.46976802 3.52817845 -3.35514927 -0.46976802 12.34321213 -3.35514927 -0.46976802;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "SL_rWing01_JNT_parentConstraint1" -p "SL_rWing01_JNT";
	rename -uid "018060FF-4A98-BC4C-37A3-58BE4D44EC17";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rWing01_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -3.5527136788005009e-015 
		2.1316282072803006e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244621e-014 -1.113194138512231e-014 
		-5.5659706925611551e-015 ;
	setAttr ".lr" -type "double3" -360 1.9083328088781101e-014 9.5416640443905503e-015 ;
	setAttr ".rst" -type "double3" 33.668129444122322 0.49417279660701963 4.7866648435592607 ;
	setAttr ".rsrr" -type "double3" -360 1.9083328088781101e-014 9.5416640443905503e-015 ;
	setAttr -k on ".w0";
createNode joint -n "SL_lWing01_JNT" -p "SL_body_JNT";
	rename -uid "A89E744A-4F12-3C20-3F3F-FC977D01B521";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 33.668124675750725 0.49417018890381087 4.7866636514663625 ;
	setAttr ".jo" -type "double3" -68.716541290283203 -0.90649618214581418 -79.293436848630023 ;
	setAttr ".bps" -type "matrix" -0.98200649213857327 0.18241896387138634 0.048852543616321527 0
		 0.039561533456930822 -0.054230493160793924 0.9977444255329484 0 0.18465680184664424 0.98172418490715974 0.04603792241339949 0
		 0.58684724183780534 32.669614245893612 8.0549040444755704 1;
	setAttr ".radi" 2.5104742813110357;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 421;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "SL_lWing02_JNT" -p "SL_lWing01_JNT";
	rename -uid "2EE54569-4025-59B6-F5D8-C5A87B68C7F2";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 59.77318999447612 -9.5367431898196742e-006 -9.5367425387848925e-006 ;
	setAttr ".jo" -type "double3" 1.2785419821739206 25.486038332975067 0.88842616933625118 ;
	setAttr ".bps" -type "matrix" -0.9652434992835025 -0.25853825266527242 0.03824864703133099 0
		 0.049067505593457114 -0.035521563989012614 0.99816361303476231 0 -0.25670482462504612 0.96534770440528972 0.046972785883553254 0
		 -58.110815526882725 43.573368786704954 10.97496646148322 1;
	setAttr ".radi" 2.5104742813110357;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 422;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode transform -n "lWing02_JNT_phys" -p "SL_lWing02_JNT";
	rename -uid "B242F196-47C3-4A8C-985D-42B63062AD9F";
	setAttr ".t" -type "double3" -45.245481914898079 -6.5556652026499709 -57.496302989771927 ;
	setAttr ".r" -type "double3" 87.214245920072017 14.874627531354433 177.08991245028977 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -75.855603098403535 22.968572170691125 5.5270949602127049 ;
	setAttr ".rpt" -type "double3" 143.34788026238212 -21.989551931042449 36.377685796558076 ;
	setAttr ".sp" -type "double3" -75.855603098403535 22.968572170691122 5.527094960212704 ;
	setAttr ".spt" -type "double3" 0 3.5527136788005017e-015 8.8817841970012543e-016 ;
createNode mesh -n "lWing02_JNT_physShape" -p "lWing02_JNT_phys";
	rename -uid "40B62646-40A9-4811-4F41-8F9DA57846B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -62.257187 -16.275745 14.191676 
		-124.99188 22.025135 14.191676 -62.257206 42.159588 14.191676 -124.99188 32.738647 
		14.191676 -62.257206 42.159588 3.6782546 -124.99188 32.738647 3.6782546 -62.257187 
		-16.275745 3.6782546 -124.99188 22.025135 3.6782546;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "SL_lWing02_JNT_parentConstraint1" -p "SL_lWing02_JNT";
	rename -uid "232643E2-4E76-689F-A2C5-6CA516A93E32";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lWing02_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.9737991503207013e-014 -1.5099033134902129e-014 
		7.1054273576010019e-014 ;
	setAttr ".tg[0].tor" -type "double3" 5.9635400277440939e-016 0 3.975693351829396e-016 ;
	setAttr ".lr" -type "double3" -7.7029058691694525e-016 -9.5401110391749889e-015 
		-2.4848083448933715e-016 ;
	setAttr ".rst" -type "double3" 59.773189994476134 -9.5367431942605663e-006 -9.536742489046901e-006 ;
	setAttr ".rsrr" -type "double3" -7.7029058691694525e-016 -9.5401110391749889e-015 
		-2.4848083448933715e-016 ;
	setAttr -k on ".w0";
createNode transform -n "lWing01_JNT_phys" -p "SL_lWing01_JNT";
	rename -uid "18C95C19-4B33-625A-FDF7-C68FBF80B57E";
	setAttr ".t" -type "double3" -5.7767719305934824 -6.2882628934426688 -32.551746799078465 ;
	setAttr ".r" -type "double3" 87.315083373953556 -10.641123860957268 177.69300526791167 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -30.739297031096793 22.968572170691118 5.5270949602127022 ;
	setAttr ".rpt" -type "double3" 65.385402064007792 -19.915634708701788 11.599943520713687 ;
	setAttr ".sp" -type "double3" -30.739297031096793 22.968572170691122 5.5270949602127022 ;
	setAttr ".spt" -type "double3" 0 -3.5527136788005005e-015 0 ;
createNode mesh -n "lWing01_JNT_physShape" -p "lWing01_JNT_phys";
	rename -uid "84F50774-40FB-E4FE-AF81-9E91C303A632";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -17.140892 -16.275745 14.191676 
		-62.216061 -16.275745 14.191676 -17.140892 42.159588 14.191676 -62.216061 42.159588 
		14.191676 -17.140892 42.159588 3.6782546 -62.216061 42.159588 3.6782546 -17.140892 
		-16.275745 3.6782546 -62.216061 -16.275745 3.6782546;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "SL_lWing01_JNT_parentConstraint1" -p "SL_lWing01_JNT";
	rename -uid "4D8A7FD6-4C25-0E6F-D960-09A093A85A5A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lWing01_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 8.8817841970012523e-016 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.180554681463516e-015 2.7332891793827097e-015 
		-2.3357198441997702e-014 ;
	setAttr ".lr" -type "double3" 0 0 360 ;
	setAttr ".rst" -type "double3" 33.668124675750725 0.49417018890381076 4.7866636514663643 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode transform -n "body_JNT_phys" -p "SL_body_JNT";
	rename -uid "1BE7FB80-400E-C31C-A22C-2886BF8EB053";
	setAttr ".t" -type "double3" 0.56620666371626616 0.01805055546675308 -1.2603106204865455 ;
	setAttr ".r" -type "double3" 155.8102980230604 -0.8379273194680229 89.961315209078222 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 1.3877787807814454e-017 -1.9136306450444229e-015 5.5270949602127057 ;
	setAttr ".rpt" -type "double3" 2.264826654865066 0.072202221867013625 -10.56833744215889 ;
	setAttr ".sp" -type "double3" 1.3877787807814457e-017 -1.9136306450444225e-015 5.5270949602127066 ;
	setAttr ".spt" -type "double3" -3.081487911019577e-033 -3.9443045261050599e-031 
		-8.8817841970012513e-016 ;
createNode mesh -n "body_JNT_physShape" -p "body_JNT_phys";
	rename -uid "9D42CED5-4F7A-EB6D-3446-638449452E89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -13.067828 -48.208038 16.265854 
		13.067828 -48.208038 16.265854 -13.067828 50.002991 16.265854 13.067828 50.002991 
		16.265854 -13.067828 50.002991 -7.5407333 13.067828 50.002991 -7.5407333 -13.067828 
		-48.208038 -7.5407333 13.067828 -48.208038 -7.5407333;
	setAttr -s 8 ".vt[0:7]"  -3.26695704 -12.052009583 2.68468976 3.26695704 -12.052009583 2.68468976
		 -3.26695704 12.50074768 2.68468976 3.26695704 12.50074768 2.68468976 -3.26695704 12.50074768 -3.26695704
		 3.26695704 12.50074768 -3.26695704 -3.26695704 -12.052009583 -3.26695704 3.26695704 -12.052009583 -3.26695704;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "SL_body_JNT_parentConstraint1" -p "SL_body_JNT";
	rename -uid "326A528A-4F42-098E-2DD3-2D9044D651FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "body_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 3.4694469519536142e-018 
		-2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 4.2167197612840533e-014 -2.2263882770244621e-014 
		-2.9817700138720475e-016 ;
	setAttr ".lr" -type "double3" -1.5902773407317581e-014 360 1.2722218725854064e-014 ;
	setAttr ".rst" -type "double3" 5.2168617687785828e-019 -1.3817737400531764 -7.2801291193783685e-018 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317581e-014 360 1.2722218725854064e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "SL_adjust_JNT_parentConstraint1" -p "SL_adjust_JNT";
	rename -uid "78B188AE-481B-F46E-E42A-CE82322B81DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "adjust_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".lr" -type "double3" -360 0 0 ;
	setAttr ".rsrr" -type "double3" -360 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "SL_root_JNT_parentConstraint1" -p "SL_root_JNT";
	rename -uid "E92E9489-4B41-D1EF-65B1-B4B9C7495553";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "MASTER_BIRD_ANIMATION";
	rename -uid "3C676BC8-4FCA-CFFA-AB0E-C9B6792CC6CC";
createNode joint -n "root_JNT" -p "MASTER_BIRD_ANIMATION";
	rename -uid "8339456D-4D25-4A7A-C42D-7EA0A942112F";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "adjust_JNT" -p "root_JNT";
	rename -uid "76DAD4FC-4B98-6B1C-4D69-8CAD4DAC30CD";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".r" -type "double3" -270 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "body_JNT" -p "adjust_JNT";
	rename -uid "006360B9-4C58-EA96-5E97-A5AE31930668";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 0.001714765986399609 1.0408107233127557 -2.3169613932508222 0
		 2.5397278000695258 0.033180838191200331 0.016784919747676506 0 0.037145136042535103 -2.316724426904095 -1.0406767839508453 0
		 0 -1.3817737400531769 0 1;
	setAttr ".radi" 1.4284318256378177;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 380;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "rWing01_JNT" -p "body_JNT";
	rename -uid "2E6CB9E7-4F83-2F32-414F-A9A3FD9CB1A4";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 33.668129444122307 0.49417279660701752 4.7866648435592642 ;
	setAttr ".bps" -type "matrix" 2.4946335692171795 0.12290256586767025 -0.46183980703935523 0
		 0.10065474708385763 -2.5346313002556542 -0.13081587691795815 0 -0.46719340061237308 0.11017768069894385 -2.4942311235786265 0
		 0.29811973391629099 3.412059032036888 -16.596166485903193 1;
	setAttr ".radi" 2.5104748821258545;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 381;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "rWing02_JNT" -p "rWing01_JNT";
	rename -uid "ACFC271A-43D7-35BB-682F-CFA535E1B25C";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 59.773210327645359 -2.9802322565330996e-007 -4.7683707222745397e-006 ;
	setAttr ".bps" -type "matrix" 2.4402430754933122 0.1064929335329575 0.69675946885808115 0
		 0.11958313800254129 -2.536993046103535 -0.031058255890161354 0 0.69463270739168248 0.062641870938426061 -2.4423687776887024 0
		 30.120576910782596 4.8813155246457018 -22.117294671445382 1;
	setAttr ".radi" 2.5104748821258545;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 413;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "lWing01_JNT" -p "body_JNT";
	rename -uid "E5897669-42F4-60EB-440A-EBBC5C9DBA93";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 33.668124675750725 0.49417018890380859 4.7866636514663679 ;
	setAttr ".bps" -type "matrix" -2.4942967873752879 0.12408547557759561 -0.46334422346825105 0
		 0.10048629498060412 2.5342708408536887 0.13774545262841653 0 0.46902824873421317 0.1169363159600868 -2.4935792810352697 0
		 0.29811839885360536 3.4120585744874248 -16.596164036913958 1;
	setAttr ".radi" 2.5104742813110357;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 421;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "lWing02_JNT" -p "lWing01_JNT";
	rename -uid "4EB16DCC-46F5-EB3A-1AD5-D7802CD7CB08";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 59.773189994476155 -9.5367431631743216e-006 -9.5367425956283114e-006 ;
	setAttr ".bps" -type "matrix" -2.4517190367950299 0.097151591391170994 0.65668712624524772 0
		 0.12463143568463531 2.5353349724095064 0.090224754340433921 0 -0.65203048550509468 0.11931089044474713 -2.4519833511335722 0
		 -29.520294287656448 4.8954502823273067 -22.135271343646096 1;
	setAttr ".radi" 2.5104742813110357;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 422;
	setAttr ".fbxID" 5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode transform -n "cryExportNode_flappySkel";
	rename -uid "28F03F29-41C7-3CF8-92D1-0DBCB4789E38";
	addAttr -ci true -sn "DoNotMerge" -ln "DoNotMerge" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "WriteVertexColours" -ln "WriteVertexColours" -dv 1 -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "EightWeightsPerVertex" -ln "EightWeightsPerVertex" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "UseF32VertexFormat" -ln "UseF32VertexFormat" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "NodeCustomExportPath" -ln "NodeCustomExportPath" -dt "string";
	addAttr -ci true -sn "fileType" -ln "fileType" -min 0 -max 3 -en "Geometry (.CGF):Character (.CHR):Animated Geometry (.CGA):Character Skin (.SKIN)" 
		-at "enum";
	setAttr ".fileType" 1;
createNode transform -n "flappySkel_group" -p "cryExportNode_flappySkel";
	rename -uid "CF8BB2B2-45F7-570B-62A2-3BAC99178875";
createNode transform -n "flappySkel_MSH" -p "flappySkel_group";
	rename -uid "83753913-4515-8407-062D-2B9E04697250";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "flappySkel_MSHShape" -p "flappySkel_MSH";
	rename -uid "00A5EB82-476F-2576-A985-5DAE62CB6447";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "flappySkel_MSHShapeOrig" -p "flappySkel_MSH";
	rename -uid "4F4E6A94-4918-E7F4-7E09-09BB51947B4E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.5 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  0 -13.2630291 1.1779936e-014 -13.2630291 13.2630291 -1.1779936e-014
		 13.2630291 13.2630291 -1.1779936e-014;
	setAttr -s 3 ".ed[0:2]"  0 1 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 1 -3 -1
		mu 0 3 0 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cryExportNode_flappyPlayer";
	rename -uid "A417859A-494D-0938-E510-0EA42533D00B";
	addAttr -ci true -sn "fileType" -ln "fileType" -min 0 -max 3 -en "Geometry (.CGF):Character (.CHR):Animated Geometry (.CGA):Character Skin (.SKIN)" 
		-at "enum";
	addAttr -ci true -sn "DoNotMerge" -ln "DoNotMerge" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "WriteVertexColours" -ln "WriteVertexColours" -dv 1 -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "EightWeightsPerVertex" -ln "EightWeightsPerVertex" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "UseF32VertexFormat" -ln "UseF32VertexFormat" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "NodeCustomExportPath" -ln "NodeCustomExportPath" -dt "string";
	setAttr ".fileType" 3;
createNode transform -n "flappyPlayer_group" -p "cryExportNode_flappyPlayer";
	rename -uid "5EC3C717-4C28-8C0C-C096-F7993AAD8BE7";
createNode transform -n "flappyPlayer_MSH" -p "flappyPlayer_group";
	rename -uid "F84D3BBA-4937-1FB2-AAE1-75990224A79F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "flappyPlayer_MSHShape" -p "flappyPlayer_MSH";
	rename -uid "E694B168-4A1D-5E8C-3297-41A7A5BF386B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "flappyPlayer_MSHShapeOrig" -p "flappyPlayer_MSH";
	rename -uid "73969A98-4AE9-76DC-DC77-31A2882F2A32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 210 ".uvst[0].uvsp[0:209]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  50.3425827 4.26860619 -1.86124039 62.38257599 5.7065258 -15.22949314
		 50.3425827 4.99407053 -1.86124039 62.38257599 6.43197393 -15.22949314 48.25450897 5.51067162 -8.10693073
		 55.2603035 6.10243797 -17.74374199 48.25450897 4.64783764 -8.10693073 55.2603035 4.92254019 -17.74374199
		 31.81998825 2.71536279 -2.42548823 48.13481522 4.24071026 -8.3077879 31.81998825 4.96617508 -2.42548823
		 48.13481522 5.52762938 -8.3077879 31.81998825 6.2497468 -21.3134346 55.020744324 6.1338129 -17.67256737
		 31.81998825 3.60845423 -21.3134346 55.020744324 4.86910486 -17.67256737 31.82922363 2.62487459 5.92717361
		 50.23632813 4.24071693 -1.91951823 31.82922363 3.35032892 5.92717361 50.23632813 4.96616602 -1.91951823
		 31.82922363 4.96618223 -2.08306694 48.14319992 5.50600433 -8.16749096 31.82922363 2.77305412 -2.08306694
		 48.14319992 4.26631308 -8.16749096 13.13721752 1.75010371 9.8692894 31.50956726 2.61976528 5.8701148
		 13.13721752 3.17580247 9.8692894 31.50956726 3.32700944 5.8701148 8.79121113 4.8298955 2.35436511
		 31.50956726 4.99046516 -2.16465592 8.79121113 0.89625287 2.35436511 31.50956726 2.77041435 -2.16465592
		 8.79121113 0.97707963 2.14373493 31.50956726 2.74069166 -2.36852789 8.79121113 4.96617508 2.14373493
		 31.50956726 5.12674332 -2.36852789 8.79121208 6.2497468 -18.36478996 31.50956726 6.41031504 -21.26556015
		 8.79121208 1.92509389 -18.36478996 31.50956726 3.68870592 -21.26556015 -17.41945267 -1.2754637 30.42635727
		 17.41945267 -1.2754637 30.42635727 -17.41945267 0.61396784 30.42635727 17.41945267 0.61396784 30.42635727
		 -7.5418148 5.42068577 10.62670326 7.5418148 5.42068577 10.62670326 -7.5418148 -5.89482498 10.62670326
		 7.5418148 -5.89482498 10.62670326 -6.98887205 7.62873888 6.027094841 6.98887205 7.62873888 6.027094841
		 -6.98887205 -7.12911701 6.027094841 6.98887205 -7.12911701 6.027094841 -5.18368149 -5.95233631 10.066319466
		 5.18368149 -5.95233631 10.066319466 -5.18368149 6.000623703 10.066319466 5.18368149 6.000623703 10.066319466
		 -7.5418148 -7.5418148 4.89974737 7.5418148 -7.5418148 4.89974737 -7.5418148 7.5418148 4.89974737
		 7.5418148 7.5418148 4.89974737 -7.5418148 7.5418148 -18.36478996 7.5418148 7.5418148 -18.36478996
		 -7.5418148 -4.50927734 -18.36478996 7.5418148 -4.50927734 -18.36478996 -4.76828671 -2.25465727 -25.046360016
		 4.76828671 -2.25465727 -25.046360016 -4.76828671 7.90085697 -25.046360016 4.76828671 7.90085697 -25.046360016
		 -3.53666186 5.22606468 -31.62891388 3.53666186 5.22606468 -31.62891388 -3.53666186 -0.68072581 -31.62891388
		 3.53666186 -0.68072581 -31.62891388 -6.98887205 -3.86924076 -20.048780441 6.98887205 -3.86924076 -20.048780441
		 -6.98887205 7.74982548 -20.048780441 6.98887205 7.74982548 -20.048780441 -5.18368149 8.12623787 -24.088006973
		 5.18368149 8.12623787 -24.088006973 -5.18368149 -2.24112558 -24.088006973 5.18368149 -2.24112558 -24.088006973
		 -8.79121113 0.97707963 2.14373493 -31.50956726 2.74069166 -2.36852789 -8.79121113 4.96617508 2.14373493
		 -31.50956726 5.12674332 -2.36852789 -8.79121113 6.2497468 -18.36478996 -31.50956726 6.41031504 -21.26556015
		 -8.79121113 1.92509389 -18.36478996 -31.50956726 3.68870592 -21.26556015 -13.13721752 1.75010371 9.8692894
		 -31.50956726 2.61976528 5.8701148 -13.13721752 3.17580247 9.8692894 -31.50956726 3.32700944 5.8701148
		 -8.79121113 4.8298955 2.35436511 -31.50956726 4.99046516 -2.16465592 -8.79121113 0.89625287 2.35436511
		 -31.50956726 2.77041435 -2.16465592 -31.82922363 2.62487459 5.92717361 -50.23632813 4.24071693 -1.91951823
		 -31.82922363 3.35032892 5.92717361 -50.23632813 4.96616602 -1.91951823 -31.82922363 4.96618223 -2.08306694
		 -48.14319992 5.50600433 -8.16749096 -31.82922363 2.77305412 -2.08306694 -48.14319992 4.26631308 -8.16749096
		 -31.81998825 2.71536279 -2.42548823 -48.13481522 4.24071026 -8.3077879 -31.81998825 4.96617508 -2.42548823
		 -48.13481522 5.52762938 -8.3077879 -31.81998825 6.2497468 -21.3134346 -55.020744324 6.1338129 -17.67256737
		 -31.81998825 3.60845423 -21.3134346 -55.020744324 4.86910486 -17.67256737 -50.3425827 4.26860619 -1.86124039
		 -62.38257599 5.7065258 -15.22949314 -50.3425827 4.99407053 -1.86124039 -62.38257599 6.43197393 -15.22949314
		 -48.25450897 5.51067162 -8.10693073 -55.2603035 6.10243797 -17.74374199 -48.25450897 4.64783764 -8.10693073
		 -55.2603035 4.92254019 -17.74374199;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:179]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 124 121 -126 -121
		mu 0 4 140 143 142 141
		f 4 126 122 -128 -122
		mu 0 4 143 145 144 142
		f 4 128 123 -130 -123
		mu 0 4 145 147 146 144
		f 4 130 120 -132 -124
		mu 0 4 147 149 148 146
		f 4 125 127 129 131
		mu 0 4 141 142 151 150
		f 4 -129 -127 -125 -131
		mu 0 4 152 153 143 140
		f 4 136 133 -138 -133
		mu 0 4 154 157 156 155
		f 4 138 134 -140 -134
		mu 0 4 157 159 158 156
		f 4 140 135 -142 -135
		mu 0 4 159 161 160 158
		f 4 142 132 -144 -136
		mu 0 4 161 163 162 160
		f 4 137 139 141 143
		mu 0 4 155 156 165 164
		f 4 -141 -139 -137 -143
		mu 0 4 166 167 157 154
		f 4 148 145 -150 -145
		mu 0 4 168 171 170 169
		f 4 150 146 -152 -146
		mu 0 4 171 173 172 170
		f 4 152 147 -154 -147
		mu 0 4 173 175 174 172
		f 4 154 144 -156 -148
		mu 0 4 175 177 176 174
		f 4 149 151 153 155
		mu 0 4 169 170 179 178
		f 4 -153 -151 -149 -155
		mu 0 4 180 181 171 168
		f 4 160 157 -162 -157
		mu 0 4 182 185 184 183
		f 4 162 158 -164 -158
		mu 0 4 185 187 186 184
		f 4 164 159 -166 -159
		mu 0 4 187 189 188 186
		f 4 166 156 -168 -160
		mu 0 4 189 191 190 188
		f 4 161 163 165 167
		mu 0 4 183 184 193 192
		f 4 -165 -163 -161 -167
		mu 0 4 194 195 185 182
		f 4 172 169 -174 -169
		mu 0 4 196 199 198 197
		f 4 174 170 -176 -170
		mu 0 4 199 201 200 198
		f 4 176 171 -178 -171
		mu 0 4 201 203 202 200
		f 4 178 168 -180 -172
		mu 0 4 203 205 204 202
		f 4 173 175 177 179
		mu 0 4 197 198 207 206
		f 4 -177 -175 -173 -179
		mu 0 4 208 209 199 196;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "flappyPlayer_MSHShapeOrig1" -p "flappyPlayer_MSH";
	rename -uid "83721823-4072-10E7-4187-CEACB5300B8B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 210 ".uvst[0].uvsp[0:209]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  99.099571228 3.66385913 9.74102116 122.80034637 29.97931671 12.57157135
		 99.099571228 3.66385913 11.16910076 122.80034637 29.97931671 13.99961948 94.98918915 15.9585247 12.1860323
		 108.78012848 34.92862701 13.3509264 94.98918915 15.9585247 10.48754025 108.78012848 34.92862701 11.028292656
		 62.63777161 4.77458334 6.68345547 94.75357056 16.35391235 9.68610859 62.63777161 4.77458334 11.11418819
		 94.75357056 16.35391235 12.21941376 62.63777161 41.95558167 13.64090443 108.3085556 34.788517 13.41268826
		 62.63777161 41.95558167 8.44150925 108.3085556 34.788517 10.92310524 62.65595245 -11.66766453 6.50532913
		 98.89041138 3.77857924 9.68612099 62.65595245 -11.66766453 7.93338919 98.89041138 3.77857924 11.11417103
		 62.65595245 4.10052538 11.1142025 94.77008057 16.077737808 12.1768446 62.65595245 4.10052538 6.79702139
		 94.77008057 16.077737808 9.73650742 25.86066437 -19.42773438 4.7833395 62.026706696 -11.55534363 6.49527168
		 25.86066437 -19.42773438 7.58983278 62.026706696 -11.55534363 7.88748455 17.30553436 -4.6345768 10.84592152
		 62.026706696 4.26113367 11.16200352 17.30553436 -4.6345768 3.10253072 62.026706696 4.26113367 6.79182482
		 17.30553436 -4.21995068 3.2616384 62.026706696 4.66245651 6.73331547 17.30553436 -4.21995068 11.11418819
		 62.026706696 4.66245651 11.43026733 17.30553627 36.15116119 13.64090443 62.026706696 41.86133957 13.95698357
		 17.30553627 36.15116119 5.12780809 62.026706696 41.86133957 8.5994854 -34.29026031 -59.89440536 -1.17250204
		 34.29026031 -59.89440536 -1.17250204 -34.29026031 -59.89440536 2.5468514 34.29026031 -59.89440536 2.5468514
		 -14.84609222 -20.91870689 12.0088949203 14.84609222 -20.91870689 12.0088949203 -14.84609222 -20.91870689 -10.26573277
		 14.84609222 -20.91870689 -10.26573277 -13.75762177 -11.86435986 16.3554554 13.75762177 -11.86435986 16.3554554
		 -13.75762177 -11.86435986 -12.69544125 13.75762177 -11.86435986 -12.69544125 -10.20409775 -19.8155899 -10.3789444
		 10.20409775 -19.8155899 -10.3789444 -10.20409775 -19.8155899 13.15050507 10.20409775 -19.8155899 13.15050507
		 -14.84609222 -9.64517212 -13.5078392 14.84609222 -9.64517212 -13.5078392 -14.84609222 -9.64517212 16.18434525
		 14.84609222 -9.64517212 16.18434525 -14.84609222 36.15116119 16.18434525 14.84609222 36.15116119 16.18434525
		 -14.84609222 36.15116119 -7.53827667 14.84609222 36.15116119 -7.53827667 -9.38639069 49.30385971 -3.1000483
		 9.38639069 49.30385971 -3.1000483 -9.38639069 49.30385971 16.89112091 9.38639069 49.30385971 16.89112091
		 -6.96193266 62.26164246 11.62578201 6.96193266 62.26164246 11.62578201 -6.96193266 62.26164246 -0.0017581354
		 6.96193266 62.26164246 -0.0017581354 -13.75762177 39.4661026 -6.27836227 13.75762177 39.4661026 -6.27836227
		 -13.75762177 39.4661026 16.59381485 13.75762177 39.4661026 16.59381485 -10.20409775 47.41733551 17.33478546
		 10.20409775 47.41733551 17.33478546 -10.20409775 47.41733551 -3.073411226 10.20409775 47.41733551 -3.073411226
		 -17.30553436 -4.21995068 3.2616384 -62.026706696 4.66245651 6.73331547 -17.30553436 -4.21995068 11.11418819
		 -62.026706696 4.66245651 11.43026733 -17.30553436 36.15116119 13.64090443 -62.026706696 41.86133957 13.95698357
		 -17.30553436 36.15116119 5.12780809 -62.026706696 41.86133957 8.5994854 -25.86066437 -19.42773438 4.7833395
		 -62.026706696 -11.55534363 6.49527168 -25.86066437 -19.42773438 7.58983278 -62.026706696 -11.55534363 7.88748455
		 -17.30553436 -4.6345768 10.84592152 -62.026706696 4.26113367 11.16200352 -17.30553436 -4.6345768 3.10253072
		 -62.026706696 4.26113367 6.79182482 -62.65595245 -11.66766453 6.50532913 -98.89041138 3.77857924 9.68612099
		 -62.65595245 -11.66766453 7.93338919 -98.89041138 3.77857924 11.11417103 -62.65595245 4.10052538 11.1142025
		 -94.77008057 16.077737808 12.1768446 -62.65595245 4.10052538 6.79702139 -94.77008057 16.077737808 9.73650742
		 -62.63777161 4.77458334 6.68345547 -94.75357056 16.35391235 9.68610859 -62.63777161 4.77458334 11.11418819
		 -94.75357056 16.35391235 12.21941376 -62.63777161 41.95558167 13.64090443 -108.3085556 34.788517 13.41268826
		 -62.63777161 41.95558167 8.44150925 -108.3085556 34.788517 10.92310524 -99.099571228 3.66385913 9.74102116
		 -122.80034637 29.97931671 12.57157135 -99.099571228 3.66385913 11.16910076 -122.80034637 29.97931671 13.99961948
		 -94.98918915 15.9585247 12.1860323 -108.78012848 34.92862701 13.3509264 -94.98918915 15.9585247 10.48754025
		 -108.78012848 34.92862701 11.028292656;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:179]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 124 121 -126 -121
		mu 0 4 140 143 142 141
		f 4 126 122 -128 -122
		mu 0 4 143 145 144 142
		f 4 128 123 -130 -123
		mu 0 4 145 147 146 144
		f 4 130 120 -132 -124
		mu 0 4 147 149 148 146
		f 4 125 127 129 131
		mu 0 4 141 142 151 150
		f 4 -129 -127 -125 -131
		mu 0 4 152 153 143 140
		f 4 136 133 -138 -133
		mu 0 4 154 157 156 155
		f 4 138 134 -140 -134
		mu 0 4 157 159 158 156
		f 4 140 135 -142 -135
		mu 0 4 159 161 160 158
		f 4 142 132 -144 -136
		mu 0 4 161 163 162 160
		f 4 137 139 141 143
		mu 0 4 155 156 165 164
		f 4 -141 -139 -137 -143
		mu 0 4 166 167 157 154
		f 4 148 145 -150 -145
		mu 0 4 168 171 170 169
		f 4 150 146 -152 -146
		mu 0 4 171 173 172 170
		f 4 152 147 -154 -147
		mu 0 4 173 175 174 172
		f 4 154 144 -156 -148
		mu 0 4 175 177 176 174
		f 4 149 151 153 155
		mu 0 4 169 170 179 178
		f 4 -153 -151 -149 -155
		mu 0 4 180 181 171 168
		f 4 160 157 -162 -157
		mu 0 4 182 185 184 183
		f 4 162 158 -164 -158
		mu 0 4 185 187 186 184
		f 4 164 159 -166 -159
		mu 0 4 187 189 188 186
		f 4 166 156 -168 -160
		mu 0 4 189 191 190 188
		f 4 161 163 165 167
		mu 0 4 183 184 193 192
		f 4 -165 -163 -161 -167
		mu 0 4 194 195 185 182
		f 4 172 169 -174 -169
		mu 0 4 196 199 198 197
		f 4 174 170 -176 -170
		mu 0 4 199 201 200 198
		f 4 176 171 -178 -171
		mu 0 4 201 203 202 200
		f 4 178 168 -180 -172
		mu 0 4 203 205 204 202
		f 4 173 175 177 179
		mu 0 4 197 198 207 206
		f 4 -177 -175 -173 -179
		mu 0 4 208 209 199 196;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "818E5053-4897-155A-2D23-B88C78FB70FE";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "10747FAC-442B-C55C-B85D-5788D607D1BB";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "8BF96D44-4971-321B-1E8F-BC93EC45F81F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "252F7727-43AA-0531-F246-21AB4FA8658E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6912D1F2-41F9-78C0-7F8E-C79210F224DD";
	setAttr ".g" yes;
createNode phong -n "ID_01";
	rename -uid "0B028050-4434-3113-3A6A-869B0F79E048";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Pigeon_ncl1_1SG";
	rename -uid "CD55968E-4733-F975-26F0-00B4358A8E83";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "6B61153D-409D-54C5-B9D4-9DB78E6B95A2";
createNode phong -n "ID_02";
	rename -uid "4AA7093E-44F3-E5F2-A0A3-369B18F06FFA";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".ambc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".sc" -type "float3" 0.089999989 0.089999989 0.089999989 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Pigeon_ncl1_1SG1";
	rename -uid "DE153613-43C3-4C3A-DE67-0EAE2089C269";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "E9CD9842-4696-1713-22A8-1997F103E5FD";
createNode file -n "MapFBXASC032FBXASC0353";
	rename -uid "6BF61096-4D28-3FF6-AD09-4C97819E587A";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\jun\\Desktop\\Pigeon_D.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "2E0C2108-4F38-8744-0789-BBB137D87DDA";
createNode file -n "MapFBXASC032FBXASC0358";
	rename -uid "FCC51749-46C6-B7AC-BEB5-E19244106303";
	setAttr ".ftn" -type "string" "C:\\Users\\jun\\Desktop\\Pigeon_S.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "1AD1712B-498C-07BC-AD7C-30A1CE0293E6";
createNode animCurveTL -n "Bone_Body_translateX";
	rename -uid "F848068B-4CED-A676-728A-A0966C73DC45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0;
	setAttr -s 31 ".kit[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kot[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kix[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Bone_Body_translateY";
	rename -uid "1499025E-4DA5-BF40-39E1-31B0BB0B82E1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -1.375732421875 1 -1.375732421875 2 -1.3998976945877075
		 3 -1.4685071706771851 4 -1.5511423349380493 5 -1.6173866987228394 6 -1.6368240118026733
		 7 -1.5790340900421143 8 -1.4135928153991699 9 -1.1100678443908691 10 -0.63801854848861694
		 11 -0.24569641053676605 12 -0.087462745606899261 13 -0.095488771796226501 14 -0.26293563842773438
		 15 -0.63801854848861694 16 -1.2675226926803589 17 -2.0375688076019287 18 -2.8538727760314941
		 19 -3.6322286128997803 20 -4.2924623489379883 21 -4.7534317970275879 22 -4.9281244277954102
		 23 -4.7912559509277344 24 -4.4415769577026367 25 -3.9430553913116455 26 -3.3393492698669434
		 27 -2.6652865409851074 28 -1.9547891616821289 29 -1.2514389753341675 30 -0.63801854848861694;
	setAttr -s 31 ".kit[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kot[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kix[0:30]"  1 1 0.80962657928466797 0.43699654936790466 
		0.37409099936485291 0.44948998093605042 0.86385935544967651 0.49964362382888794 0.19751232862472534 
		0.10916440188884735 0.070438690483570099 0.084659174084663391 0.20613469183444977 
		0.97221469879150391 0.19523724913597107 0.088520370423793793 0.052877694368362427 
		0.043246909976005554 0.040800493210554123 0.042786058038473129 0.050422992557287216 
		0.072122983634471893 0.18742993474006653 0.23662614822387695 0.094895429909229279 
		0.066715337336063385 0.055130571126937866 0.049390979111194611 0.046863984316587448 
		0.047339051961898804 0.054260101169347763;
	setAttr -s 31 ".kiy[0:30]"  0 0 -0.58694541454315186 -0.89946317672729492 
		-0.92739200592041016 -0.89328539371490479 -0.50373315811157227 0.86623102426528931 
		0.98030036687850952 0.99402374029159546 0.99751609563827515 0.99641001224517822 0.97852355241775513 
		-0.23409062623977661 -0.98075604438781738 -0.99607443809509277 -0.99860101938247681 
		-0.99906444549560547 -0.99916732311248779 -0.99908429384231567 -0.99872797727584839 
		-0.99739569425582886 -0.98227798938751221 0.97160077095031738 0.9954872727394104 
		0.99777203798294067 0.99847906827926636 0.9987795352935791 0.99890130758285522 0.99887889623641968 
		0.99852675199508667;
	setAttr -s 31 ".kox[0:30]"  1 0.80962657928466797 0.43699654936790466 
		0.37409099936485291 0.44948998093605042 0.86385935544967651 0.49964362382888794 0.19751232862472534 
		0.10916440188884735 0.070438690483570099 0.084659174084663391 0.20613469183444977 
		0.97221469879150391 0.19523724913597107 0.088520370423793793 0.052877694368362427 
		0.043246909976005554 0.040800493210554123 0.042786058038473129 0.050422992557287216 
		0.072122983634471893 0.18742993474006653 0.23662614822387695 0.094895429909229279 
		0.066715337336063385 0.055130571126937866 0.049390979111194611 0.046863984316587448 
		0.047339051961898804 0.054260101169347763 1;
	setAttr -s 31 ".koy[0:30]"  0 -0.58694541454315186 -0.89946317672729492 
		-0.92739200592041016 -0.89328539371490479 -0.50373315811157227 0.86623102426528931 
		0.98030036687850952 0.99402374029159546 0.99751609563827515 0.99641001224517822 0.97852355241775513 
		-0.23409062623977661 -0.98075604438781738 -0.99607443809509277 -0.99860101938247681 
		-0.99906444549560547 -0.99916732311248779 -0.99908429384231567 -0.99872797727584839 
		-0.99739569425582886 -0.98227798938751221 0.97160077095031738 0.9954872727394104 
		0.99777203798294067 0.99847906827926636 0.9987795352935791 0.99890130758285522 0.99887889623641968 
		0.99852675199508667 0;
createNode animCurveTL -n "Bone_Body_translateZ";
	rename -uid "541CB1EA-4E12-51D2-9FC0-36B34F2558C9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0;
	setAttr -s 31 ".kit[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kot[0:30]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2;
	setAttr -s 31 ".kix[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Bone_Body_rotateX";
	rename -uid "7C1A26A1-40CE-B267-C433-29B7976E3AFA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  10 -0.82055163383483887 19 -0.84052306413650513
		 30 -0.82055163383483887 90 -0.82055163383483887 91 -0.82055163383483887;
	setAttr -s 5 ".kwl[0:4]" no no no no no;
	setAttr -s 5 ".kix[0:4]"  0.33000001311302185 0.29990997910499573 
		0.36655664443969727 1.9994000196456909 0.033323332667350769;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  0.29990997910499573 0.36655664443969727 
		1.9994000196456909 0.033323332667350769 0.33000001311302185;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "Bone_Body_rotateY";
	rename -uid "9E861A6A-4976-B066-6F0E-A4A4A3B5F978";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  10 204.19026184082031 19 207.06100463867187
		 30 204.19026184082031 90 204.19026184082031 91 204.19026184082031;
	setAttr -s 5 ".kwl[0:4]" no no no no no;
	setAttr -s 5 ".kix[0:4]"  0.33000001311302185 0.29990997910499573 
		0.36655664443969727 1.9994000196456909 0.033323332667350769;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  0.29990997910499573 0.36655664443969727 
		1.9994000196456909 0.033323332667350769 0.33000001311302185;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "Bone_Body_rotateZ";
	rename -uid "119C68A1-4EC1-5E27-6940-9080BB29AA72";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  10 -90.042404174804687 19 -89.996238708496094
		 30 -90.042404174804687 90 -90.042404174804687 91 -90.042404174804687;
	setAttr -s 5 ".kwl[0:4]" no no no no no;
	setAttr -s 5 ".kix[0:4]"  0.33000001311302185 0.29990997910499573 
		0.36655664443969727 1.9994000196456909 0.033323332667350769;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  0.29990997910499573 0.36655664443969727 
		1.9994000196456909 0.033323332667350769 0.33000001311302185;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "Bone_Wing_R01_rotateX";
	rename -uid "38179A10-4334-062C-A302-96A80420B545";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 -290.79925537109375 1 -290.79925537109375
		 2 -292.1109619140625 3 -295.62640380859375 4 -300.71591186523437 5 -306.7498779296875
		 6 -313.09866333007812 7 -319.13262939453125 8 -324.22210693359375 9 -327.737548828125
		 10 -329.04928588867187 11 -330.15335083007812 12 -333.06405639648437 13 -337.17913818359375
		 14 -341.896484375 15 -346.61383056640625 16 -350.72894287109375 17 -353.63961791992187
		 18 -354.74368286132813 19 -354.23812866210937 20 -352.84039306640625 21 -350.72894287109375
		 22 -348.08218383789062 23 -345.07852172851562 24 -341.896484375 25 -338.71444702148437
		 26 -335.71078491210937 27 -333.06405639648437 28 -330.95257568359375 29 -329.55487060546875
		 30 -329.04928588867187 31 -329.28692626953125 32 -329.9134521484375 33 -330.7991943359375
		 34 -331.8145751953125 35 -332.8299560546875 36 -333.71572875976562 37 -334.34225463867187
		 38 -334.57989501953125 39 -334.53787231445312 40 -334.41424560546875 41 -334.21273803710937
		 42 -333.93707275390625 43 -333.5909423828125 44 -333.17807006835937 45 -332.7021484375
		 46 -332.1668701171875 47 -331.57598876953125 48 -330.93319702148437 49 -330.2421875
		 50 -329.50665283203125 51 -328.7303466796875 52 -327.91696166992187 53 -327.07015991210937
		 54 -326.19375610351562 55 -325.29135131835937 56 -324.36669921875 57 -323.42349243164062
		 58 -322.46548461914062 59 -321.496337890625 60 -320.51974487304687 61 -319.53948974609375
		 62 -318.55917358398437 63 -317.5826416015625 64 -316.61346435546875 65 -315.65542602539062
		 66 -314.71221923828125 67 -313.78756713867187 68 -312.88516235351562 69 -312.00875854492188
		 70 -311.1619873046875 71 -310.34857177734375 72 -309.572265625 73 -308.83673095703125
		 74 -308.14572143554687 75 -307.5029296875 76 -306.91204833984375 77 -306.37677001953125
		 78 -305.90084838867187 79 -305.48797607421875 80 -305.141845703125 81 -304.86618041992187
		 82 -304.66470336914062 83 -304.54107666015625 84 -304.49905395507812 85 -310.99411010742188
		 86 -327.2318115234375 87 -348.34075927734375 88 -369.44973754882812 89 -385.68743896484375
		 90 -392.1824951171875 91 -392.1824951171875 92 -381.55908203125 93 -356.54638671875
		 94 -327.430908203125 95 -304.4990234375 96 -288.45407104492187 97 -274.48995971679687
		 98 -264.62863159179687 99 -260.89218139648437 100 -260.8922119140625;
	setAttr -s 101 ".kit[0:100]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2;
	setAttr -s 101 ".kot[0:100]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2;
	setAttr -s 101 ".kix[0:100]"  1 1 0.82430821657180786 0.47737687826156616 
		0.3513321578502655 0.3017629086971283 0.28807064890861511 0.3017629086971283 0.35133406519889832 
		0.47737687826156616 0.82430195808410645 0.8657490611076355 0.54859793186187744 0.42098173499107361 
		0.37526994943618774 0.37526994943618774 0.42097949981689453 0.54860162734985352 0.86574923992156982 
		0.96670472621917725 0.80697464942932129 0.67081636190414429 0.58515071868896484 0.53656274080276489 
		0.51462221145629883 0.5146215558052063 0.53656339645385742 0.58515447378158569 0.67081165313720703 
		0.80698037147521973 0.9667009711265564 0.99234753847122192 0.9501793384552002 0.90718615055084229 
		0.88296836614608765 0.88296836614608765 0.9071812629699707 0.95017898082733154 0.99234753847122192 
		0.99975800514221191 0.99791145324707031 0.99447989463806152 0.98974323272705078 0.98397094011306763 
		0.97742176055908203 0.97032666206359863 0.96289616823196411 0.95532357692718506 0.94776028394699097 
		0.94034314155578613 0.93318599462509155 0.92639487981796265 0.92003661394119263 0.91417074203491211 
		0.9088749885559082 0.90415275096893311 0.90006178617477417 0.896617591381073 0.89385002851486206 
		0.89175659418106079 0.89035087823867798 0.88965833187103271 0.88964682817459106 0.89036238193511963 
		0.89175146818161011 0.89384430646896362 0.896617591381073 0.90006178617477417 0.90415221452713013 
		0.9088749885559082 0.91417616605758667 0.92003130912780762 0.92639529705047607 0.93318599462509155 
		0.94034314155578613 0.94776028394699097 0.95532333850860596 0.96289616823196411 0.97032666206359863 
		0.97742182016372681 0.98397094011306763 0.98974323272705078 0.99448156356811523 0.99791145324707031 
		0.99975800514221191 0.2821047306060791 0.11681348085403442 0.090108782052993774 0.090108014643192291 
		0.11681348085403442 0.2821047306060791 1 0.17694148421287537 0.076133906841278076 
		0.065455742180347443 0.082996584475040436 0.11819727718830109 0.13550747931003571 
		0.19013835489749908 0.45513305068016052 1;
	setAttr -s 101 ".kiy[0:100]"  0 0 -0.56614136695861816 -0.87869858741760254 
		-0.93625092506408691 -0.95338296890258789 -0.95760917663574219 -0.95338296890258789 
		-0.93625020980834961 -0.87869858741760254 -0.56615036725997925 -0.50047832727432251 
		-0.83608627319335938 -0.90706908702850342 -0.92691558599472046 -0.92691558599472046 
		-0.90707015991210938 -0.83608388900756836 -0.50047802925109863 0.25589430332183838 
		0.59058600664138794 0.74162352085113525 0.81092453002929688 0.84386038780212402 0.85741698741912842 
		0.85741740465164185 0.8438599705696106 0.81092178821563721 0.74162775278091431 0.59057837724685669 
		0.2559083104133606 -0.12347614020109177 -0.31170380115509033 -0.42072930932044983 
		-0.46943250298500061 -0.46943250298500061 -0.42074006795883179 -0.31170478463172913 
		-0.12347614020109177 0.021997733041644096 0.064595431089401245 0.10492679476737976 
		0.14285770058631897 0.17832860350608826 0.21129792928695679 0.24179783463478088 0.26987218856811523 
		0.29556179046630859 0.31898322701454163 0.34022751450538635 0.3593936562538147 0.37655347585678101 
		0.3918323814868927 0.40532940626144409 0.41706857085227966 0.42720931768417358 0.43576237559318542 
		0.44280567765235901 0.44836604595184326 0.4525153636932373 0.4552750289440155 0.45662680268287659 
		0.45664933323860168 0.45525246858596802 0.45252543687820435 0.44837746024131775 0.44280567765235901 
		0.43576237559318542 0.42721056938171387 0.41706857085227966 0.40531718730926514 0.39184483885765076 
		0.37655231356620789 0.3593936562538147 0.34022751450538635 0.31898322701454163 0.29556277394294739 
		0.26987218856811523 0.24179783463478088 0.21129719913005829 0.17832860350608826 0.14285770058631897 
		0.10491108149290085 0.06459566205739975 0.021997733041644096 -0.95938360691070557 
		-0.99315387010574341 -0.99593186378479004 -0.99593198299407959 -0.99315387010574341 
		-0.95938360691070557 0 0.98422133922576904 0.99709761142730713 0.99785542488098145 
		0.99654984474182129 0.99299013614654541 0.99077630043029785 0.98175734281539917 0.8904234766960144 
		-1.5978981537045911e-005;
	setAttr -s 101 ".kox[0:100]"  1 0.82430821657180786 0.47737687826156616 
		0.3513321578502655 0.3017629086971283 0.28807064890861511 0.3017629086971283 0.35133406519889832 
		0.47737687826156616 0.82430195808410645 0.8657490611076355 0.54859793186187744 0.42098173499107361 
		0.37526994943618774 0.37526994943618774 0.42097949981689453 0.54860162734985352 0.86574923992156982 
		0.96670472621917725 0.80697464942932129 0.67081636190414429 0.58515071868896484 0.53656274080276489 
		0.51462221145629883 0.5146215558052063 0.53656339645385742 0.58515447378158569 0.67081165313720703 
		0.80698037147521973 0.9667009711265564 0.99234753847122192 0.9501793384552002 0.90718615055084229 
		0.88296836614608765 0.88296836614608765 0.9071812629699707 0.95017898082733154 0.99234753847122192 
		0.99975800514221191 0.99791145324707031 0.99447989463806152 0.98974323272705078 0.98397094011306763 
		0.97742176055908203 0.97032666206359863 0.96289616823196411 0.95532357692718506 0.94776028394699097 
		0.94034314155578613 0.93318599462509155 0.92639487981796265 0.92003661394119263 0.91417074203491211 
		0.9088749885559082 0.90415275096893311 0.90006178617477417 0.896617591381073 0.89385002851486206 
		0.89175659418106079 0.89035087823867798 0.88965833187103271 0.88964682817459106 0.89036238193511963 
		0.89175146818161011 0.89384430646896362 0.896617591381073 0.90006178617477417 0.90415221452713013 
		0.9088749885559082 0.91417616605758667 0.92003130912780762 0.92639529705047607 0.93318599462509155 
		0.94034314155578613 0.94776028394699097 0.95532333850860596 0.96289616823196411 0.97032666206359863 
		0.97742182016372681 0.98397094011306763 0.98974323272705078 0.99448156356811523 0.99791145324707031 
		0.99975800514221191 0.2821047306060791 0.11681348085403442 0.090108782052993774 0.090108014643192291 
		0.11681348085403442 0.2821047306060791 1 0.17694148421287537 0.076133906841278076 
		0.065455742180347443 0.082996584475040436 0.11819727718830109 0.13550747931003571 
		0.19013835489749908 0.45513305068016052 1 1;
	setAttr -s 101 ".koy[0:100]"  0 -0.56614136695861816 -0.87869858741760254 
		-0.93625092506408691 -0.95338296890258789 -0.95760917663574219 -0.95338296890258789 
		-0.93625020980834961 -0.87869858741760254 -0.56615036725997925 -0.50047832727432251 
		-0.83608627319335938 -0.90706908702850342 -0.92691558599472046 -0.92691558599472046 
		-0.90707015991210938 -0.83608388900756836 -0.50047802925109863 0.25589430332183838 
		0.59058600664138794 0.74162352085113525 0.81092453002929688 0.84386038780212402 0.85741698741912842 
		0.85741740465164185 0.8438599705696106 0.81092178821563721 0.74162775278091431 0.59057837724685669 
		0.2559083104133606 -0.12347614020109177 -0.31170380115509033 -0.42072930932044983 
		-0.46943250298500061 -0.46943250298500061 -0.42074006795883179 -0.31170478463172913 
		-0.12347614020109177 0.021997733041644096 0.064595431089401245 0.10492679476737976 
		0.14285770058631897 0.17832860350608826 0.21129792928695679 0.24179783463478088 0.26987218856811523 
		0.29556179046630859 0.31898322701454163 0.34022751450538635 0.3593936562538147 0.37655347585678101 
		0.3918323814868927 0.40532940626144409 0.41706857085227966 0.42720931768417358 0.43576237559318542 
		0.44280567765235901 0.44836604595184326 0.4525153636932373 0.4552750289440155 0.45662680268287659 
		0.45664933323860168 0.45525246858596802 0.45252543687820435 0.44837746024131775 0.44280567765235901 
		0.43576237559318542 0.42721056938171387 0.41706857085227966 0.40531718730926514 0.39184483885765076 
		0.37655231356620789 0.3593936562538147 0.34022751450538635 0.31898322701454163 0.29556277394294739 
		0.26987218856811523 0.24179783463478088 0.21129719913005829 0.17832860350608826 0.14285770058631897 
		0.10491108149290085 0.06459566205739975 0.021997733041644096 -0.95938360691070557 
		-0.99315387010574341 -0.99593186378479004 -0.99593198299407959 -0.99315387010574341 
		-0.95938360691070557 0 0.98422133922576904 0.99709761142730713 0.99785542488098145 
		0.99654984474182129 0.99299013614654541 0.99077630043029785 0.98175734281539917 0.8904234766960144 
		-1.5978981537045911e-005 0;
createNode animCurveTA -n "Bone_Wing_R01_rotateY";
	rename -uid "AD7F130F-44C1-842F-B835-37ACAD002388";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 -2.3851840496063232 1 -2.3851840496063232
		 10 -80.828598022460938 18 67.91845703125 30 -80.828598022460938 38 65.513908386230469
		 84 8.3048343658447266 90 11.64322566986084 91 11.64322566986084 95 8.3048305511474609
		 99 -77.863594055175781 100 -77.863594055175781;
	setAttr -s 12 ".kwl[0:11]" no no no no no no no no no no no no;
	setAttr -s 12 ".kix[0:11]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.26658666133880615 0.39988002181053162 0.26658666133880615 1.532873272895813 
		0.19994001090526581 0.033323332667350769 0.13329333066940308 0.13329333066940308 
		0.033323332667350769;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 -0.15315380692481995 
		0 0;
	setAttr -s 12 ".kox[0:11]"  0.033323332667350769 0.29990997910499573 
		0.26658666133880615 0.39988002181053162 0.26658666133880615 1.532873272895813 0.19994001090526581 
		0.033323332667350769 0.13329333066940308 0.13329333066940308 0.033323332667350769 
		0.33000001311302185;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 -0.15315380692481995 
		0 0;
createNode animCurveTA -n "Bone_Wing_R01_rotateZ";
	rename -uid "C528756E-47CD-7C55-5293-5393E7213514";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 79.136344909667969 1 79.136344909667969
		 10 128.78800964355469 18 15.747369766235352 30 128.78800964355469 38 37.652683258056641
		 84 62.527759552001953 90 -15.227850914001465 91 -15.227850914001465 95 62.527759552001953
		 99 56.686252593994141 100 56.686260223388672;
	setAttr -s 12 ".kwl[0:11]" no no no no no no no no no no no no;
	setAttr -s 12 ".kix[0:11]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.26658666133880615 0.39988002181053162 0.26658666133880615 1.532873272895813 
		0.19994001090526581 0.033323332667350769 0.13329333066940308 0.13329333066940308 
		0.033323332667350769;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  0.033323332667350769 0.29990997910499573 
		0.26658666133880615 0.39988002181053162 0.26658666133880615 1.532873272895813 0.19994001090526581 
		0.033323332667350769 0.13329333066940308 0.13329333066940308 0.033323332667350769 
		0.33000001311302185;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Bone_Wing_R02_rotateX";
	rename -uid "902539DF-4BBF-D9D2-2542-4296DECF4FA2";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5557749271392822 1 -2.5557749271392822
		 10 -3.3528728485107422 13 22.684602737426758 30 -3.3529999256134033 33 22.684602737426758;
	setAttr -s 6 ".kwl[0:5]" no no no no no no;
	setAttr -s 6 ".kix[0:5]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.099970005452632904 0.56649667024612427 0.099970005452632904;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  0.033323332667350769 0.29990997910499573 
		0.099970005452632904 0.56649667024612427 0.099970005452632904 0.33000001311302185;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "Bone_Wing_R02_rotateY";
	rename -uid "502F5276-4607-0E6A-9C27-948068997500";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  0 26.391651153564453 1 26.391651153564453
		 10 11.119627952575684 13 -7.9146251678466788 22 22.717098236083984 30 11.119999885559082
		 33 -7.9146251678466788;
	setAttr -s 7 ".kwl[0:6]" no no no no no no no;
	setAttr -s 7 ".kix[0:6]"  0.33000001311302185 0.033323332667350769 
		0.29991000890731812 0.099970005452632904 0.29990997910499573 0.26658666133880615 
		0.099970005452632904;
	setAttr -s 7 ".kiy[0:6]"  0 0 -0.44893336296081543 0 0 -0.38870111107826233 
		0;
	setAttr -s 7 ".kox[0:6]"  0.033323332667350769 0.29990997910499573 
		0.099970012903213501 0.29990997910499573 0.26658666133880615 0.099969998002052307 
		0.33000001311302185;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.14964446425437927 0 0 -0.14576292037963867 
		0;
createNode animCurveTA -n "Bone_Wing_R02_rotateZ";
	rename -uid "AD450EC6-4DE6-8138-CB4E-0DAD41A4C41B";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  0 -1.1347403526306152 1 -1.1347403526306152
		 10 -5.413581371307373 13 65.828109741210938 22 -36.913784027099609 30 -5.4140000343322754
		 33 65.828109741210938;
	setAttr -s 7 ".kwl[0:6]" no no no no no no no;
	setAttr -s 7 ".kix[0:6]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.099970005452632904 0.29990997910499573 0.26658666133880615 
		0.099970005452632904;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 1.3037430047988892 0;
	setAttr -s 7 ".kox[0:6]"  0.033323332667350769 0.29990997910499573 
		0.099970005452632904 0.29990997910499573 0.26658666133880615 0.099970012903213501 
		0.33000001311302185;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0.48890367150306702 0;
createNode animCurveTA -n "Bone_Wing_L01_rotateX";
	rename -uid "DD24FE86-44D5-434E-65F6-7298371CC345";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 -68.886039733886719 1 -68.886039733886719
		 2 -68.208045959472656 3 -66.391021728515625 4 -63.760417938232422 5 -60.641651153564453
		 6 -57.36016845703125 7 -54.241401672363281 8 -51.610794067382813 9 -49.793773651123047
		 10 -49.115779876708984 11 -47.821575164794922 12 -44.409572601318359 13 -39.585708618164063
		 14 -34.055912017822266 15 -28.526115417480469 16 -23.702249526977539 17 -20.290248870849609
		 18 -18.996040344238281 19 -19.588674545288086 20 -21.227132797241211 21 -23.702249526977539
		 22 -26.804862976074219 23 -30.325803756713864 24 -34.055912017822266 25 -37.786018371582031
		 26 -41.306961059570313 27 -44.409572601318359 28 -46.884689331054687 29 -48.523147583007812
		 30 -49.115779876708984 31 -48.361053466796875 32 -46.371307373046875 33 -43.558223724365234
		 34 -40.333469390869141 35 -37.108715057373047 36 -34.295631408691406 37 -32.305885314941406
		 38 -31.551156997680661;
	setAttr -s 39 ".kit[0:38]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2;
	setAttr -s 39 ".kot[0:38]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2;
	setAttr -s 39 ".kix[0:38]"  1 1 0.94238078594207764 0.72449576854705811 
		0.58750623464584351 0.52223539352416992 0.5030180811882019 0.52223539352416992 0.58750569820404053 
		0.72449648380279541 0.94238078594207764 0.82783228158950806 0.48843547701835632 0.36811730265617371 
		0.32645395398139954 0.32645395398139954 0.36811742186546326 0.48843535780906677 0.82783174514770508 
		0.95507550239562988 0.75897485017776489 0.61090004444122314 0.52420896291732788 0.4768005907535553 
		0.4557468593120575 0.45574641227722168 0.4768010675907135 0.52420854568481445 0.61090075969696045 
		0.75897425413131714 0.95507591962814331 0.9300161600112915 0.69247674942016602 0.56169861555099487 
		0.50958359241485596 0.50958359241485596 0.56169998645782471 0.69247549772262573 0.93001586198806763;
	setAttr -s 39 ".kiy[0:38]"  0 0 0.33454206585884094 0.68927925825119019 
		0.80921971797943115 0.85280132293701172 0.86427587270736694 0.85280132293701172 0.80922001600265503 
		0.68927854299545288 0.33454209566116333 0.56097561120986938 0.8726000189781189 0.92977941036224365 
		0.94521307945251465 0.94521307945251465 0.9297792911529541 0.87260007858276367 0.56097638607025146 
		-0.29636266827583313 -0.65112000703811646 -0.79170769453048706 -0.8515896201133728 
		-0.87901145219802856 -0.89010947942733765 -0.89010965824127197 -0.87901127338409424 
		-0.85158991813659668 -0.79170721769332886 -0.65112066268920898 -0.2963612973690033 
		0.36751839518547058 0.72144019603729248 0.82734191417694092 0.86042118072509766 0.86042118072509766 
		0.82734102010726929 0.72144150733947754 0.36751922965049744;
	setAttr -s 39 ".kox[0:38]"  1 0.94238078594207764 0.72449576854705811 
		0.58750623464584351 0.52223539352416992 0.5030180811882019 0.52223539352416992 0.58750569820404053 
		0.72449648380279541 0.94238078594207764 0.82783228158950806 0.48843547701835632 0.36811730265617371 
		0.32645395398139954 0.32645395398139954 0.36811742186546326 0.48843535780906677 0.82783174514770508 
		0.95507550239562988 0.75897485017776489 0.61090004444122314 0.52420896291732788 0.4768005907535553 
		0.4557468593120575 0.45574641227722168 0.4768010675907135 0.52420854568481445 0.61090075969696045 
		0.75897425413131714 0.95507591962814331 0.9300161600112915 0.69247674942016602 0.56169861555099487 
		0.50958359241485596 0.50958359241485596 0.56169998645782471 0.69247549772262573 0.93001586198806763 
		1;
	setAttr -s 39 ".koy[0:38]"  0 0.33454206585884094 0.68927925825119019 
		0.80921971797943115 0.85280132293701172 0.86427587270736694 0.85280132293701172 0.80922001600265503 
		0.68927854299545288 0.33454209566116333 0.56097561120986938 0.8726000189781189 0.92977941036224365 
		0.94521307945251465 0.94521307945251465 0.9297792911529541 0.87260007858276367 0.56097638607025146 
		-0.29636266827583313 -0.65112000703811646 -0.79170769453048706 -0.8515896201133728 
		-0.87901145219802856 -0.89010947942733765 -0.89010965824127197 -0.87901127338409424 
		-0.85158991813659668 -0.79170721769332886 -0.65112066268920898 -0.2963612973690033 
		0.36751839518547058 0.72144019603729248 0.82734191417694092 0.86042118072509766 0.86042118072509766 
		0.82734102010726929 0.72144150733947754 0.36751922965049744 0;
createNode animCurveTA -n "Bone_Wing_L01_rotateY";
	rename -uid "21DDA641-4BF9-7401-D258-5288E43E5228";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -0.73910844326019287 1 -0.73910844326019287
		 10 -74.374778747558594 18 66.483901977539062 30 -74.374778747558594 38 63.722194671630852;
	setAttr -s 6 ".kwl[0:5]" no no no no no no;
	setAttr -s 6 ".kix[0:5]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.26658666133880615 0.39988002181053162 0.26658666133880615;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  0.033323332667350769 0.29990997910499573 
		0.26658666133880615 0.39988002181053162 0.26658666133880615 0.33000001311302185;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "Bone_Wing_L01_rotateZ";
	rename -uid "DCA70AF7-4A45-706F-2302-55AF5DC97D51";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 280.7777099609375 1 280.7777099609375
		 10 249.4794616699219 18 329.2117919921875 30 249.4794616699219 38 315.38616943359375;
	setAttr -s 6 ".kwl[0:5]" no no no no no no;
	setAttr -s 6 ".kix[0:5]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.26658666133880615 0.39988002181053162 0.26658666133880615;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  0.033323332667350769 0.29990997910499573 
		0.26658666133880615 0.39988002181053162 0.26658666133880615 0.33000001311302185;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "Bone_Wing_L02_rotateX";
	rename -uid "1FCCE68F-46D1-CBCA-9E1D-349F04D6EA0C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1.3072144985198975 1 1.3072144985198975
		 2 1.1925244331359863 3 0.88515520095825195 4 0.44015792012214661 5 -0.087416075170040131
		 6 -0.64251583814620972 7 -1.1700898408889771 8 -1.6150867938995361 9 -1.9224562644958496
		 10 -2.0371460914611816 11 -3.907724142074585 12 -7.4450874328613281 13 -9.5376768112182617
		 14 -9.8482017517089844 15 -10.115016937255859 16 -10.340038299560547 17 -10.52518367767334
		 18 -10.672368049621582 19 -10.78350830078125 20 -10.860522270202637 21 -10.905324935913086
		 22 -10.919833183288574 23 -10.538154602050781 24 -9.5319108963012695 25 -8.1092910766601562
		 26 -6.4784812927246094 27 -4.8476719856262207 28 -3.4250504970550537 29 -2.4188065528869629
		 30 -2.0371277332305908 31 -3.9817147254943848 32 -7.593090534210206 33 -9.5376768112182617;
	setAttr -s 34 ".kit[0:33]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2;
	setAttr -s 34 ".kot[0:33]"  1 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2;
	setAttr -s 34 ".kix[0:33]"  1 1 0.99820178747177124 0.98729568719863892 
		0.97391301393508911 0.96389991044998169 0.96026211977005005 0.96389991044998169 0.97391301393508911 
		0.98729568719863892 0.99820166826248169 0.71441549062728882 0.47508782148361206 0.6741219162940979 
		0.98703855276107788 0.99038189649581909 0.99313056468963623 0.99533402919769287 0.99704360961914063 
		0.99831104278564453 0.99918794631958008 0.99972492456436157 0.99997115135192871 0.98060959577560425 
		0.88471692800521851 0.80196553468704224 0.76047784090042114 0.76047730445861816 0.80196577310562134 
		0.88471657037734985 0.98060965538024902 0.70070713758468628 0.46749752759933472 0.70070725679397583;
	setAttr -s 34 ".kiy[0:33]"  0 0 -0.059943590313196182 -0.15889355540275574 
		-0.22692172229290009 -0.26626491546630859 -0.27909976243972778 -0.26626491546630859 
		-0.22692151367664337 -0.15889368951320648 -0.059943467378616333 -0.69972169399261475 
		-0.87993830442428589 -0.7386201024055481 -0.16048307716846466 -0.13836042582988739 
		-0.11701144278049469 -0.096489660441875458 -0.076837658882141113 -0.058094669133424759 
		-0.040291640907526016 -0.023452190682291985 -0.0075962753035128117 0.19597151875495911 
		0.46612861752510071 0.59737026691436768 0.64936387538909912 0.6493644118309021 0.59737002849578857 
		0.4661293625831604 0.1959712952375412 -0.71344906091690063 -0.88399440050125122 -0.71344882249832153;
	setAttr -s 34 ".kox[0:33]"  1 0.99820178747177124 0.98729568719863892 
		0.97391301393508911 0.96389991044998169 0.96026211977005005 0.96389991044998169 0.97391301393508911 
		0.98729568719863892 0.99820166826248169 0.71441549062728882 0.47508782148361206 0.6741219162940979 
		0.98703855276107788 0.99038189649581909 0.99313056468963623 0.99533402919769287 0.99704360961914063 
		0.99831104278564453 0.99918794631958008 0.99972492456436157 0.99997115135192871 0.98060959577560425 
		0.88471692800521851 0.80196553468704224 0.76047784090042114 0.76047730445861816 0.80196577310562134 
		0.88471657037734985 0.98060965538024902 0.70070713758468628 0.46749752759933472 0.70070725679397583 
		1;
	setAttr -s 34 ".koy[0:33]"  0 -0.059943590313196182 -0.15889355540275574 
		-0.22692172229290009 -0.26626491546630859 -0.27909976243972778 -0.26626491546630859 
		-0.22692151367664337 -0.15889368951320648 -0.059943467378616333 -0.69972169399261475 
		-0.87993830442428589 -0.7386201024055481 -0.16048307716846466 -0.13836042582988739 
		-0.11701144278049469 -0.096489660441875458 -0.076837658882141113 -0.058094669133424759 
		-0.040291640907526016 -0.023452190682291985 -0.0075962753035128117 0.19597151875495911 
		0.46612861752510071 0.59737026691436768 0.64936387538909912 0.6493644118309021 0.59737002849578857 
		0.4661293625831604 0.1959712952375412 -0.71344906091690063 -0.88399440050125122 -0.71344882249832153 
		0;
createNode animCurveTA -n "Bone_Wing_L02_rotateY";
	rename -uid "E48CD36F-4263-8845-5C50-F1989B660BD5";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  0 25.488149642944336 1 25.488149642944336
		 10 20.687421798706055 13 6.3316569328308105 22 16.621702194213867 30 20.687475204467773
		 33 6.3316569328308105;
	setAttr -s 7 ".kwl[0:6]" no no no no no no no;
	setAttr -s 7 ".kix[0:6]"  0.33000001311302185 0.033323332667350769 
		0.29991000890731812 0.099970005452632904 0.29990997910499573 0.26658669114112854 
		0.099970005452632904;
	setAttr -s 7 ".kiy[0:6]"  0 0 -0.2046656459569931 0 0 -0.32059454917907715 
		0;
	setAttr -s 7 ".kox[0:6]"  0.033323332667350769 0.29990997910499573 
		0.099970005452632904 0.29990997910499573 0.26658666133880615 0.099970005452632904 
		0.33000001311302185;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.068221889436244965 0 0 -0.12022295594215393 
		0;
createNode animCurveTA -n "Bone_Wing_L02_rotateZ";
	rename -uid "8579E186-4B2E-3DE8-A3AA-9B9F00EB47AD";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  0 0.88795191049575806 1 0.88795191049575806
		 10 1.0965834856033325 13 -64.068557739257813 22 42.959575653076172 30 1.0968670845031738
		 33 -64.068557739257813;
	setAttr -s 7 ".kwl[0:6]" no no no no no no no;
	setAttr -s 7 ".kix[0:6]"  0.33000001311302185 0.033323332667350769 
		0.29990997910499573 0.099970005452632904 0.29990997910499573 0.26658666133880615 
		0.099970005452632904;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 -1.3461214303970337 0;
	setAttr -s 7 ".kox[0:6]"  0.033323332667350769 0.29990997910499573 
		0.099970005452632904 0.29990997910499573 0.26658666133880615 0.099970005452632904 
		0.33000001311302185;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.5047956109046936 0;
createNode dagPose -n "bindPose1";
	rename -uid "33DB5756-4652-6665-5797-ECB081F0CE51";
	setAttr -s 6 ".wm";
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 2.54 2.54 2.54 -0.014321327693036843 3.5637923696316518
		 -1.5715364192618295 0 0 -1.3817737400531769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 -0.70710678118654746 0 0 0.70710678118654757 1 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 0.99999982118606567 1 0.99999982118606567 -5.0811278680720795
		 -0.04474152750145418 1.3831596875532393 0 6.7336258888244638 0.09883455932140349
		 0.95733296871185347 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.39370078740157477
		 0.39370078740157477 0.39370078740157477 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000002384185791 0.99999988079071045 1.0000004768371582 -0.044638311974909341
		 0.46035225592268136 -0.019974716696223669 0 11.954644203186035 -5.960464499743523e-008
		 -9.5367431640625e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001788139663
		 1 1.0000001788139663 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000001192092896 1 0.99999994039535522 -1.1993298960980745
		 -0.015821343035202658 4.8992537589487961 0 6.7336249351501465 0.098834037780761719
		 0.95733273029327393 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.39370078740157477
		 0.39370078740157477 0.39370078740157477 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0000001192092896 0.9999997615814209 1.0000001192092896 0.022314767213909546
		 0.44481528219990163 0.015505961815798256 0 11.954636573791504 -1.9073486328125e-006
		 -1.9073486345888568e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079072466
		 1 1.0000000596046483 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr ".g[5]" yes;
	setAttr ".bp" yes;
createNode phong -n "birdColor_SUB";
	rename -uid "CD6F9604-49B9-A52C-0B00-CDBC1D01AFF2";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".c" -type "float3" 1 0.19230002 0 ;
createNode shadingEngine -n "phong1SG";
	rename -uid "69C7AA72-47CE-0313-DFC1-F8ADAA461950";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "2271ADD4-4E4C-8618-3C86-A3B7F8302FA9";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "50095298-49D7-5AE3-ADB9-D688942A6CFB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 1\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1136\n                -height 729\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1136\n            -height 729\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 28 100 -ps 2 72 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1136\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1136\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "972010E2-43BF-5325-28C3-5594C0EA2BDF";
	setAttr ".b" -type "string" "playbackOptions -min 1.25 -max 150 -ast 1.25 -aet 250 ";
	setAttr ".st" 6;
createNode partition -n "cryMaterials";
	rename -uid "5025B9CC-41CE-5236-09C0-70B4DBACCAA1";
createNode objectSet -n "lowPolyBirdMAT";
	rename -uid "3C24DCA4-48AB-85C5-D62B-A6BF5C6403E4";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dnsm";
createNode phong -n "birdProxy_SUB";
	rename -uid "8051E989-44DA-7715-20DE-26BE47839048";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".c" -type "float3" 1 0 1 ;
	setAttr ".it" -type "float3" 0.88151658 0.88151658 0.88151658 ;
	setAttr ".physicalise" 1;
createNode shadingEngine -n "phong2SG";
	rename -uid "4348037F-4247-2836-6263-98B9C5947BDF";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "C1F5B04F-4D90-39BA-384C-80B842A154FE";
createNode phong -n "MaterialFBXASC032FBXASC03547";
	rename -uid "CFEC6874-41DF-8E4E-BA89-518B5F50A3A0";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Cylinder001SG";
	rename -uid "185707A7-4BD4-0735-438E-9CB69F8CF195";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "06E3BED6-46A4-77BC-BA0F-F2B5E5AE8323";
createNode file -n "MapFBXASC032FBXASC03516";
	rename -uid "D3A7BD67-4ABB-9D80-31E7-32BB0803F029";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "B528CC63-4922-14CC-437C-978B9C2CA5F5";
createNode skinCluster -n "skinCluster1";
	rename -uid "3D9664BD-4CEB-1D8E-254B-FFB7784A35B9";
	setAttr ".skm" 1;
	setAttr -s 120 ".wl";
	setAttr ".wl[0].w[2]"  1;
	setAttr ".wl[1].w[2]"  1;
	setAttr ".wl[2].w[2]"  1;
	setAttr ".wl[3].w[2]"  1;
	setAttr ".wl[4].w[2]"  1;
	setAttr ".wl[5].w[2]"  1;
	setAttr ".wl[6].w[2]"  1;
	setAttr ".wl[7].w[2]"  1;
	setAttr ".wl[8].w[2]"  1;
	setAttr ".wl[9].w[2]"  1;
	setAttr ".wl[10].w[2]"  1;
	setAttr ".wl[11].w[2]"  1;
	setAttr ".wl[12].w[2]"  1;
	setAttr ".wl[13].w[2]"  1;
	setAttr ".wl[14].w[2]"  1;
	setAttr ".wl[15].w[2]"  1;
	setAttr ".wl[16].w[2]"  1;
	setAttr ".wl[17].w[2]"  1;
	setAttr ".wl[18].w[2]"  1;
	setAttr ".wl[19].w[2]"  1;
	setAttr ".wl[20].w[2]"  1;
	setAttr ".wl[21].w[2]"  1;
	setAttr ".wl[22].w[2]"  1;
	setAttr ".wl[23].w[2]"  1;
	setAttr ".wl[24].w[1]"  1;
	setAttr ".wl[25].w[1]"  1;
	setAttr ".wl[26].w[1]"  1;
	setAttr ".wl[27].w[1]"  1;
	setAttr ".wl[28].w[1]"  1;
	setAttr ".wl[29].w[1]"  1;
	setAttr ".wl[30].w[1]"  1;
	setAttr ".wl[31].w[1]"  1;
	setAttr ".wl[32].w[1]"  1;
	setAttr ".wl[33].w[1]"  1;
	setAttr ".wl[34].w[1]"  1;
	setAttr ".wl[35].w[1]"  1;
	setAttr ".wl[36].w[1]"  1;
	setAttr ".wl[37].w[1]"  1;
	setAttr ".wl[38].w[1]"  1;
	setAttr ".wl[39].w[1]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[3]"  1;
	setAttr ".wl[81].w[3]"  1;
	setAttr ".wl[82].w[3]"  1;
	setAttr ".wl[83].w[3]"  1;
	setAttr ".wl[84].w[3]"  1;
	setAttr ".wl[85].w[3]"  1;
	setAttr ".wl[86].w[3]"  1;
	setAttr ".wl[87].w[3]"  1;
	setAttr ".wl[88].w[3]"  1;
	setAttr ".wl[89].w[3]"  1;
	setAttr ".wl[90].w[3]"  1;
	setAttr ".wl[91].w[3]"  1;
	setAttr ".wl[92].w[3]"  1;
	setAttr ".wl[93].w[3]"  1;
	setAttr ".wl[94].w[3]"  1;
	setAttr ".wl[95].w[3]"  1;
	setAttr ".wl[96].w[4]"  1;
	setAttr ".wl[97].w[4]"  1;
	setAttr ".wl[98].w[4]"  1;
	setAttr ".wl[99].w[4]"  1;
	setAttr ".wl[100].w[4]"  1;
	setAttr ".wl[101].w[4]"  1;
	setAttr ".wl[102].w[4]"  1;
	setAttr ".wl[103].w[4]"  1;
	setAttr ".wl[104].w[4]"  1;
	setAttr ".wl[105].w[4]"  1;
	setAttr ".wl[106].w[4]"  1;
	setAttr ".wl[107].w[4]"  1;
	setAttr ".wl[108].w[4]"  1;
	setAttr ".wl[109].w[4]"  1;
	setAttr ".wl[110].w[4]"  1;
	setAttr ".wl[111].w[4]"  1;
	setAttr ".wl[112].w[4]"  1;
	setAttr ".wl[113].w[4]"  1;
	setAttr ".wl[114].w[4]"  1;
	setAttr ".wl[115].w[4]"  1;
	setAttr ".wl[116].w[4]"  1;
	setAttr ".wl[117].w[4]"  1;
	setAttr ".wl[118].w[4]"  1;
	setAttr ".wl[119].w[4]"  1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.00067510471905509308 0.99989283467304158 0.014624069308084011 -0
		 0.9121895249018982 -0.0066082361211321963 0.40971526927198626 0 0.40976800130423463 0.013063322122519304 -0.91209623106460413 -0
		 0.56620666371626671 0.018050555466752907 -1.2603106204865446 1;
	setAttr ".pm[1]" -type "matrix" 0.98213937609941016 0.039627853182620347 -0.18393444257995245 -0
		 0.18182672819793869 0.051502313747227947 0.98198093290629362 -0 0.048386845608017641 -0.99788633868332843 0.04337704740167448 -0
		 -6.9063297534482686 6.332063032508656 -32.322399098770781 1;
	setAttr ".pm[2]" -type "matrix" 0.96072556313609014 0.047079982542131485 0.2734773620990858 -0
		 -0.27431473500371611 0.012227654241433432 0.96156222400403835 0 0.04192634609267655 -0.99881627926039751 0.024662152941959104 -0
		 -45.479659472645601 7.6103277385216446 -58.34960799064892 1;
	setAttr ".pm[3]" -type "matrix" -0.98200649213857294 0.039561533456931107 0.18465680184664432 -0
		 0.1824189638713862 -0.054230493160793848 0.98172418490715962 -0 0.048852543616321249 0.99774442553294851 0.046037922413399615 -0
		 -5.7767719305934762 -6.2882628934426688 -32.551746799078472 1;
	setAttr ".pm[4]" -type "matrix" -0.96524349928350206 0.049067505593457385 -0.2567048246250459 -0
		 -0.25853825266527247 -0.035521563989012524 0.96534770440528939 0 0.038248647031330685 0.9981636130347622 0.046972785883553247 -0
		 -45.245481914898086 -6.555665202649962 -57.496302989771969 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "E21D05EF-4308-F809-C2A7-EFAB88EC07EC";
createNode objectSet -n "skinCluster1Set";
	rename -uid "D1DA1ABA-4743-E85D-67ED-C79FB62B8E5B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "056DC102-4A35-86F3-B90D-68B9DA18A023";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "7EBF496E-4492-E88D-5DAB-BA9B415C48E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "44220C09-48D7-B4C7-3141-0EA0DD683AD6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "9A59CA36-4E0D-8B69-BEB1-2494176FF633";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "91FBDCE7-4521-BD6F-F071-60BA45EFC870";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "C6A41715-48F1-CCE7-CBC4-C3A5BF34D8D8";
	setAttr -s 7 ".wm";
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -6.2831853071795862 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654757 0 0 0.70710678118654746 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.7755575615628909e-016 6.2831853071795862
		 2.2204460492503126e-016 0 2.2485504093837566e-019 -1.3817737400531767 2.9952601954993699e-018 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5910429451123923 0.59625990278473573 -0.37965323121449907 0.38859463376685616 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -6.2831853071795862 3.3306690738754696e-016
		 1.6653345369377348e-016 0 33.668129444122314 0.49417279660702013 4.7866648435592616 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4472204818584497 0.34634448916732075 0.53560252281693133 0.62703211479306431 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 9.1072982488782342e-018 -1.6637082336790061e-016
		 -5.2041704279304213e-018 0 59.773210327645366 -2.9802326562133885e-007 -4.7683707222745397e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.019449627300444364 0.22829781974380703 -0.0046299538944545547 0.9733860390538962 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 6.2831853071795862 0 33.668124675750725
		 0.49417018890381087 4.7866636514663625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4387110650087232 0.35505520398851881 -0.53014888678328065 0.63278002607701789 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.3444106938820252e-017 -1.6650634863946129e-016
		 -4.3368086899420162e-018 0 59.77318999447612 -9.5367431898196742e-006 -9.5367425387848925e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0091719974122773679 0.22064261049202874 0.0051005173525224354 0.97529826085227311 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "CB45B53A-4228-FFB1-C8F4-AB9C179323CF";
	setAttr ".skm" 1;
	setAttr -s 3 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.00067510471905509308 0.99989283467304158 0.014624069308084011 -0
		 0.9121895249018982 -0.0066082361211321963 0.40971526927198626 0 0.40976800130423463 0.013063322122519304 -0.91209623106460413 -0
		 0.56620666371626671 0.018050555466752907 -1.2603106204865446 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "50672EF8-42FF-1D27-E103-24BA59DDC36F";
createNode objectSet -n "skinCluster2Set";
	rename -uid "C9A8888A-447A-1E8D-1310-E2A2D45A2627";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "CB23107E-41C8-515D-E898-24A46FFF5DC9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "5C864C9F-4003-A1B7-C7A0-10A13FB343F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "CB55358A-4D9D-6D02-778D-8FA12F63CCA6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "659A5ED1-4AFC-EBBC-6CB7-B4972E16A21E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "3DF6E414-497E-F704-8ABA-8AA40B51BF30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr ".o" 1.25;
	setAttr ".unw" 1.25;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "SL_root_JNT_parentConstraint1.crx" "SL_root_JNT.rx";
connectAttr "SL_root_JNT_parentConstraint1.cry" "SL_root_JNT.ry";
connectAttr "SL_root_JNT_parentConstraint1.crz" "SL_root_JNT.rz";
connectAttr "SL_root_JNT.s" "SL_adjust_JNT.is";
connectAttr "SL_adjust_JNT_parentConstraint1.crx" "SL_adjust_JNT.rx";
connectAttr "SL_adjust_JNT_parentConstraint1.cry" "SL_adjust_JNT.ry";
connectAttr "SL_adjust_JNT_parentConstraint1.crz" "SL_adjust_JNT.rz";
connectAttr "SL_body_JNT_parentConstraint1.crx" "SL_body_JNT.rx";
connectAttr "SL_body_JNT_parentConstraint1.cry" "SL_body_JNT.ry";
connectAttr "SL_body_JNT_parentConstraint1.crz" "SL_body_JNT.rz";
connectAttr "SL_adjust_JNT.s" "SL_body_JNT.is";
connectAttr "SL_body_JNT.s" "SL_rWing01_JNT.is";
connectAttr "SL_rWing01_JNT_parentConstraint1.crx" "SL_rWing01_JNT.rx";
connectAttr "SL_rWing01_JNT_parentConstraint1.cry" "SL_rWing01_JNT.ry";
connectAttr "SL_rWing01_JNT_parentConstraint1.crz" "SL_rWing01_JNT.rz";
connectAttr "SL_rWing01_JNT.s" "SL_rWing02_JNT.is";
connectAttr "SL_rWing02_JNT_parentConstraint1.crx" "SL_rWing02_JNT.rx";
connectAttr "SL_rWing02_JNT_parentConstraint1.cry" "SL_rWing02_JNT.ry";
connectAttr "SL_rWing02_JNT_parentConstraint1.crz" "SL_rWing02_JNT.rz";
connectAttr "SL_rWing02_JNT.ro" "SL_rWing02_JNT_parentConstraint1.cro";
connectAttr "SL_rWing02_JNT.pim" "SL_rWing02_JNT_parentConstraint1.cpim";
connectAttr "SL_rWing02_JNT.rp" "SL_rWing02_JNT_parentConstraint1.crp";
connectAttr "SL_rWing02_JNT.rpt" "SL_rWing02_JNT_parentConstraint1.crt";
connectAttr "SL_rWing02_JNT.jo" "SL_rWing02_JNT_parentConstraint1.cjo";
connectAttr "rWing02_JNT.t" "SL_rWing02_JNT_parentConstraint1.tg[0].tt";
connectAttr "rWing02_JNT.rp" "SL_rWing02_JNT_parentConstraint1.tg[0].trp";
connectAttr "rWing02_JNT.rpt" "SL_rWing02_JNT_parentConstraint1.tg[0].trt";
connectAttr "rWing02_JNT.r" "SL_rWing02_JNT_parentConstraint1.tg[0].tr";
connectAttr "rWing02_JNT.ro" "SL_rWing02_JNT_parentConstraint1.tg[0].tro";
connectAttr "rWing02_JNT.s" "SL_rWing02_JNT_parentConstraint1.tg[0].ts";
connectAttr "rWing02_JNT.pm" "SL_rWing02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "rWing02_JNT.jo" "SL_rWing02_JNT_parentConstraint1.tg[0].tjo";
connectAttr "rWing02_JNT.ssc" "SL_rWing02_JNT_parentConstraint1.tg[0].tsc";
connectAttr "rWing02_JNT.is" "SL_rWing02_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_rWing02_JNT_parentConstraint1.w0" "SL_rWing02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_rWing01_JNT.ro" "SL_rWing01_JNT_parentConstraint1.cro";
connectAttr "SL_rWing01_JNT.pim" "SL_rWing01_JNT_parentConstraint1.cpim";
connectAttr "SL_rWing01_JNT.rp" "SL_rWing01_JNT_parentConstraint1.crp";
connectAttr "SL_rWing01_JNT.rpt" "SL_rWing01_JNT_parentConstraint1.crt";
connectAttr "SL_rWing01_JNT.jo" "SL_rWing01_JNT_parentConstraint1.cjo";
connectAttr "rWing01_JNT.t" "SL_rWing01_JNT_parentConstraint1.tg[0].tt";
connectAttr "rWing01_JNT.rp" "SL_rWing01_JNT_parentConstraint1.tg[0].trp";
connectAttr "rWing01_JNT.rpt" "SL_rWing01_JNT_parentConstraint1.tg[0].trt";
connectAttr "rWing01_JNT.r" "SL_rWing01_JNT_parentConstraint1.tg[0].tr";
connectAttr "rWing01_JNT.ro" "SL_rWing01_JNT_parentConstraint1.tg[0].tro";
connectAttr "rWing01_JNT.s" "SL_rWing01_JNT_parentConstraint1.tg[0].ts";
connectAttr "rWing01_JNT.pm" "SL_rWing01_JNT_parentConstraint1.tg[0].tpm";
connectAttr "rWing01_JNT.jo" "SL_rWing01_JNT_parentConstraint1.tg[0].tjo";
connectAttr "rWing01_JNT.ssc" "SL_rWing01_JNT_parentConstraint1.tg[0].tsc";
connectAttr "rWing01_JNT.is" "SL_rWing01_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_rWing01_JNT_parentConstraint1.w0" "SL_rWing01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_body_JNT.s" "SL_lWing01_JNT.is";
connectAttr "SL_lWing01_JNT_parentConstraint1.crx" "SL_lWing01_JNT.rx";
connectAttr "SL_lWing01_JNT_parentConstraint1.cry" "SL_lWing01_JNT.ry";
connectAttr "SL_lWing01_JNT_parentConstraint1.crz" "SL_lWing01_JNT.rz";
connectAttr "SL_lWing01_JNT.s" "SL_lWing02_JNT.is";
connectAttr "SL_lWing02_JNT_parentConstraint1.crx" "SL_lWing02_JNT.rx";
connectAttr "SL_lWing02_JNT_parentConstraint1.cry" "SL_lWing02_JNT.ry";
connectAttr "SL_lWing02_JNT_parentConstraint1.crz" "SL_lWing02_JNT.rz";
connectAttr "SL_lWing02_JNT.ro" "SL_lWing02_JNT_parentConstraint1.cro";
connectAttr "SL_lWing02_JNT.pim" "SL_lWing02_JNT_parentConstraint1.cpim";
connectAttr "SL_lWing02_JNT.rp" "SL_lWing02_JNT_parentConstraint1.crp";
connectAttr "SL_lWing02_JNT.rpt" "SL_lWing02_JNT_parentConstraint1.crt";
connectAttr "SL_lWing02_JNT.jo" "SL_lWing02_JNT_parentConstraint1.cjo";
connectAttr "lWing02_JNT.t" "SL_lWing02_JNT_parentConstraint1.tg[0].tt";
connectAttr "lWing02_JNT.rp" "SL_lWing02_JNT_parentConstraint1.tg[0].trp";
connectAttr "lWing02_JNT.rpt" "SL_lWing02_JNT_parentConstraint1.tg[0].trt";
connectAttr "lWing02_JNT.r" "SL_lWing02_JNT_parentConstraint1.tg[0].tr";
connectAttr "lWing02_JNT.ro" "SL_lWing02_JNT_parentConstraint1.tg[0].tro";
connectAttr "lWing02_JNT.s" "SL_lWing02_JNT_parentConstraint1.tg[0].ts";
connectAttr "lWing02_JNT.pm" "SL_lWing02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "lWing02_JNT.jo" "SL_lWing02_JNT_parentConstraint1.tg[0].tjo";
connectAttr "lWing02_JNT.ssc" "SL_lWing02_JNT_parentConstraint1.tg[0].tsc";
connectAttr "lWing02_JNT.is" "SL_lWing02_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_lWing02_JNT_parentConstraint1.w0" "SL_lWing02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_lWing01_JNT.ro" "SL_lWing01_JNT_parentConstraint1.cro";
connectAttr "SL_lWing01_JNT.pim" "SL_lWing01_JNT_parentConstraint1.cpim";
connectAttr "SL_lWing01_JNT.rp" "SL_lWing01_JNT_parentConstraint1.crp";
connectAttr "SL_lWing01_JNT.rpt" "SL_lWing01_JNT_parentConstraint1.crt";
connectAttr "SL_lWing01_JNT.jo" "SL_lWing01_JNT_parentConstraint1.cjo";
connectAttr "lWing01_JNT.t" "SL_lWing01_JNT_parentConstraint1.tg[0].tt";
connectAttr "lWing01_JNT.rp" "SL_lWing01_JNT_parentConstraint1.tg[0].trp";
connectAttr "lWing01_JNT.rpt" "SL_lWing01_JNT_parentConstraint1.tg[0].trt";
connectAttr "lWing01_JNT.r" "SL_lWing01_JNT_parentConstraint1.tg[0].tr";
connectAttr "lWing01_JNT.ro" "SL_lWing01_JNT_parentConstraint1.tg[0].tro";
connectAttr "lWing01_JNT.s" "SL_lWing01_JNT_parentConstraint1.tg[0].ts";
connectAttr "lWing01_JNT.pm" "SL_lWing01_JNT_parentConstraint1.tg[0].tpm";
connectAttr "lWing01_JNT.jo" "SL_lWing01_JNT_parentConstraint1.tg[0].tjo";
connectAttr "lWing01_JNT.ssc" "SL_lWing01_JNT_parentConstraint1.tg[0].tsc";
connectAttr "lWing01_JNT.is" "SL_lWing01_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_lWing01_JNT_parentConstraint1.w0" "SL_lWing01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_body_JNT.ro" "SL_body_JNT_parentConstraint1.cro";
connectAttr "SL_body_JNT.pim" "SL_body_JNT_parentConstraint1.cpim";
connectAttr "SL_body_JNT.rp" "SL_body_JNT_parentConstraint1.crp";
connectAttr "SL_body_JNT.rpt" "SL_body_JNT_parentConstraint1.crt";
connectAttr "SL_body_JNT.jo" "SL_body_JNT_parentConstraint1.cjo";
connectAttr "body_JNT.t" "SL_body_JNT_parentConstraint1.tg[0].tt";
connectAttr "body_JNT.rp" "SL_body_JNT_parentConstraint1.tg[0].trp";
connectAttr "body_JNT.rpt" "SL_body_JNT_parentConstraint1.tg[0].trt";
connectAttr "body_JNT.r" "SL_body_JNT_parentConstraint1.tg[0].tr";
connectAttr "body_JNT.ro" "SL_body_JNT_parentConstraint1.tg[0].tro";
connectAttr "body_JNT.s" "SL_body_JNT_parentConstraint1.tg[0].ts";
connectAttr "body_JNT.pm" "SL_body_JNT_parentConstraint1.tg[0].tpm";
connectAttr "body_JNT.jo" "SL_body_JNT_parentConstraint1.tg[0].tjo";
connectAttr "body_JNT.ssc" "SL_body_JNT_parentConstraint1.tg[0].tsc";
connectAttr "body_JNT.is" "SL_body_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_body_JNT_parentConstraint1.w0" "SL_body_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_adjust_JNT.ro" "SL_adjust_JNT_parentConstraint1.cro";
connectAttr "SL_adjust_JNT.pim" "SL_adjust_JNT_parentConstraint1.cpim";
connectAttr "SL_adjust_JNT.rp" "SL_adjust_JNT_parentConstraint1.crp";
connectAttr "SL_adjust_JNT.rpt" "SL_adjust_JNT_parentConstraint1.crt";
connectAttr "SL_adjust_JNT.jo" "SL_adjust_JNT_parentConstraint1.cjo";
connectAttr "adjust_JNT.t" "SL_adjust_JNT_parentConstraint1.tg[0].tt";
connectAttr "adjust_JNT.rp" "SL_adjust_JNT_parentConstraint1.tg[0].trp";
connectAttr "adjust_JNT.rpt" "SL_adjust_JNT_parentConstraint1.tg[0].trt";
connectAttr "adjust_JNT.r" "SL_adjust_JNT_parentConstraint1.tg[0].tr";
connectAttr "adjust_JNT.ro" "SL_adjust_JNT_parentConstraint1.tg[0].tro";
connectAttr "adjust_JNT.s" "SL_adjust_JNT_parentConstraint1.tg[0].ts";
connectAttr "adjust_JNT.pm" "SL_adjust_JNT_parentConstraint1.tg[0].tpm";
connectAttr "adjust_JNT.jo" "SL_adjust_JNT_parentConstraint1.tg[0].tjo";
connectAttr "adjust_JNT.ssc" "SL_adjust_JNT_parentConstraint1.tg[0].tsc";
connectAttr "adjust_JNT.is" "SL_adjust_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_adjust_JNT_parentConstraint1.w0" "SL_adjust_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "SL_root_JNT.ro" "SL_root_JNT_parentConstraint1.cro";
connectAttr "SL_root_JNT.pim" "SL_root_JNT_parentConstraint1.cpim";
connectAttr "SL_root_JNT.rp" "SL_root_JNT_parentConstraint1.crp";
connectAttr "SL_root_JNT.rpt" "SL_root_JNT_parentConstraint1.crt";
connectAttr "SL_root_JNT.jo" "SL_root_JNT_parentConstraint1.cjo";
connectAttr "root_JNT.t" "SL_root_JNT_parentConstraint1.tg[0].tt";
connectAttr "root_JNT.rp" "SL_root_JNT_parentConstraint1.tg[0].trp";
connectAttr "root_JNT.rpt" "SL_root_JNT_parentConstraint1.tg[0].trt";
connectAttr "root_JNT.r" "SL_root_JNT_parentConstraint1.tg[0].tr";
connectAttr "root_JNT.ro" "SL_root_JNT_parentConstraint1.tg[0].tro";
connectAttr "root_JNT.s" "SL_root_JNT_parentConstraint1.tg[0].ts";
connectAttr "root_JNT.pm" "SL_root_JNT_parentConstraint1.tg[0].tpm";
connectAttr "root_JNT.jo" "SL_root_JNT_parentConstraint1.tg[0].tjo";
connectAttr "root_JNT.ssc" "SL_root_JNT_parentConstraint1.tg[0].tsc";
connectAttr "root_JNT.is" "SL_root_JNT_parentConstraint1.tg[0].tis";
connectAttr "SL_root_JNT_parentConstraint1.w0" "SL_root_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "root_JNT.s" "adjust_JNT.is";
connectAttr "Bone_Body_translateX.o" "body_JNT.tx";
connectAttr "Bone_Body_translateY.o" "body_JNT.ty";
connectAttr "Bone_Body_translateZ.o" "body_JNT.tz";
connectAttr "Bone_Body_rotateX.o" "body_JNT.rx";
connectAttr "Bone_Body_rotateY.o" "body_JNT.ry";
connectAttr "Bone_Body_rotateZ.o" "body_JNT.rz";
connectAttr "adjust_JNT.s" "body_JNT.is";
connectAttr "body_JNT.s" "rWing01_JNT.is";
connectAttr "Bone_Wing_R01_rotateX.o" "rWing01_JNT.rx";
connectAttr "Bone_Wing_R01_rotateY.o" "rWing01_JNT.ry";
connectAttr "Bone_Wing_R01_rotateZ.o" "rWing01_JNT.rz";
connectAttr "rWing01_JNT.s" "rWing02_JNT.is";
connectAttr "Bone_Wing_R02_rotateX.o" "rWing02_JNT.rx";
connectAttr "Bone_Wing_R02_rotateY.o" "rWing02_JNT.ry";
connectAttr "Bone_Wing_R02_rotateZ.o" "rWing02_JNT.rz";
connectAttr "body_JNT.s" "lWing01_JNT.is";
connectAttr "Bone_Wing_L01_rotateX.o" "lWing01_JNT.rx";
connectAttr "Bone_Wing_L01_rotateY.o" "lWing01_JNT.ry";
connectAttr "Bone_Wing_L01_rotateZ.o" "lWing01_JNT.rz";
connectAttr "lWing01_JNT.s" "lWing02_JNT.is";
connectAttr "Bone_Wing_L02_rotateX.o" "lWing02_JNT.rx";
connectAttr "Bone_Wing_L02_rotateY.o" "lWing02_JNT.ry";
connectAttr "Bone_Wing_L02_rotateZ.o" "lWing02_JNT.rz";
connectAttr "skinCluster2GroupId.id" "flappySkel_MSHShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "flappySkel_MSHShape.iog.og[0].gco";
connectAttr "groupId4.id" "flappySkel_MSHShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "flappySkel_MSHShape.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "flappySkel_MSHShape.i";
connectAttr "tweak2.vl[0].vt[0]" "flappySkel_MSHShape.twl";
connectAttr "skinCluster1.og[0]" "flappyPlayer_MSHShape.i";
connectAttr "skinCluster1GroupId.id" "flappyPlayer_MSHShape.iog.og[7].gid";
connectAttr "skinCluster1Set.mwc" "flappyPlayer_MSHShape.iog.og[7].gco";
connectAttr "groupId2.id" "flappyPlayer_MSHShape.iog.og[8].gid";
connectAttr "tweakSet1.mwc" "flappyPlayer_MSHShape.iog.og[8].gco";
connectAttr "tweak1.vl[0].vt[0]" "flappyPlayer_MSHShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pigeon_ncl1_1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pigeon_ncl1_1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cylinder001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pigeon_ncl1_1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pigeon_ncl1_1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cylinder001SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MapFBXASC032FBXASC0353.oc" "ID_01.c";
connectAttr "MapFBXASC032FBXASC0358.oc" "ID_01.sc";
connectAttr "MapFBXASC032FBXASC0353.ot" "ID_01.it";
connectAttr "ID_01.oc" "Pigeon_ncl1_1SG.ss";
connectAttr "Pigeon_ncl1_1SG.msg" "materialInfo2.sg";
connectAttr "ID_01.msg" "materialInfo2.m";
connectAttr "MapFBXASC032FBXASC0353.msg" "materialInfo2.t" -na;
connectAttr "ID_02.oc" "Pigeon_ncl1_1SG1.ss";
connectAttr "Pigeon_ncl1_1SG1.msg" "materialInfo3.sg";
connectAttr "ID_02.msg" "materialInfo3.m";
connectAttr "place2dTexture2.o" "MapFBXASC032FBXASC0353.uv";
connectAttr "place2dTexture2.ofu" "MapFBXASC032FBXASC0353.ofu";
connectAttr "place2dTexture2.ofv" "MapFBXASC032FBXASC0353.ofv";
connectAttr "place2dTexture2.rf" "MapFBXASC032FBXASC0353.rf";
connectAttr "place2dTexture2.reu" "MapFBXASC032FBXASC0353.reu";
connectAttr "place2dTexture2.rev" "MapFBXASC032FBXASC0353.rev";
connectAttr "place2dTexture2.vt1" "MapFBXASC032FBXASC0353.vt1";
connectAttr "place2dTexture2.vt2" "MapFBXASC032FBXASC0353.vt2";
connectAttr "place2dTexture2.vt3" "MapFBXASC032FBXASC0353.vt3";
connectAttr "place2dTexture2.vc1" "MapFBXASC032FBXASC0353.vc1";
connectAttr "place2dTexture2.ofs" "MapFBXASC032FBXASC0353.fs";
connectAttr ":defaultColorMgtGlobals.cme" "MapFBXASC032FBXASC0353.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "MapFBXASC032FBXASC0353.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "MapFBXASC032FBXASC0353.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "MapFBXASC032FBXASC0353.ws";
connectAttr "place2dTexture3.o" "MapFBXASC032FBXASC0358.uv";
connectAttr "place2dTexture3.ofu" "MapFBXASC032FBXASC0358.ofu";
connectAttr "place2dTexture3.ofv" "MapFBXASC032FBXASC0358.ofv";
connectAttr "place2dTexture3.rf" "MapFBXASC032FBXASC0358.rf";
connectAttr "place2dTexture3.reu" "MapFBXASC032FBXASC0358.reu";
connectAttr "place2dTexture3.rev" "MapFBXASC032FBXASC0358.rev";
connectAttr "place2dTexture3.vt1" "MapFBXASC032FBXASC0358.vt1";
connectAttr "place2dTexture3.vt2" "MapFBXASC032FBXASC0358.vt2";
connectAttr "place2dTexture3.vt3" "MapFBXASC032FBXASC0358.vt3";
connectAttr "place2dTexture3.vc1" "MapFBXASC032FBXASC0358.vc1";
connectAttr "place2dTexture3.ofs" "MapFBXASC032FBXASC0358.fs";
connectAttr ":defaultColorMgtGlobals.cme" "MapFBXASC032FBXASC0358.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "MapFBXASC032FBXASC0358.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "MapFBXASC032FBXASC0358.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "MapFBXASC032FBXASC0358.ws";
connectAttr "body_JNT.msg" "bindPose1.m[0]";
connectAttr "rWing01_JNT.msg" "bindPose1.m[1]";
connectAttr "rWing02_JNT.msg" "bindPose1.m[2]";
connectAttr "lWing01_JNT.msg" "bindPose1.m[3]";
connectAttr "lWing02_JNT.msg" "bindPose1.m[4]";
connectAttr "adjust_JNT.msg" "bindPose1.m[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.w" "bindPose1.p[5]";
connectAttr "body_JNT.bps" "bindPose1.wm[0]";
connectAttr "rWing01_JNT.bps" "bindPose1.wm[1]";
connectAttr "rWing02_JNT.bps" "bindPose1.wm[2]";
connectAttr "lWing01_JNT.bps" "bindPose1.wm[3]";
connectAttr "lWing02_JNT.bps" "bindPose1.wm[4]";
connectAttr "adjust_JNT.bps" "bindPose1.wm[5]";
connectAttr "birdColor_SUB.oc" "phong1SG.ss";
connectAttr "flappyPlayer_MSHShape.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo4.sg";
connectAttr "birdColor_SUB.msg" "materialInfo4.m";
connectAttr "lowPolyBirdMAT.pa" "cryMaterials.st" -na;
connectAttr "birdColor_SUB.msg" "lowPolyBirdMAT.dnsm" -na;
connectAttr "birdProxy_SUB.msg" "lowPolyBirdMAT.dnsm" -na;
connectAttr "birdProxy_SUB.oc" "phong2SG.ss";
connectAttr "rWing02_JNT_physShape.iog" "phong2SG.dsm" -na;
connectAttr "lWing02_JNT_physShape.iog" "phong2SG.dsm" -na;
connectAttr "lWing01_JNT_physShape.iog" "phong2SG.dsm" -na;
connectAttr "body_JNT_physShape.iog" "phong2SG.dsm" -na;
connectAttr "rWing01_JNT_physShape.iog" "phong2SG.dsm" -na;
connectAttr "flappySkel_MSHShape.iog" "phong2SG.dsm" -na;
connectAttr "phong2SG.msg" "materialInfo5.sg";
connectAttr "birdProxy_SUB.msg" "materialInfo5.m";
connectAttr "MapFBXASC032FBXASC03516.oc" "MaterialFBXASC032FBXASC03547.c";
connectAttr "MaterialFBXASC032FBXASC03547.oc" "Cylinder001SG.ss";
connectAttr "Cylinder001SG.msg" "materialInfo1.sg";
connectAttr "MaterialFBXASC032FBXASC03547.msg" "materialInfo1.m";
connectAttr "MapFBXASC032FBXASC03516.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "MapFBXASC032FBXASC03516.uv";
connectAttr "place2dTexture1.ofu" "MapFBXASC032FBXASC03516.ofu";
connectAttr "place2dTexture1.ofv" "MapFBXASC032FBXASC03516.ofv";
connectAttr "place2dTexture1.rf" "MapFBXASC032FBXASC03516.rf";
connectAttr "place2dTexture1.reu" "MapFBXASC032FBXASC03516.reu";
connectAttr "place2dTexture1.rev" "MapFBXASC032FBXASC03516.rev";
connectAttr "place2dTexture1.vt1" "MapFBXASC032FBXASC03516.vt1";
connectAttr "place2dTexture1.vt2" "MapFBXASC032FBXASC03516.vt2";
connectAttr "place2dTexture1.vt3" "MapFBXASC032FBXASC03516.vt3";
connectAttr "place2dTexture1.vc1" "MapFBXASC032FBXASC03516.vc1";
connectAttr "place2dTexture1.ofs" "MapFBXASC032FBXASC03516.fs";
connectAttr ":defaultColorMgtGlobals.cme" "MapFBXASC032FBXASC03516.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "MapFBXASC032FBXASC03516.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "MapFBXASC032FBXASC03516.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "MapFBXASC032FBXASC03516.ws";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "SL_body_JNT.wm" "skinCluster1.ma[0]";
connectAttr "SL_rWing01_JNT.wm" "skinCluster1.ma[1]";
connectAttr "SL_rWing02_JNT.wm" "skinCluster1.ma[2]";
connectAttr "SL_lWing01_JNT.wm" "skinCluster1.ma[3]";
connectAttr "SL_lWing02_JNT.wm" "skinCluster1.ma[4]";
connectAttr "SL_body_JNT.liw" "skinCluster1.lw[0]";
connectAttr "SL_rWing01_JNT.liw" "skinCluster1.lw[1]";
connectAttr "SL_rWing02_JNT.liw" "skinCluster1.lw[2]";
connectAttr "SL_lWing01_JNT.liw" "skinCluster1.lw[3]";
connectAttr "SL_lWing02_JNT.liw" "skinCluster1.lw[4]";
connectAttr "SL_body_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "SL_rWing01_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "SL_rWing02_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "SL_lWing01_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "SL_lWing02_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "flappyPlayer_MSHShape.iog.og[7]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "flappyPlayer_MSHShape.iog.og[8]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "flappyPlayer_MSHShapeOrig1.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "SL_root_JNT.msg" "bindPose2.m[0]";
connectAttr "SL_adjust_JNT.msg" "bindPose2.m[1]";
connectAttr "SL_body_JNT.msg" "bindPose2.m[2]";
connectAttr "SL_rWing01_JNT.msg" "bindPose2.m[3]";
connectAttr "SL_rWing02_JNT.msg" "bindPose2.m[4]";
connectAttr "SL_lWing01_JNT.msg" "bindPose2.m[5]";
connectAttr "SL_lWing02_JNT.msg" "bindPose2.m[6]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[2]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "SL_root_JNT.bps" "bindPose2.wm[0]";
connectAttr "SL_adjust_JNT.bps" "bindPose2.wm[1]";
connectAttr "SL_body_JNT.bps" "bindPose2.wm[2]";
connectAttr "SL_rWing01_JNT.bps" "bindPose2.wm[3]";
connectAttr "SL_rWing02_JNT.bps" "bindPose2.wm[4]";
connectAttr "SL_lWing01_JNT.bps" "bindPose2.wm[5]";
connectAttr "SL_lWing02_JNT.bps" "bindPose2.wm[6]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "SL_body_JNT.wm" "skinCluster2.ma[0]";
connectAttr "SL_body_JNT.liw" "skinCluster2.lw[0]";
connectAttr "SL_body_JNT.obcc" "skinCluster2.ifcl[0]";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "flappySkel_MSHShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "flappySkel_MSHShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "flappySkel_MSHShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "Pigeon_ncl1_1SG.pa" ":renderPartition.st" -na;
connectAttr "Pigeon_ncl1_1SG1.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "Cylinder001SG.pa" ":renderPartition.st" -na;
connectAttr "ID_01.msg" ":defaultShaderList1.s" -na;
connectAttr "ID_02.msg" ":defaultShaderList1.s" -na;
connectAttr "birdColor_SUB.msg" ":defaultShaderList1.s" -na;
connectAttr "birdProxy_SUB.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC032FBXASC03547.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MapFBXASC032FBXASC0353.msg" ":defaultTextureList1.tx" -na;
connectAttr "MapFBXASC032FBXASC0358.msg" ":defaultTextureList1.tx" -na;
connectAttr "MapFBXASC032FBXASC03516.msg" ":defaultTextureList1.tx" -na;
// End of flappyPlayer.ma
