//Maya ASCII 2024 scene
//Name: Unit3Assignment.ma
//Last modified: Thu, Nov 09, 2023 05:07:05 AM
//Codeset: 1252
file -rdi 1 -ns "RobotVItalityAnimation" -rfn "RobotVItalityAnimationRN" -op
		 "v=0;" -typ "mayaAscii" "D:/GitHub/3DModelingSchoolProjects//RobotVItalityAnimation.ma";
file -rdi 2 -ns "PALBot" -rfn "RobotVItalityAnimation:PALBotRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/bryce/OneDrive/Documents/Github/3DModelingSchoolProjects//VitalityWalk/PALBOT/scenes/PALBot.ma";
file -rdi 1 -ns "walkAnimation" -rfn "walkAnimationRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitHub/2DSideScroller/Assets/Maya/scenes/walkAnimation.ma";
file -rdi 2 -ns "Ultimate_Walker_Rig" -rfn "walkAnimation:Ultimate_Walker_RigRN"
		 -op "v=0;" -typ "mayaAscii" "D:/GitHub/2DSideScroller/Assets/Maya//assets/Ultimate_Walker_Rig.ma";
file -r -ns "RobotVItalityAnimation" -dr 1 -rfn "RobotVItalityAnimationRN" -op "v=0;"
		 -typ "mayaAscii" "D:/GitHub/3DModelingSchoolProjects//RobotVItalityAnimation.ma";
file -r -ns "walkAnimation" -dr 1 -rfn "walkAnimationRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitHub/2DSideScroller/Assets/Maya/scenes/walkAnimation.ma";
requires maya "2024";
requires -nodeType "houdiniAsset" "houdiniEngine" "6.0 (API: 0)";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" -nodeType "substanceOutputNode" "substancemaya" "2.3.2";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" -nodeType "aiPhysicalSky" -nodeType "aiImagerDenoiserNoice"
		 -nodeType "aiImagerDenoiserOptix" "mtoa" "5.3.4.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "208D1AB3-4565-0352-8783-96BC6D7564B3";
createNode transform -s -n "persp";
	rename -uid "F2EA2A09-47A0-7970-07DB-71B47AD33B62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 99.110975094388735 103.053272156766 -416.08855806738012 ;
	setAttr ".r" -type "double3" -14.738352729453394 -186.59999999997362 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "003ACB2F-42C1-E36F-6CE1-20A8A0BD43C3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 413.26035407333319;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "358C2307-4B9F-F04F-2C69-6B8A7C95119A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "34E9D8E6-41A2-D220-EC49-A1ABFD37A70C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "FF7410D2-4963-CF06-1918-A2A55F549D4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D3353697-4B43-8DC0-DA18-37AE6472EBF5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2186E4F1-46E1-6489-4CB5-FF943F87E6F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DBC7F893-48D7-FB98-225E-3B8D8CFCE64B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode houdiniAsset -n "bryce__dev__Terrain__2_01";
	rename -uid "FA727737-47E2-EEAF-8289-80B0F1949C67";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.Terrain.2.0.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/Terrain::2.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "Terrain1" -p "bryce__dev__Terrain__2_01";
	rename -uid "2CA5C87F-47C7-AA92-56EC-C6817AE04438";
createNode transform -n "uvlayout1_0" -p "Terrain1";
	rename -uid "EDCD8C84-408C-C536-A9BF-D6A2A480C001";
	setAttr ".t" -type "double3" 0 12.642227964439817 0 ;
createNode mesh -n "uvlayout1_0Shape" -p "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0";
	rename -uid "DE3E4EB4-4F56-F45D-1E6C-7DA68ADA116C";
	addAttr -ci true -sn "volvis_emitscale" -ln "volvis_emitscale" -at "double";
	addAttr -ci true -sn "volvis_cdramp" -ln "volvis_cdramp" -dt "string";
	addAttr -ci true -sn "volvis_shadowscale" -ln "volvis_shadowscale" -at "double";
	addAttr -ci true -sn "numnonpacked" -ln "numnonpacked" -at "double";
	addAttr -ci true -sn "volvis_emitramp" -ln "volvis_emitramp" -dt "string";
	addAttr -ci true -sn "volvis_emitcdrange" -ln "volvis_emitcdrange" -at "float2" 
		-nc 2;
	addAttr -ci true -sn "volvis_emitcdrange0" -ln "volvis_emitcdrange0" -at "float" 
		-p "volvis_emitcdrange";
	addAttr -ci true -sn "volvis_emitcdrange1" -ln "volvis_emitcdrange1" -at "float" 
		-p "volvis_emitcdrange";
	addAttr -ci true -sn "volvis_densityrampperiodic" -ln "volvis_densityrampperiodic" 
		-at "double";
	addAttr -ci true -sn "volvis_emitrampperiodic" -ln "volvis_emitrampperiodic" -at "double";
	addAttr -ci true -sn "volvis_emitcdramp" -ln "volvis_emitcdramp" -dt "string";
	addAttr -ci true -sn "volvis_cdrange" -ln "volvis_cdrange" -at "float2" -nc 2;
	addAttr -ci true -sn "volvis_cdrange0" -ln "volvis_cdrange0" -at "float" -p "volvis_cdrange";
	addAttr -ci true -sn "volvis_cdrange1" -ln "volvis_cdrange1" -at "float" -p "volvis_cdrange";
	addAttr -ci true -sn "volvis_densityramp" -ln "volvis_densityramp" -dt "string";
	addAttr -ci true -sn "volvis_emitrange" -ln "volvis_emitrange" -at "float2" -nc 
		2;
	addAttr -ci true -sn "volvis_emitrange0" -ln "volvis_emitrange0" -at "float" -p "volvis_emitrange";
	addAttr -ci true -sn "volvis_emitrange1" -ln "volvis_emitrange1" -at "float" -p "volvis_emitrange";
	addAttr -ci true -sn "volvis_densityrange" -ln "volvis_densityrange" -at "float2" 
		-nc 2;
	addAttr -ci true -sn "volvis_densityrange0" -ln "volvis_densityrange0" -at "float" 
		-p "volvis_densityrange";
	addAttr -ci true -sn "volvis_densityrange1" -ln "volvis_densityrange1" -at "float" 
		-p "volvis_densityrange";
	addAttr -ci true -sn "volvis_emitcdfield" -ln "volvis_emitcdfield" -dt "string";
	addAttr -ci true -sn "volvis_emitcdrampperiodic" -ln "volvis_emitcdrampperiodic" 
		-at "double";
	addAttr -ci true -sn "volvis_cdfield" -ln "volvis_cdfield" -dt "string";
	addAttr -ci true -sn "volvis_emitfield" -ln "volvis_emitfield" -dt "string";
	addAttr -ci true -sn "volvis_cdrampperiodic" -ln "volvis_cdrampperiodic" -at "double";
	addAttr -ci true -sn "coverage" -ln "coverage" -at "double";
	addAttr -ci true -sn "volvis_densityfield" -ln "volvis_densityfield" -dt "string";
	addAttr -ci true -sn "name" -ln "name" -dt "stringArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "bryce__dev__bridge__1_01";
	rename -uid "599429B1-4FAE-F7DC-55CA-CEACDB4E3960";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/bryce.dev.bridge.1.0.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/bridge::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "bridge1" -p "bryce__dev__bridge__1_01";
	rename -uid "12DBD2F3-4B05-9CA3-8660-E0BFD3DEC0FD";
createNode houdiniAsset -n "bryce__dev__Boulder__1_01";
	rename -uid "E923EA25-4CB1-1D0F-3B70-F18A8FC569F9";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.Boulder.1.0.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/Boulder::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "Boulder1" -p "bryce__dev__Boulder__1_01";
	rename -uid "18515B8F-45AA-A475-A514-9482C282594E";
createNode houdiniAsset -n "bryce__dev__weirdTree__1_01";
	rename -uid "54A7B8DA-401A-E1C7-C43C-B99B2B45DD91";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.weirdTree.1.0.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/weirdTree::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "weirdTree1" -p "bryce__dev__weirdTree__1_01";
	rename -uid "DFC50A59-4922-FF7C-9CD0-9D9C37588457";
createNode houdiniAsset -n "bryce_dev__rock__1_01";
	rename -uid "526C8141-4BE1-1EA0-1097-ECB71C165A7E";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 3;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 8;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	setAttr ".t" -type "double3" 0 0 -5.4746704705713736 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/rock.hdac.hdanc";
	setAttr ".assetName" -type "string" "bryce.dev::Object/rock::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "rock1" -p "bryce_dev__rock__1_01";
	rename -uid "6497B127-4324-9632-6B83-7498B47EC46A";
createNode transform -n "uvunwrap1_0" -p "rock1";
	rename -uid "7112880B-4452-D457-7D5F-F49BFD4EF7E5";
	setAttr ".t" -type "double3" 116.36073522382853 -12.707448698743548 -64.35225868713394 ;
	setAttr ".s" -type "double3" 25.062977324233504 25.062977324233504 25.062977324233504 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|bryce_dev__rock__1_01|rock1|uvunwrap1_0";
	rename -uid "0AA910C5-4D1E-3BC4-EEF3-C3AF29639181";
	addAttr -ci true -sn "name" -ln "name" -dt "stringArray";
	addAttr -ci true -sn "N" -ln "N" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "uvunwrap1_1" -p "rock1";
	rename -uid "B5E3212A-4422-DDB0-2C32-61B9334E43DF";
createNode nParticle -n "uvunwrap1_1Shape" -p "uvunwrap1_1";
	rename -uid "C776DA6C-40E5-55E5-6988-5CB680BDF519";
	addAttr -s false -ci true -sn "rgbPP" -ln "rgbPP" -dt "vectorArray";
	addAttr -ci true -h true -sn "rgbPP0" -ln "rgbPP0" -dt "vectorArray";
	addAttr -s false -ci true -sn "opacityPP" -ln "opacityPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "opacityPP0" -ln "opacityPP0" -dt "doubleArray";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr ".chw" 151;
	setAttr ".pfc" yes;
	setAttr ".cofl" 1;
	setAttr ".scld" no;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr ".vssc[0]"  0 1 1;
	setAttr ".stns[0]"  0 1 1;
	setAttr ".rdc[0]"  0 1 1;
	setAttr ".mssc[0]"  0 1 1;
	setAttr ".pfsc[0]"  0 1 1;
	setAttr ".frsc[0]"  0 1 1;
	setAttr ".stsc[0]"  0 1 1;
	setAttr ".clsc[0]"  0 1 1;
	setAttr ".bosc[0]"  0 1 1;
	setAttr ".opc[0]"  0 1 1;
	setAttr ".oci" 1;
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".coi" 1;
	setAttr ".inca[0].incap" 0;
	setAttr ".inca[0].incac" -type "float3" 0 0 0 ;
	setAttr ".inca[0].incai" 1;
	setAttr ".rgbPP0" -type "vectorArray" 0 ;
	setAttr ".opacityPP0" -type "doubleArray" 0 ;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode nucleus -n "nucleus1";
	rename -uid "92288010-40B9-024F-65BB-A893FF6D9057";
createNode houdiniAsset -n "bryce__dev__weirdTree__1_11";
	rename -uid "D628EEF4-4380-D83F-70FD-C88AAD189B49";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.weirdTree.1.1.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/weirdTree::1.1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_dcolorr";
	setAttr -cb on ".houdiniAssetParm_dcolorg";
	setAttr -cb on ".houdiniAssetParm_dcolorb";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "weirdTree2" -p "bryce__dev__weirdTree__1_11";
	rename -uid "C837C68D-46EB-6DA9-955E-49830488EDDD";
createNode transform -n "uvunwrap1_0" -p "weirdTree2";
	rename -uid "81BC1A78-4334-28EB-1187-ACAC3B12993B";
	setAttr ".t" -type "double3" 23.587450153374558 0 52.440661714170957 ;
	setAttr ".s" -type "double3" 5.8793461499551105 5.8793461499551105 5.8793461499551105 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0";
	rename -uid "6F4DE5FA-4CE8-768A-0A34-A7B0DC5E6664";
	addAttr -ci true -sn "tag" -ln "tag" -dt "stringArray";
	addAttr -ci true -sn "curvature" -ln "curvature" -dt "floatArray";
	addAttr -ci true -sn "N" -ln "N" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode place3dTexture -n "place3dTexture1";
	rename -uid "F5782034-4967-E632-8FF9-2B862B033DBC";
	setAttr ".s" -type "double3" 0.0099999997764825821 0.0099999997764825821 -0.0099999997764825821 ;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "A296528B-4912-8A29-02E6-1CB7705F97AF";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "2626BB32-4377-8590-7152-2DBE192A7713";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 2.5641026496887207;
	setAttr ".ai_samples" 8;
	setAttr ".ai_volume_samples" 5;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode houdiniAsset -n "bryce__dev__bridge__1_11";
	rename -uid "523FA0E4-477E-0A61-984F-60BC919CC659";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.bridge.1.1.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/bridge::1.1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "bridge2" -p "bryce__dev__bridge__1_11";
	rename -uid "42AFF610-455D-51C4-A34B-4EA8C68D0FDB";
createNode transform -n "uvlayout1_0" -p "bridge2";
	rename -uid "6223CA09-49CB-F439-B208-F49D274AF63D";
	setAttr ".t" -type "double3" 0 -13.862740608242843 0 ;
	setAttr ".s" -type "double3" 41.434946530015601 41.434946530015601 41.434946530015601 ;
createNode mesh -n "uvlayout1_0Shape" -p "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0";
	rename -uid "B9E9D9FB-4B91-C8C8-9C99-259FD451D872";
	addAttr -ci true -sn "numnonpacked" -ln "numnonpacked" -at "double";
	addAttr -ci true -sn "coverage" -ln "coverage" -at "double";
	addAttr -ci true -sn "curvature" -ln "curvature" -dt "floatArray";
	addAttr -ci true -sn "mask" -ln "mask" -dt "floatArray";
	addAttr -ci true -sn "point_dist" -ln "point_dist" -dt "floatArray";
	addAttr -ci true -sn "N" -ln "N" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".bbs" -type "float3" 1.2403154 1.2403154 1.2403154 ;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "bryce__dev__Boulder__1_11";
	rename -uid "7A0B8C16-494A-3F09-57F8-97ACD37D92D4";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -sn "houdiniAssetParm_shop_materialpath__node" -ln "houdiniAssetParm_shop_materialpath__node" 
		-nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -sn "houdiniAssetParm_shop_geometrypath__node" -ln "houdiniAssetParm_shop_geometrypath__node" 
		-nn "Procedural Shader" -dv -1 -at "long" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/bryce/OneDrive/Houdini/object_bryce.dev.Boulder.1.1.hdanc";
	setAttr ".assetName" -type "string" "bryce::dev::Object/Boulder::1.1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "Boulder2" -p "bryce__dev__Boulder__1_11";
	rename -uid "B390197F-4378-42A5-0229-E5895890752B";
createNode transform -n "uvlayout1_0" -p "Boulder2";
	rename -uid "EEE6D358-4C7A-404A-BD23-208564126C35";
	setAttr ".t" -type "double3" 298.6858640407923 47.201652365244684 182.12373539329934 ;
	setAttr ".s" -type "double3" 112.65240826620818 112.65240826620818 112.65240826620818 ;
createNode mesh -n "uvlayout1_0Shape" -p "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0";
	rename -uid "94A40689-407E-BE6C-97F5-33A294E502EB";
	addAttr -ci true -sn "numnonpacked" -ln "numnonpacked" -at "double";
	addAttr -ci true -sn "coverage" -ln "coverage" -at "double";
	addAttr -ci true -sn "name" -ln "name" -dt "stringArray";
	addAttr -ci true -sn "curvature" -ln "curvature" -dt "floatArray";
	addAttr -ci true -sn "pscale" -ln "pscale" -dt "floatArray";
	addAttr -ci true -sn "N" -ln "N" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode place3dTexture -n "place3dTexture2";
	rename -uid "A1CA01BF-4E17-A91F-EAAE-EDBB231D00C5";
	setAttr ".t" -type "double3" 1.4901161193847656e-06 0.062547892332077026 -3.6610961300841378 ;
	setAttr ".s" -type "double3" 4.7354741436949777 4.7354741436949777 -4.7354741436949777 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C8F746F5-454F-A4FB-0932-D9A147187D1B";
	setAttr -s 26 ".lnk";
	setAttr -s 26 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9A685D8B-4102-DD73-7398-45AB1E2F45B2";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D7EAB67E-4338-33CF-736F-5695C207BF0F";
createNode displayLayerManager -n "layerManager";
	rename -uid "3379E796-462A-6B02-7CB7-28BD722E93D4";
createNode displayLayer -n "defaultLayer";
	rename -uid "FA0769E3-4880-170F-FD03-D8A1CE0E948B";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "31F7E092-49ED-B060-38FD-BF85A8962A2C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "190394D3-4E22-9D3B-7892-D89B77C73493";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9F94C568-4AB1-2C26-E0B9-719CC4AD325F";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".varaovs" yes;
	setAttr ".rndrdvc" 1;
	setAttr ".rndfb" 1;
	setAttr ".version" -type "string" "5.3.3.3";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1    1;Background.Offset=0    0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1    1;Foreground.Offset=0    0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "73DEDBE6-44C5-06F5-F4DE-88ABF9E3F9B3";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "35DFF3EF-4F1B-1294-E126-F0AD287F7308";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "23BADCA3-40DE-08E6-9FB1-8483F8F9AE24";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode shadingEngine -n "nParticlePointSE";
	rename -uid "DDE14AB8-4B06-8687-9B7A-D89AB3B174B4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "1C9D8F1B-44EA-673E-4A46-F28E83208868";
createNode particleSamplerInfo -n "particleSamplerInfo1";
	rename -uid "D0A47ED1-4D2E-ED52-3FA9-A49DB575CCD6";
createNode blinn -n "npPointBlinn";
	rename -uid "01B12535-4B19-32E2-1D2C-D98E6FD614BA";
createNode particleCloud -n "npPointVolume";
	rename -uid "97E16EED-4C75-F974-9AD4-07877C9E90A0";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "40E1AABB-4A01-0DDE-E170-B196BA23B9FB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 601\n            -height 312\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 600\n            -height 311\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 601\n            -height 311\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1208\n            -height 668\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n"
		+ "                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1208\\n    -height 668\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1208\\n    -height 668\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F0FECC80-48AA-A152-5A76-729BAAB4FB0B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	rename -uid "0DB4BEB8-4E7B-95B1-6669-C7A93DDC8137";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo2";
	rename -uid "384E4DF2-4DCC-ACFD-477D-8D85F43BDE0F";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "837E7ED5-4571-E358-AA50-3797BF941DDF";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "B35AFDA7-4ED7-BF8A-BA3F-3099BB4CE29F";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "AA515B47-4B56-5A05-E2C4-6BB0BF97A7FC";
createNode substanceNode -n "substanceNode1";
	rename -uid "C6F0324E-4D58-1935-0961-C9A1506D9AF5";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_sand_color" -ln "input_sand_color" 
		-nn "Sand Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_sand_colorr" -ln "input_sand_colorR" 
		-nn "Sand Color" -dv 0.89999997615814209 -smn 0 -smx 0 -at "float" -p "input_sand_color";
	addAttr -r false -ci true -h true -k true -sn "input_sand_colorg" -ln "input_sand_colorG" 
		-nn "Sand Color" -dv 0.77544599771499634 -smn 0 -smx 0 -at "float" -p "input_sand_color";
	addAttr -r false -ci true -h true -k true -sn "input_sand_colorb" -ln "input_sand_colorB" 
		-nn "Sand Color" -dv 0.61473202705383301 -smn 0 -smx 0 -at "float" -p "input_sand_color";
	addAttr -r false -ci true -h true -k true -sn "input_sand_color_variation" -ln "input_sand_color_variation" 
		-nn "Sand Color Variation" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_sand_roughness" -ln "input_sand_roughness" 
		-nn "Sand Roughness" -ct "substance_input" -dv 0.74000000953674316 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_pebbles_density" -ln "input_pebbles_density" 
		-nn "Pebbles Density" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_grain_intensity" -ln "input_grain_intensity" 
		-nn "Grain Intensity" -ct "substance_input" -dv 0.27000001072883606 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_volume_intensity" -ln "input_volume_intensity" 
		-nn "Volume Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_volume_density" -ln "input_volume_density" 
		-nn "Volume Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_wetness" -ln "input_wetness" 
		-nn "Wetness" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scattering_intensity" -ln "input_scattering_intensity" 
		-nn "Scattering Intensity" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_translucency" -ln "input_channel_translucency" 
		-nn "Translucency" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatter" -ln "input_channel_scatter" 
		-nn "Scatter" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatteringcolor" -ln "input_channel_scatteringcolor" 
		-nn "Scattering Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatteringdistancescale" 
		-ln "input_channel_scatteringdistancescale" -nn "Scattering Distance Scale" -ct "substance_input" 
		-dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -w false -s false -ci true -sn "output_scatter" -ln "output_scatter" -nn "Scatter" 
		-ct "substance_output_value" -min 0 -max 1 -at "bool";
	setAttr ".outputsize" -type "long2" 12 12 ;
	setAttr ".sbs" -type "string" "C:/Users/bryce/OneDrive/Substance/ground_sand.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://ground_sand\" label=\"Humid Sand\" >\n  <presetinput identifier=\"sand_color\" uid=\"1493017243\" type=\"2\" value=\"0.79,0.679622,0.5372\" />\n  <presetinput identifier=\"sand_color_variation\" uid=\"1493018581\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"pebbles_density\" uid=\"1492910922\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"1491737906\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"volume_intensity\" uid=\"1491739047\" type=\"0\" value=\"0.36\" />\n  <presetinput identifier=\"volume_density\" uid=\"1492530137\" type=\"0\" value=\"0.38\" />\n  <presetinput identifier=\"wetness\" uid=\"1492187425\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1191206472\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1236100706\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1236100705\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1191206519\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1191206518\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1236100717\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1236100716\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1519844541\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1236100714\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"1075826363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"1494066624\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"1494064438\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"1546211059\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073221\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073222\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"815267693\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1326593615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"815267615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"815267704\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"815136780\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1219890221\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1219890268\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"1494064198\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058467\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058469\" type=\"65535\" value=\"0\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://ground_sand\" label=\"Wet Sand\" >\n  <presetinput identifier=\"sand_color\" uid=\"1493017243\" type=\"2\" value=\"0.79,0.679622,0.5372\" />\n  <presetinput identifier=\"sand_color_variation\" uid=\"1493018581\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"pebbles_density\" uid=\"1492910922\" type=\"0\" value=\"0.49\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"1491737906\" type=\"0\" value=\"0.26\" />\n  <presetinput identifier=\"volume_intensity\" uid=\"1491739047\" type=\"0\" value=\"0.14\" />\n  <presetinput identifier=\"volume_density\" uid=\"1492530137\" type=\"0\" value=\"0.52\" />\n  <presetinput identifier=\"wetness\" uid=\"1492187425\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1191206472\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1236100706\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1236100705\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1191206519\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1191206518\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1236100717\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1236100716\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1519844541\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1236100714\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"1075826363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"1494066624\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"1494064438\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"1546211059\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073221\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073222\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"815267693\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1326593615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"815267615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"815267704\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"815136780\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1219890221\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1219890268\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"1494064198\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058467\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058469\" type=\"65535\" value=\"0\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://ground_sand\" label=\"Grainy Sand\" >\n  <presetinput identifier=\"sand_color\" uid=\"1493017243\" type=\"2\" value=\"0.79,0.679622,0.5372\" />\n  <presetinput identifier=\"sand_color_variation\" uid=\"1493018581\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"pebbles_density\" uid=\"1492910922\" type=\"0\" value=\"0.95\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"1491737906\" type=\"0\" value=\"0.53\" />\n  <presetinput identifier=\"volume_intensity\" uid=\"1491739047\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"volume_density\" uid=\"1492530137\" type=\"0\" value=\"0.89\" />\n  <presetinput identifier=\"wetness\" uid=\"1492187425\" type=\"0\" value=\"0.38\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1191206472\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1236100706\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1236100705\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1191206519\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1191206518\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1236100717\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1236100716\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1519844541\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1236100714\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"1075826363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"1494066624\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"1494064438\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"1546211059\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073221\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"\" uid=\"1435073222\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"815267693\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1326593615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"815267615\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"815267704\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"815136780\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1219890221\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1219890268\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"1494064198\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058467\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1435058469\" type=\"65535\" value=\"0\" />\n </sbspreset>\n</sbspresets>\n"  ;
	setAttr ".ups" yes;
createNode place2dTexture -n "place2dTexture4";
	rename -uid "A894B91F-4606-2EF7-E439-94B348D73762";
createNode substanceOutputNode -n "Ground_Sand_basecolor";
	rename -uid "290C5769-47BE-701B-C117-448039D37379";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Ground_Sand_basecolor.exr";
createNode file -n "file1";
	rename -uid "5E9C569D-4FFE-F5F8-D77A-1DB978284491";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode projection -n "projection1";
	rename -uid "39BABF83-4789-4CD5-2ED6-41964C58A1D8";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode substanceOutputNode -n "Ground_Sand_metallic";
	rename -uid "B308CA2A-48A3-9049-AD07-CE93B21375B6";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Ground_Sand_metallic.png";
createNode file -n "file2";
	rename -uid "89E8489F-473C-92B2-5B79-1FA889D859A5";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode projection -n "projection2";
	rename -uid "814C9269-4DCA-C649-B69D-F0B1A6DE81B7";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode substanceOutputNode -n "Ground_Sand_normal";
	rename -uid "AA34BF0A-43BA-9F3A-376C-4CADC02584F2";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Ground_Sand_normal.exr";
createNode file -n "file3";
	rename -uid "3B46D1AB-4F22-2869-7085-0BB6FF0FD890";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode projection -n "projection3";
	rename -uid "ECA6C152-40A8-DA65-1C7D-95855CDB96C5";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode substanceOutputNode -n "Ground_Sand_height";
	rename -uid "B40038A8-4D80-F099-AC37-00938B10A2D7";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Ground_Sand_height.exr";
createNode file -n "file4";
	rename -uid "ACBC68D7-4C56-3587-6A83-8D9648892443";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode projection -n "projection4";
	rename -uid "1846AC48-4E9E-A437-3423-E5A7233DD813";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode substanceOutputNode -n "Ground_Sand_roughness";
	rename -uid "E3C7060E-4FE1-89FA-5236-F9AD82C0D68E";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Ground_Sand_roughness.exr";
createNode file -n "file5";
	rename -uid "4C37F2F7-4AD4-86B0-A11F-3D86F0FF51F6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode projection -n "projection5";
	rename -uid "EB254035-49C1-595F-8A8C-AE85967701D2";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "519387A0-4155-0B62-49F0-E1905C959440";
createNode aiStandardSurface -n "SAND";
	rename -uid "8FE36EF3-47FC-4088-625F-B18FF762566E";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "3192AF29-410C-761F-25C5-EE8308E67215";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo3";
	rename -uid "ECA80158-4A29-D49C-A4B7-0E80597EC7D5";
createNode bump2d -n "bump2d1";
	rename -uid "B00017D8-4920-5105-80C1-1FB009D75905";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader1";
	rename -uid "A22BF678-42B0-E9FD-8717-5085ABC88D6B";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "FD3DEE42-40D2-6E8E-1918-DFB67670A1D5";
createNode substanceNode -n "substanceNode2";
	rename -uid "7BCF0436-4FB1-EA50-7E71-4A8D717D7215";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_stone_color" -ln "input_stone_color" 
		-nn "Stone Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorr" -ln "input_stone_colorR" 
		-nn "Stone Color" -dv 0.31609201431274414 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorg" -ln "input_stone_colorG" 
		-nn "Stone Color" -dv 0.31609201431274414 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorb" -ln "input_stone_colorB" 
		-nn "Stone Color" -dv 0.31609201431274414 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -h true -k true -sn "input_stone_roughness" -ln "input_stone_roughness" 
		-nn "Stone Roughness" -ct "substance_input" -dv 0.64999997615814209 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_strata_spread" -ln "input_strata_spread" 
		-nn "Strata Spread" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_strata_color" -ln "input_strata_color" 
		-nn "Strata Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_strata_colorr" -ln "input_strata_colorR" 
		-nn "Strata Color" -dv 0.31764701008796692 -smn 0 -smx 0 -at "float" -p "input_strata_color";
	addAttr -r false -ci true -h true -k true -sn "input_strata_colorg" -ln "input_strata_colorG" 
		-nn "Strata Color" -dv 0.31764701008796692 -smn 0 -smx 0 -at "float" -p "input_strata_color";
	addAttr -r false -ci true -h true -k true -sn "input_strata_colorb" -ln "input_strata_colorB" 
		-nn "Strata Color" -dv 0.31764701008796692 -smn 0 -smx 0 -at "float" -p "input_strata_color";
	addAttr -r false -ci true -h true -k true -sn "input_smoothness" -ln "input_smoothness" 
		-nn "Smoothness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_grain_intensity" -ln "input_grain_intensity" 
		-nn "Grain Intensity" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_grain_direction" -ln "input_grain_direction" 
		-nn "Grain Direction" -ct "substance_input" -dv 0.25 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_highlight_color" -ln "input_highlight_color" 
		-nn "Highlight Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorr" -ln "input_highlight_colorR" 
		-dv 0.667976975440979 -smn 1 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorg" -ln "input_highlight_colorG" 
		-dv 0.69926798343658447 -smn 0 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorb" -ln "input_highlight_colorB" 
		-dv 0.71839100122451782 -smn 0 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_color_intensity" 
		-ln "input_highlight_color_intensity" -nn "Highlight Color Intensity" -ct "substance_input" 
		-dv 0.15000000596046448 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_shadow_color" -ln "input_shadow_color" 
		-nn "Shadow Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorr" -ln "input_shadow_colorR" 
		-dv 0.16044899821281433 -smn 1 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorg" -ln "input_shadow_colorG" 
		-dv 0.17516499757766724 -smn 0 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorb" -ln "input_shadow_colorB" 
		-dv 0.17816099524497986 -smn 0 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_color_intensity" -ln "input_shadow_color_intensity" 
		-nn "Shadow Color Intensity" -ct "substance_input" -dv 0.25 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_fake_lighting" -ln "input_fake_lighting" 
		-nn "Fake Lighting" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".outputsize" -type "long2" 10 10 ;
	setAttr ".sbs" -type "string" "C:/Users/bryce/OneDrive/Substance/stylized_stone.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://stylized_stone\" label=\"Rough Rocky Stone\" >\n  <presetinput identifier=\"stone_color\" uid=\"2620630536\" type=\"2\" value=\"0.368627,0.24761,0.209105\" />\n  <presetinput identifier=\"stone_roughness\" uid=\"2620631479\" type=\"0\" value=\"0.8\" />\n  <presetinput identifier=\"strata_color\" uid=\"2617689404\" type=\"2\" value=\"0.603922,0.366057,0.2896\" />\n  <presetinput identifier=\"strata_spread\" uid=\"2618917142\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"smoothness\" uid=\"2620629807\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"2617863846\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"grain_direction\" uid=\"2617890432\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"fake_lighting\" uid=\"2618059987\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2618063854\" type=\"3\" value=\"0.672414,0.535844,0.503327,1\" />\n  <presetinput identifier=\"highlight_color_intensity\" uid=\"2618063750\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"shadow_color\" uid=\"2618063798\" type=\"3\" value=\"0.177455,0.294275,0.45977,1\" />\n  <presetinput identifier=\"shadow_color_intensity\" uid=\"2618063783\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2213208207\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2370295973\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2370295974\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2213208240\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2213208241\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2370295978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2370295979\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2370295981\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2258933704\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4101849514\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2348320904\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4101849560\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4101849535\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4101816011\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"2354885354\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2354885275\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2249174625\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_stone\" label=\"Damp Yellow Stone\" >\n  <presetinput identifier=\"stone_color\" uid=\"2620630536\" type=\"2\" value=\"0.494253,0.357275,0.179203\" />\n  <presetinput identifier=\"stone_roughness\" uid=\"2620631479\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"strata_color\" uid=\"2617689404\" type=\"2\" value=\"0.586207,0.458724,0.294818\" />\n  <presetinput identifier=\"strata_spread\" uid=\"2618917142\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"smoothness\" uid=\"2620629807\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"2617863846\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"grain_direction\" uid=\"2617890432\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"fake_lighting\" uid=\"2618059987\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2618063854\" type=\"3\" value=\"1,0.932749,0.847953,1\" />\n  <presetinput identifier=\"highlight_color_intensity\" uid=\"2618063750\" type=\"0\" value=\"0.13\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2213208207\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2370295973\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2370295974\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2213208240\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2213208241\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2370295978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2370295979\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2370295981\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2258933704\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4101849514\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2348320904\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4101849560\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4101849535\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4101816011\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"2354885354\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2354885275\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2249174625\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_stone\" label=\"Dry Blue Stone\" >\n  <presetinput identifier=\"stone_color\" uid=\"2620630536\" type=\"2\" value=\"0.235262,0.272904,0.321839\" />\n  <presetinput identifier=\"stone_roughness\" uid=\"2620631479\" type=\"0\" value=\"0.8\" />\n  <presetinput identifier=\"strata_color\" uid=\"2617689404\" type=\"2\" value=\"0.144182,0.256813,0.316092\" />\n  <presetinput identifier=\"strata_spread\" uid=\"2618917142\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"smoothness\" uid=\"2620629807\" type=\"0\" value=\"0.87\" />\n  <presetinput identifier=\"grain_intensity\" uid=\"2617863846\" type=\"0\" value=\"0.28\" />\n  <presetinput identifier=\"grain_direction\" uid=\"2617890432\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"fake_lighting\" uid=\"2618059987\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2618063854\" type=\"3\" value=\"0.727499,0.845788,0.908046,1\" />\n  <presetinput identifier=\"highlight_color_intensity\" uid=\"2618063750\" type=\"0\" value=\"0.18\" />\n  <presetinput identifier=\"shadow_color_intensity\" uid=\"2618063783\" type=\"0\" value=\"0.62\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2213208207\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2370295973\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2370295974\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2213208240\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2213208241\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2370295978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2370295979\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2370295981\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2258933704\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4101849514\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2348320904\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4101849560\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4101849535\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4101816011\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"2354885354\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2354885275\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2249174625\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "FE726FA8-4BE9-F06E-619F-70ABC3240457";
createNode substanceOutputNode -n "Stylized_Stone_basecolor";
	rename -uid "33E32E1A-4AA2-4A21-E102-2488A21FC920";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_basecolor.png";
createNode file -n "file6";
	rename -uid "30B7450B-4166-32DE-A76A-28BD87BDAD2A";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Stone_ambientocclusion";
	rename -uid "45B669E2-4955-7C51-983A-C2A788991C5D";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_ambientocclusion.exr";
createNode file -n "file7";
	rename -uid "3528DF38-4EAC-D30D-ED72-60A30E59C566";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Stone_metallic";
	rename -uid "4E390B25-482F-9297-89E1-3CABE8BA4496";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_metallic.png";
createNode file -n "file8";
	rename -uid "9CE78597-4919-383A-B7BD-DE91B6E8AD87";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Stone_normal";
	rename -uid "EF0770E9-456F-1834-A610-419E9DB7B1BD";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_normal.exr";
createNode file -n "file9";
	rename -uid "538C061F-497C-50FD-DB23-E2A1A385EEE0";
	setAttr ".ail" yes;
	setAttr ".ag" 2;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Stone_height";
	rename -uid "BEFEA9DA-4D3E-F281-2FE7-25BAF37C2A36";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_height.exr";
createNode file -n "file10";
	rename -uid "A1C6DA85-49F5-EC10-A795-C2B68173AD03";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Stone_roughness";
	rename -uid "38E9241D-4702-188A-43E7-7FB87AA105D1";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stylized_Stone_roughness.png";
createNode file -n "file11";
	rename -uid "3D8EDF02-4817-3BE3-D398-35B4F99C600B";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "4748CBD7-43C8-13EA-AFBF-60BBB07C16AB";
createNode aiStandardSurface -n "stone";
	rename -uid "922B98A9-492D-5849-9CDF-8D8D718EE2FD";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "5D2C3A82-405C-8EF7-3AA0-B68986F722C8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo4";
	rename -uid "D11F3C62-4751-17FA-229D-6FA93C32102A";
createNode bump2d -n "bump2d2";
	rename -uid "545ACDB2-4AE2-9B4C-DE93-C8B6E4446AFC";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader2";
	rename -uid "2B6EE6C2-42F0-E965-AAD9-8FA0BFD2DDAA";
createNode substanceNode -n "substanceNode3";
	rename -uid "F8E7A7C4-45E4-C70C-D060-9AB42EDEFB0D";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_flesh_color" -ln "input_flesh_color" 
		-nn "Flesh Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_flesh_colorr" -ln "input_flesh_colorR" 
		-nn "Flesh Color" -dv 0.57458597421646118 -smn 0 -smx 0 -at "float" -p "input_flesh_color";
	addAttr -r false -ci true -h true -k true -sn "input_flesh_colorg" -ln "input_flesh_colorG" 
		-nn "Flesh Color" -dv 0.2106499969959259 -smn 0 -smx 0 -at "float" -p "input_flesh_color";
	addAttr -r false -ci true -h true -k true -sn "input_flesh_colorb" -ln "input_flesh_colorB" 
		-nn "Flesh Color" -dv 0.18480800092220306 -smn 0 -smx 0 -at "float" -p "input_flesh_color";
	addAttr -r false -ci true -h true -k true -sn "input_flesh_roughness" -ln "input_flesh_roughness" 
		-nn "Flesh Roughness" -ct "substance_input" -dv 0.33000001311302185 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_flesh_roughness_variation" 
		-ln "input_flesh_roughness_variation" -nn "Flesh Roughness Variation" -ct "substance_input" 
		-dv 0.14000000059604645 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_flesh_grain_intensity" -ln "input_flesh_grain_intensity" 
		-nn "Flesh Grain Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fiber_density" -ln "input_fiber_density" 
		-nn "Fiber Density" -ct "substance_input" -dv 0.4699999988079071 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_marbling_density" -ln "input_marbling_density" 
		-nn "Marbling Density" -ct "substance_input" -dv 0.62000000476837158 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_marbling_color" -ln "input_marbling_color" 
		-nn "Marbling Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_marbling_colorr" -ln "input_marbling_colorR" 
		-nn "Marbling Color" -dv 0.91712701320648193 -smn 0 -smx 0 -at "float" -p "input_marbling_color";
	addAttr -r false -ci true -h true -k true -sn "input_marbling_colorg" -ln "input_marbling_colorG" 
		-nn "Marbling Color" -dv 0.76965099573135376 -smn 0 -smx 0 -at "float" -p "input_marbling_color";
	addAttr -r false -ci true -h true -k true -sn "input_marbling_colorb" -ln "input_marbling_colorB" 
		-nn "Marbling Color" -dv 0.57923799753189087 -smn 0 -smx 0 -at "float" -p "input_marbling_color";
	addAttr -r false -ci true -h true -k true -sn "input_marbling_roughness" -ln "input_marbling_roughness" 
		-nn "Marbling Roughness" -ct "substance_input" -dv 0.16349799931049347 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_translucency_variation" -ln "input_translucency_variation" 
		-nn "Translucency Variation" -ct "substance_input" -dv 0.12999999523162842 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scattering_intensity" -ln "input_scattering_intensity" 
		-nn "Scattering Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_redshift_intensity" -ln "input_redshift_intensity" 
		-nn "Red Shift Intensity" -ct "substance_input" -dv 0.85000002384185791 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rayleigh_intensity" -ln "input_rayleigh_intensity" 
		-nn "Rayleigh Intensity" -ct "substance_input" -dv 0.20000000298023224 -smn 0 -smx 
		1 -at "float";
	addAttr -w false -s false -ci true -sn "output_redshift" -ln "output_redshift" -nn "Red Shift" 
		-ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_rayleigh" -ln "output_rayleigh" -nn "Rayleigh" 
		-ct "substance_output_value" -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_translucency" -ln "input_channel_translucency" 
		-nn "Translucency" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatter" -ln "input_channel_scatter" 
		-nn "Scatter" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatteringcolor" -ln "input_channel_scatteringcolor" 
		-nn "Scattering Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_scatteringdistancescale" 
		-ln "input_channel_scatteringdistancescale" -nn "Scattering Distance Scale" -ct "substance_input" 
		-dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_redshift" -ln "input_channel_redshift" 
		-nn "Red Shift" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_rayleigh" -ln "input_channel_rayleigh" 
		-nn "Rayleigh" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -w false -s false -ci true -sn "output_scatter" -ln "output_scatter" -nn "Scatter" 
		-ct "substance_output_value" -min 0 -max 1 -at "bool";
	setAttr ".outputsize" -type "long2" 10 10 ;
	setAttr ".sbs" -type "string" "C:/Users/bryce/OneDrive/Substance/organic_flesh.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://organic_flesh\" label=\"Rotten Meat\" >\n  <presetinput identifier=\"flesh_color\" uid=\"708306072\" type=\"2\" value=\"0.490196,0.301961,0.286275\" />\n  <presetinput identifier=\"flesh_roughness\" uid=\"707907344\" type=\"0\" value=\"0.7\" />\n  <presetinput identifier=\"flesh_roughness_variation\" uid=\"705983917\" type=\"0\" value=\"0.39\" />\n  <presetinput identifier=\"fiber_density\" uid=\"704800021\" type=\"0\" value=\"0.38\" />\n  <presetinput identifier=\"\" uid=\"1474708683\" type=\"65535\" value=\"0.57\" />\n  <presetinput identifier=\"marbling_density\" uid=\"704808970\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"marbling_color\" uid=\"706078866\" type=\"2\" value=\"0.320474,0.569522,0.60221\" />\n  <presetinput identifier=\"marbling_roughness\" uid=\"705616380\" type=\"0\" value=\"0.48\" />\n  <presetinput identifier=\"translucency_variation\" uid=\"707877244\" type=\"0\" value=\"0.26\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"905537108\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"995384958\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"995384957\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"905537131\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"905537130\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"995384945\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"995384944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"678413473\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"995384950\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"853997223\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"737451484\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"737453354\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"785413871\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_redshift\" uid=\"678215118\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_rayleigh\" uid=\"678215117\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1114556273\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1038814803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1114556163\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1114556260\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1114585104\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"978269233\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_position\" uid=\"978269248\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"737453146\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"redshift_intensity\" uid=\"678200872\" type=\"0\" value=\"0.85\" />\n  <presetinput identifier=\"rayleigh_intensity\" uid=\"678200878\" type=\"0\" value=\"0.2\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://organic_flesh\" label=\"Large Fiber Fresh Flesh\" >\n  <presetinput identifier=\"flesh_color\" uid=\"708306072\" type=\"2\" value=\"0.546961,0.158711,0.131143\" />\n  <presetinput identifier=\"flesh_roughness\" uid=\"707907344\" type=\"0\" value=\"0.32\" />\n  <presetinput identifier=\"flesh_roughness_variation\" uid=\"705983917\" type=\"0\" value=\"0.14\" />\n  <presetinput identifier=\"fiber_density\" uid=\"704800021\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"\" uid=\"1474708683\" type=\"65535\" value=\"0.59\" />\n  <presetinput identifier=\"marbling_density\" uid=\"704808970\" type=\"0\" value=\"0.79\" />\n  <presetinput identifier=\"marbling_color\" uid=\"706078866\" type=\"2\" value=\"0.883978,0.683854,0.485929\" />\n  <presetinput identifier=\"marbling_roughness\" uid=\"705616380\" type=\"0\" value=\"0.16\" />\n  <presetinput identifier=\"translucency_variation\" uid=\"707877244\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"905537108\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"995384958\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"995384957\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"905537131\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"905537130\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"995384945\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"995384944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"678413473\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"995384950\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"853997223\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"737451484\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"737453354\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"785413871\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_redshift\" uid=\"678215118\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_rayleigh\" uid=\"678215117\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1114556273\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1038814803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1114556163\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1114556260\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1114585104\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"978269233\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_position\" uid=\"978269248\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"737453146\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"redshift_intensity\" uid=\"678200872\" type=\"0\" value=\"0.85\" />\n  <presetinput identifier=\"rayleigh_intensity\" uid=\"678200878\" type=\"0\" value=\"0.2\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://organic_flesh\" label=\"Marbling Meat\" >\n  <presetinput identifier=\"flesh_color\" uid=\"708306072\" type=\"2\" value=\"0.668508,0.270634,0.242383\" />\n  <presetinput identifier=\"flesh_roughness\" uid=\"707907344\" type=\"0\" value=\"0.47\" />\n  <presetinput identifier=\"flesh_roughness_variation\" uid=\"705983917\" type=\"0\" value=\"0.14\" />\n  <presetinput identifier=\"fiber_density\" uid=\"704800021\" type=\"0\" value=\"0.83\" />\n  <presetinput identifier=\"\" uid=\"1474708683\" type=\"65535\" value=\"0.17\" />\n  <presetinput identifier=\"marbling_density\" uid=\"704808970\" type=\"0\" value=\"0.79\" />\n  <presetinput identifier=\"marbling_color\" uid=\"706078866\" type=\"2\" value=\"0.845304,0.781041,0.781041\" />\n  <presetinput identifier=\"translucency_variation\" uid=\"707877244\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"905537108\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"995384958\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"995384957\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"905537131\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"905537130\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"995384945\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"995384944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"678413473\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"995384950\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_translucency\" uid=\"853997223\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatter\" uid=\"737451484\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringcolor\" uid=\"737453354\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_scatteringdistancescale\" uid=\"785413871\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_redshift\" uid=\"678215118\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_rayleigh\" uid=\"678215117\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1114556273\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1038814803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1114556163\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1114556260\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1114585104\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"978269233\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"height_position\" uid=\"978269248\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"scattering_intensity\" uid=\"737453146\" type=\"0\" value=\"0.96\" />\n  <presetinput identifier=\"redshift_intensity\" uid=\"678200872\" type=\"0\" value=\"0.85\" />\n  <presetinput identifier=\"rayleigh_intensity\" uid=\"678200878\" type=\"0\" value=\"0.2\" />\n </sbspreset>\n</sbspresets>\n"  ;
	setAttr ".ups" yes;
createNode place2dTexture -n "place2dTexture6";
	rename -uid "BF20E176-4C2E-B208-C34C-54B411765E38";
createNode substanceOutputNode -n "Organic_Flesh_basecolor";
	rename -uid "CC41FE0D-48E9-C436-C27C-0AAF76A52D6C";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Organic_Flesh_basecolor.png";
createNode file -n "file12";
	rename -uid "97C6FBB0-4C66-3EBC-C794-3D80FD395947";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Organic_Flesh_metallic";
	rename -uid "50B72D8A-4985-1CB2-80D7-DDBC744826D8";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Organic_Flesh_metallic.png";
createNode file -n "file13";
	rename -uid "D5666370-4E11-D46E-5B26-75B05E6E1D3F";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Organic_Flesh_normal";
	rename -uid "46604324-4D47-54B7-146A-B2996E0974B0";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Organic_Flesh_normal.exr";
createNode file -n "file14";
	rename -uid "596F6D41-4450-D823-D50D-86A4522A3781";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Organic_Flesh_height";
	rename -uid "B3F7F78C-4F34-9790-AAB9-DF809DCF903D";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Organic_Flesh_height.exr";
createNode file -n "file15";
	rename -uid "1E68163B-41B8-9548-EE06-15A76EEA7B86";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Organic_Flesh_roughness";
	rename -uid "132610B2-429B-6671-DED1-3A9C7BBFD602";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Organic_Flesh_roughness.exr";
createNode file -n "file16";
	rename -uid "D1136B40-4865-0A46-859F-0FA4268B78D0";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "D88D271A-4FF2-5D78-F643-9DAAB1C6A917";
createNode aiStandardSurface -n "flesh";
	rename -uid "BA2393BC-4BAE-1868-C407-508E9490753B";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "35302BD5-49E4-8DFA-A9E4-818870120DCF";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo5";
	rename -uid "B1818E3D-4025-D53B-A0FE-4294A6ABFB10";
createNode bump2d -n "bump2d3";
	rename -uid "5C7A4566-4314-A3FA-C989-F8AF8B0D9A70";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.0004699998 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader3";
	rename -uid "04B5B5C3-412D-2A26-3765-ABB4155855E4";
createNode objectSet -n "concrete_fracture2inside";
	rename -uid "C9E9ABD4-4CEE-C064-7817-56B4617E1914";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "B1222F6D-479C-629E-91EA-0CAB5795B111";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D8593110-4384-3ADE-83A0-DCA307DCEFEC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 420 "f[12]" "f[49:50]" "f[53:54]" "f[57:59]" "f[67:71]" "f[82:84]" "f[88:91]" "f[102:105]" "f[109:113]" "f[120:123]" "f[127:128]" "f[131:133]" "f[140:145]" "f[155]" "f[164:170]" "f[187:192]" "f[201:203]" "f[205:210]" "f[216:217]" "f[220:221]" "f[230:231]" "f[234:239]" "f[246:248]" "f[256:257]" "f[267:272]" "f[274]" "f[281]" "f[284:288]" "f[300:310]" "f[314:315]" "f[333:342]" "f[353:357]" "f[362]" "f[370:371]" "f[385:387]" "f[394:400]" "f[407:408]" "f[411:417]" "f[425]" "f[427:430]" "f[436:439]" "f[441]" "f[445:447]" "f[451:454]" "f[456]" "f[458:461]" "f[467:468]" "f[471]" "f[474:475]" "f[494:504]" "f[507]" "f[509]" "f[511:512]" "f[517:528]" "f[530:546]" "f[549:554]" "f[556:558]" "f[561:569]" "f[571:573]" "f[580:581]" "f[584:590]" "f[593:596]" "f[598:604]" "f[606:622]" "f[625:631]" "f[638:639]" "f[641:643]" "f[646:651]" "f[653:656]" "f[661:668]" "f[671:672]" "f[674:677]" "f[679:680]" "f[682:684]" "f[690:691]" "f[693]" "f[696]" "f[699]" "f[702:703]" "f[709:710]" "f[712:714]" "f[717]" "f[732]" "f[736:737]" "f[740:741]" "f[743]" "f[747]" "f[749:751]" "f[753]" "f[756:759]" "f[770:771]" "f[775]" "f[777:782]" "f[784:785]" "f[788]" "f[790:793]" "f[796]" "f[798:805]" "f[815:817]" "f[821]" "f[823]" "f[854]" "f[856]" "f[860]" "f[862]" "f[871]" "f[882:883]" "f[894:895]" "f[904:905]" "f[912:916]" "f[925]" "f[932:933]" "f[947:949]" "f[963:965]" "f[967:968]" "f[971]" "f[976:977]" "f[980:985]" "f[995:997]" "f[1005:1006]" "f[1008]" "f[1010:1014]" "f[1018:1026]" "f[1029:1031]" "f[1035:1044]" "f[1046]" "f[1050]" "f[1054:1058]" "f[1066:1069]" "f[1073:1074]" "f[1076:1079]" "f[1081]" "f[1085]" "f[1087]" "f[1096]" "f[1103:1109]" "f[1113:1115]" "f[1120:1122]" "f[1125:1136]" "f[1140:1145]" "f[1147:1148]" "f[1151]" "f[1154:1163]" "f[1165:1166]" "f[1170:1173]" "f[1175:1188]" "f[1191:1193]" "f[1195:1197]" "f[1199:1200]" "f[1202:1204]" "f[1219:1222]" "f[1225:1229]" "f[1232:1234]" "f[1239:1240]" "f[1242]" "f[1245:1248]" "f[1250]" "f[1253:1255]" "f[1258]" "f[1260]" "f[1265:1267]" "f[1270:1271]" "f[1274:1279]" "f[1281:1287]" "f[1295:1298]" "f[1307]" "f[1309:1311]" "f[1323]" "f[1325:1333]" "f[1341:1342]" "f[1344]" "f[1346:1350]" "f[1352:1360]" "f[1363:1364]" "f[1366:1370]" "f[1375:1378]" "f[1380:1381]" "f[1385]" "f[1388:1394]" "f[1398:1399]" "f[1404:1411]" "f[1413:1419]" "f[1422]" "f[1435]" "f[1437:1440]" "f[1449:1450]" "f[1453:1454]" "f[1461]" "f[1465:1466]" "f[1472]" "f[1474:1479]" "f[1481:1482]" "f[1486:1490]" "f[1493:1496]" "f[1498:1501]" "f[1504]" "f[1508:1515]" "f[1518]" "f[1521:1524]" "f[1531:1545]" "f[1550:1561]" "f[1564]" "f[1567:1578]" "f[1584:1585]" "f[1588:1589]" "f[1591]" "f[1593]" "f[1597:1598]" "f[1600]" "f[1604]" "f[1607]" "f[1609:1610]" "f[1614:1616]" "f[1618]" "f[1623:1626]" "f[1629:1630]" "f[1637]" "f[1640:1644]" "f[1647:1649]" "f[1652]" "f[1654]" "f[1661:1663]" "f[1667:1669]" "f[1671]" "f[1676:1682]" "f[1686]" "f[1689:1692]" "f[1694:1697]" "f[1699]" "f[1704:1705]" "f[1708]" "f[1712:1721]" "f[1724]" "f[1727:1733]" "f[1738:1741]" "f[1744:1745]" "f[1749]" "f[1758:1761]" "f[1764]" "f[1766]" "f[1773:1775]" "f[1777:1780]" "f[1785]" "f[1792:1804]" "f[1806:1812]" "f[1814:1815]" "f[1817]" "f[1820:1827]" "f[1829]" "f[1841:1846]" "f[1849:1850]" "f[1853]" "f[1856:1859]" "f[1863]" "f[1866:1867]" "f[1869:1870]" "f[1873:1876]" "f[1878]" "f[1880:1884]" "f[1888]" "f[1890:1893]" "f[1897:1899]" "f[1904:1917]" "f[1919]" "f[1937:1944]" "f[1946:1947]" "f[1949]" "f[1952:1960]" "f[1968:1973]" "f[1980:1982]" "f[1984]" "f[1987:1991]" "f[1994:1995]" "f[1999]" "f[2017]" "f[2024]" "f[2027:2033]" "f[2038]" "f[2044]" "f[2052]" "f[2054]" "f[2056:2063]" "f[2074]" "f[2076]" "f[2078:2080]" "f[2085]" "f[2087]" "f[2089]" "f[2091:2092]" "f[2126:2128]" "f[2130:2133]" "f[2141:2144]" "f[2157:2161]" "f[2182]" "f[2187]" "f[2189:2191]" "f[2199:2202]" "f[2213:2215]" "f[2217:2218]" "f[2222]" "f[2224:2230]" "f[2232:2234]" "f[2239:2242]" "f[2253:2257]" "f[2259:2261]" "f[2263:2264]" "f[2267:2268]" "f[2271:2278]" "f[2283:2285]" "f[2289:2294]" "f[2300:2314]" "f[2339:2343]" "f[2346:2350]" "f[2357:2358]" "f[2365]" "f[2367:2368]" "f[2371:2373]" "f[2379:2381]" "f[2383]" "f[2388:2407]" "f[2409:2410]" "f[2418:2419]" "f[2421:2425]" "f[2427]" "f[2434]" "f[2436:2437]" "f[2439]" "f[2441]" "f[2446:2447]" "f[2460]" "f[2464:2468]" "f[2473:2479]" "f[2485:2490]" "f[2496]" "f[2516:2519]" "f[2533:2534]" "f[2536]" "f[2540:2541]" "f[2586]" "f[2605]" "f[2613:2621]" "f[2625:2628]" "f[2631:2632]" "f[2634:2635]" "f[2643:2647]" "f[2651]" "f[2660]" "f[2662:2663]" "f[2681]" "f[2692:2695]" "f[2702:2703]" "f[2706:2708]" "f[2717]" "f[2755:2762]" "f[2764:2769]" "f[2800:2805]" "f[2831]" "f[2833:2836]" "f[2846:2852]" "f[2865:2870]" "f[2887:2893]" "f[2897:2898]" "f[2931:2943]" "f[2981:2987]" "f[3011:3023]" "f[3045:3054]" "f[3068]" "f[3082:3087]" "f[3106:3109]" "f[3144:3154]" "f[3166]" "f[3193:3199]" "f[3229:3236]" "f[3260:3268]" "f[3278:3284]" "f[3286:3293]" "f[3318:3322]" "f[3336:3348]" "f[3350:3351]" "f[3354:3356]" "f[3359:3366]" "f[3373:3374]" "f[3381:3390]" "f[3403:3407]" "f[3412:3416]" "f[3427:3431]" "f[3441:3443]" "f[3445:3446]" "f[3468:3482]" "f[3490]" "f[3505:3514]" "f[3528:3529]" "f[3542]" "f[3553]" "f[3555:3556]" "f[3561]" "f[3567]" "f[3571]" "f[3575]" "f[3579:3581]" "f[3588]" "f[3591:3592]" "f[3599]" "f[3606]" "f[3609]" "f[3614:3615]" "f[3618]" "f[3625]" "f[3634]" "f[3640]" "f[3645]" "f[3653]" "f[3658]" "f[3661]" "f[3668]" "f[3673:3674]" "f[3689]" "f[3693]" "f[3695]" "f[3700]";
createNode objectSet -n "concrete_fracture1inside";
	rename -uid "32B7E625-4B4E-C065-E4D4-F5BB9255A12D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "74C728D2-4D37-5545-4126-1BAE6D41A736";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4A25E0EB-497E-DBAB-D546-569126C5BD3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 376 "f[52]" "f[64:66]" "f[77:78]" "f[85:87]" "f[106:108]" "f[119]" "f[139]" "f[149:152]" "f[156:157]" "f[179:181]" "f[184:186]" "f[196:198]" "f[211:215]" "f[219]" "f[227]" "f[249:253]" "f[264:266]" "f[275:280]" "f[282:283]" "f[311:313]" "f[325:332]" "f[350:352]" "f[363:369]" "f[379:382]" "f[392:393]" "f[405:406]" "f[409:410]" "f[422:424]" "f[431:435]" "f[440]" "f[448]" "f[455]" "f[457]" "f[462:466]" "f[469:470]" "f[472:473]" "f[476:493]" "f[505:506]" "f[508]" "f[510]" "f[513:516]" "f[529]" "f[547:548]" "f[555]" "f[559:560]" "f[570]" "f[574:579]" "f[582:583]" "f[591:592]" "f[597]" "f[605]" "f[623:624]" "f[632:637]" "f[640]" "f[644:645]" "f[652]" "f[657:660]" "f[669:670]" "f[673]" "f[678]" "f[681]" "f[685:689]" "f[692]" "f[694:695]" "f[697:698]" "f[700:701]" "f[704:708]" "f[711]" "f[715:716]" "f[733:735]" "f[739]" "f[742]" "f[744:746]" "f[748]" "f[752]" "f[754:755]" "f[760]" "f[763:765]" "f[767:768]" "f[772:774]" "f[776]" "f[783]" "f[786:787]" "f[794:795]" "f[797]" "f[809]" "f[811:814]" "f[818:820]" "f[847:848]" "f[850]" "f[853]" "f[857:859]" "f[861]" "f[874]" "f[878:881]" "f[884:886]" "f[890]" "f[893]" "f[896]" "f[899:903]" "f[906:909]" "f[919:922]" "f[926]" "f[928:929]" "f[931]" "f[936:938]" "f[940:942]" "f[945:946]" "f[952:954]" "f[960:962]" "f[966]" "f[969:970]" "f[978:979]" "f[986:993]" "f[1000:1004]" "f[1007]" "f[1009]" "f[1015:1017]" "f[1032:1034]" "f[1045]" "f[1051:1053]" "f[1059:1060]" "f[1064:1065]" "f[1070:1072]" "f[1082:1084]" "f[1086]" "f[1088:1089]" "f[1091:1095]" "f[1099]" "f[1101:1102]" "f[1110:1112]" "f[1116:1118]" "f[1123:1124]" "f[1137:1138]" "f[1146]" "f[1150]" "f[1152]" "f[1201]" "f[1207:1208]" "f[1224]" "f[1237:1238]" "f[1241]" "f[1243:1244]" "f[1249]" "f[1251]" "f[1272:1273]" "f[1280]" "f[1288]" "f[1294]" "f[1299:1306]" "f[1314]" "f[1318:1319]" "f[1335:1338]" "f[1361]" "f[1371:1372]" "f[1382:1384]" "f[1386:1387]" "f[1395]" "f[1412]" "f[1423:1434]" "f[1441:1448]" "f[1451:1452]" "f[1455:1457]" "f[1459:1460]" "f[1462:1463]" "f[1469]" "f[1473]" "f[1484:1485]" "f[1502:1503]" "f[1507]" "f[1516:1517]" "f[1519:1520]" "f[1525:1527]" "f[1546:1547]" "f[1549]" "f[1562]" "f[1565:1566]" "f[1579:1583]" "f[1592]" "f[1599]" "f[1601:1603]" "f[1605:1606]" "f[1608]" "f[1611:1612]" "f[1617]" "f[1632:1635]" "f[1638:1639]" "f[1645:1646]" "f[1651]" "f[1653]" "f[1657:1660]" "f[1664]" "f[1666]" "f[1672:1675]" "f[1683]" "f[1700:1703]" "f[1706:1707]" "f[1725:1726]" "f[1736]" "f[1742:1743]" "f[1750:1751]" "f[1755]" "f[1762:1763]" "f[1765]" "f[1767:1769]" "f[1771:1772]" "f[1781]" "f[1786:1791]" "f[1805]" "f[1818]" "f[1831:1832]" "f[1835:1840]" "f[1847:1848]" "f[1851:1852]" "f[1862]" "f[1865]" "f[1868]" "f[1871:1872]" "f[1877]" "f[1885:1887]" "f[1894]" "f[1900:1903]" "f[1918]" "f[1920:1921]" "f[1927:1930]" "f[1933:1936]" "f[1948]" "f[1950:1951]" "f[1961:1966]" "f[1978:1979]" "f[1983]" "f[1985:1986]" "f[1996:1998]" "f[2000:2005]" "f[2007]" "f[2009]" "f[2011:2016]" "f[2018]" "f[2020]" "f[2025]" "f[2034]" "f[2041:2043]" "f[2045:2048]" "f[2053]" "f[2055]" "f[2073]" "f[2077]" "f[2081:2083]" "f[2086]" "f[2088]" "f[2090]" "f[2134:2139]" "f[2162]" "f[2164]" "f[2166]" "f[2172]" "f[2174:2178]" "f[2185]" "f[2188]" "f[2192:2198]" "f[2203:2204]" "f[2207]" "f[2212]" "f[2216]" "f[2219:2220]" "f[2231]" "f[2238]" "f[2243:2249]" "f[2252]" "f[2258]" "f[2266]" "f[2269:2270]" "f[2286:2288]" "f[2295:2297]" "f[2315:2324]" "f[2326:2333]" "f[2335:2337]" "f[2351:2353]" "f[2359:2363]" "f[2369]" "f[2376:2378]" "f[2382]" "f[2384:2387]" "f[2411:2417]" "f[2420]" "f[2429:2430]" "f[2432:2433]" "f[2435]" "f[2442:2445]" "f[2448:2455]" "f[2459]" "f[2462:2463]" "f[2470]" "f[2483]" "f[2491:2493]" "f[2500:2507]" "f[2509:2515]" "f[2520:2524]" "f[2528:2532]" "f[2585]" "f[2587:2590]" "f[2592:2595]" "f[2599]" "f[2609:2612]" "f[2629:2630]" "f[2633]" "f[2678:2680]" "f[2684:2685]" "f[2687]" "f[2689:2691]" "f[2697:2701]" "f[2704:2705]" "f[2709:2710]" "f[2713:2716]" "f[2718:2719]" "f[2742:2745]" "f[2763]" "f[2770:2777]" "f[2792:2799]" "f[2823:2830]" "f[2832]" "f[2885:2886]" "f[2910:2916]" "f[2965:2980]" "f[3000:3010]" "f[3043:3044]" "f[3075:3081]" "f[3088]" "f[3101:3105]" "f[3135:3143]" "f[3179:3192]" "f[3222:3228]" "f[3254:3259]" "f[3285]" "f[3308:3317]" "f[3349]" "f[3357:3358]" "f[3367:3372]" "f[3375:3380]" "f[3391:3402]" "f[3411]" "f[3417:3426]" "f[3432:3440]" "f[3444]" "f[3456:3467]" "f[3483:3489]" "f[3491:3504]" "f[3515]" "f[3520:3521]" "f[3531]" "f[3548]" "f[3554]" "f[3560]" "f[3562]" "f[3568]" "f[3584]" "f[3586]" "f[3597]" "f[3602:3604]" "f[3607:3608]" "f[3610:3611]" "f[3613]" "f[3626:3627]" "f[3632:3633]" "f[3635:3639]" "f[3641]" "f[3646]" "f[3650:3652]" "f[3656]" "f[3662]" "f[3675]" "f[3677:3686]" "f[3692]" "f[3694]" "f[3696]" "f[3698]";
createNode objectSet -n "concrete_fracture1outside";
	rename -uid "9ED7F224-4593-A872-6F7F-E4A1A48D47BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "720D8594-49F2-CCB0-9E6F-3EAA297DB593";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C166D04B-462E-6802-6FDD-8CA29E7FA79D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 314 "f[0:11]" "f[13:48]" "f[51]" "f[55:56]" "f[60:63]" "f[72:76]" "f[79:81]" "f[92:101]" "f[114:118]" "f[124:126]" "f[129:130]" "f[134:138]" "f[146:148]" "f[153:154]" "f[158:163]" "f[171:178]" "f[182:183]" "f[193:195]" "f[199:200]" "f[204]" "f[218]" "f[222:226]" "f[228:229]" "f[232:233]" "f[240:245]" "f[254:255]" "f[258:263]" "f[273]" "f[289:299]" "f[316:324]" "f[343:349]" "f[358:361]" "f[372:378]" "f[383:384]" "f[388:391]" "f[401:404]" "f[418:421]" "f[426]" "f[442:444]" "f[449:450]" "f[718:731]" "f[738]" "f[761:762]" "f[766]" "f[769]" "f[789]" "f[806:808]" "f[810]" "f[822]" "f[824:846]" "f[849]" "f[851:852]" "f[855]" "f[863:870]" "f[872:873]" "f[875:877]" "f[887:889]" "f[891:892]" "f[897:898]" "f[910:911]" "f[917:918]" "f[923:924]" "f[927]" "f[930]" "f[934:935]" "f[939]" "f[943:944]" "f[950:951]" "f[955:959]" "f[972:975]" "f[994]" "f[998:999]" "f[1027:1028]" "f[1047:1049]" "f[1061:1063]" "f[1075]" "f[1080]" "f[1090]" "f[1097:1098]" "f[1100]" "f[1119]" "f[1139]" "f[1149]" "f[1153]" "f[1164]" "f[1167:1169]" "f[1174]" "f[1189:1190]" "f[1194]" "f[1198]" "f[1205:1206]" "f[1209:1218]" "f[1223]" "f[1230:1231]" "f[1235:1236]" "f[1252]" "f[1256:1257]" "f[1259]" "f[1261:1264]" "f[1268:1269]" "f[1289:1293]" "f[1308]" "f[1312:1313]" "f[1315:1317]" "f[1320:1322]" "f[1324]" "f[1334]" "f[1339:1340]" "f[1343]" "f[1345]" "f[1351]" "f[1362]" "f[1365]" "f[1373:1374]" "f[1379]" "f[1396:1397]" "f[1400:1403]" "f[1420:1421]" "f[1436]" "f[1458]" "f[1464]" "f[1467:1468]" "f[1470:1471]" "f[1480]" "f[1483]" "f[1491:1492]" "f[1497]" "f[1505:1506]" "f[1528:1530]" "f[1548]" "f[1563]" "f[1586:1587]" "f[1590]" "f[1594:1596]" "f[1613]" "f[1619:1622]" "f[1627:1628]" "f[1631]" "f[1636]" "f[1650]" "f[1655:1656]" "f[1665]" "f[1670]" "f[1684:1685]" "f[1687:1688]" "f[1693]" "f[1698]" "f[1709:1711]" "f[1722:1723]" "f[1734:1735]" "f[1737]" "f[1746:1748]" "f[1752:1754]" "f[1756:1757]" "f[1770]" "f[1776]" "f[1782:1784]" "f[1813]" "f[1816]" "f[1819]" "f[1828]" "f[1830]" "f[1833:1834]" "f[1854:1855]" "f[1860:1861]" "f[1864]" "f[1879]" "f[1889]" "f[1895:1896]" "f[1922:1926]" "f[1931:1932]" "f[1945]" "f[1967]" "f[1974:1977]" "f[1992:1993]" "f[2006]" "f[2008]" "f[2010]" "f[2019]" "f[2021:2023]" "f[2026]" "f[2035:2037]" "f[2039:2040]" "f[2049:2051]" "f[2064:2072]" "f[2075]" "f[2084]" "f[2093:2125]" "f[2129]" "f[2140]" "f[2145:2156]" "f[2163]" "f[2165]" "f[2167:2171]" "f[2173]" "f[2179:2181]" "f[2183:2184]" "f[2186]" "f[2205:2206]" "f[2208:2211]" "f[2221]" "f[2223]" "f[2235:2237]" "f[2250:2251]" "f[2262]" "f[2265]" "f[2279:2282]" "f[2298:2299]" "f[2325]" "f[2334]" "f[2338]" "f[2344:2345]" "f[2354:2356]" "f[2364]" "f[2366]" "f[2370]" "f[2374:2375]" "f[2408]" "f[2426]" "f[2428]" "f[2431]" "f[2438]" "f[2440]" "f[2456:2458]" "f[2461]" "f[2469]" "f[2471:2472]" "f[2480:2482]" "f[2484]" "f[2494:2495]" "f[2497:2499]" "f[2508]" "f[2525:2527]" "f[2535]" "f[2537:2539]" "f[2542:2584]" "f[2591]" "f[2596:2598]" "f[2600:2604]" "f[2606:2608]" "f[2622:2624]" "f[2636:2642]" "f[2648:2650]" "f[2652:2659]" "f[2661]" "f[2664:2677]" "f[2682:2683]" "f[2686]" "f[2688]" "f[2696]" "f[2711:2712]" "f[2733:2741]" "f[2746:2754]" "f[2778:2791]" "f[2806:2822]" "f[2837:2845]" "f[2853:2864]" "f[2871:2884]" "f[2894:2896]" "f[2899:2909]" "f[2917:2930]" "f[2944:2964]" "f[2988:2999]" "f[3024:3042]" "f[3055:3067]" "f[3069:3074]" "f[3089:3100]" "f[3110:3134]" "f[3155:3165]" "f[3167:3178]" "f[3200:3221]" "f[3237:3253]" "f[3269:3277]" "f[3294:3307]" "f[3323:3335]" "f[3352:3353]" "f[3408:3410]" "f[3447:3455]" "f[3516:3519]" "f[3522:3527]" "f[3530]" "f[3532:3541]" "f[3543:3547]" "f[3549:3552]" "f[3557:3559]" "f[3563:3566]" "f[3569:3570]" "f[3572:3574]" "f[3576:3578]" "f[3582:3583]" "f[3585]" "f[3587]" "f[3589:3590]" "f[3593:3596]" "f[3598]" "f[3600:3601]" "f[3605]" "f[3612]" "f[3616:3617]" "f[3619:3624]" "f[3628:3631]" "f[3642:3644]" "f[3647:3649]" "f[3654:3655]" "f[3657]" "f[3659:3660]" "f[3663:3667]" "f[3669:3672]" "f[3676]" "f[3687:3688]" "f[3690:3691]" "f[3697]" "f[3699]" "f[3701]";
createNode objectSet -n "inside";
	rename -uid "C79C4A5B-40AC-DD25-A3CA-169F92BAC8FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "82FEFFBE-4B07-7A50-2AE2-8695DCFA6800";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "0C8CC6D7-4015-4972-7D9F-42AEC21CF0B7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 313 "f[12]" "f[49:50]" "f[52:54]" "f[57:59]" "f[64:71]" "f[77:78]" "f[82:91]" "f[102:113]" "f[119:123]" "f[127:128]" "f[131:133]" "f[139:145]" "f[149:152]" "f[155:157]" "f[164:170]" "f[179:181]" "f[184:192]" "f[196:198]" "f[201:203]" "f[205:217]" "f[219:221]" "f[227]" "f[230:231]" "f[234:239]" "f[246:253]" "f[256:257]" "f[264:272]" "f[274:288]" "f[300:315]" "f[325:342]" "f[350:357]" "f[362:371]" "f[379:382]" "f[385:387]" "f[392:400]" "f[405:417]" "f[422:425]" "f[427:441]" "f[445:448]" "f[451:717]" "f[732:737]" "f[739:760]" "f[763:765]" "f[767:768]" "f[770:788]" "f[790:805]" "f[809]" "f[811:821]" "f[823]" "f[847:848]" "f[850]" "f[853:854]" "f[856:862]" "f[871]" "f[874]" "f[878:886]" "f[890]" "f[893:896]" "f[899:909]" "f[912:916]" "f[919:922]" "f[925:926]" "f[928:929]" "f[931:933]" "f[936:938]" "f[940:942]" "f[945:949]" "f[952:954]" "f[960:971]" "f[976:993]" "f[995:997]" "f[1000:1026]" "f[1029:1046]" "f[1050:1060]" "f[1064:1074]" "f[1076:1079]" "f[1081:1089]" "f[1091:1096]" "f[1099]" "f[1101:1118]" "f[1120:1138]" "f[1140:1148]" "f[1150:1152]" "f[1154:1163]" "f[1165:1166]" "f[1170:1173]" "f[1175:1188]" "f[1191:1193]" "f[1195:1197]" "f[1199:1204]" "f[1207:1208]" "f[1219:1222]" "f[1224:1229]" "f[1232:1234]" "f[1237:1251]" "f[1253:1255]" "f[1258]" "f[1260]" "f[1265:1267]" "f[1270:1288]" "f[1294:1307]" "f[1309:1311]" "f[1314]" "f[1318:1319]" "f[1323]" "f[1325:1333]" "f[1335:1338]" "f[1341:1342]" "f[1344]" "f[1346:1350]" "f[1352:1361]" "f[1363:1364]" "f[1366:1372]" "f[1375:1378]" "f[1380:1395]" "f[1398:1399]" "f[1404:1419]" "f[1422:1435]" "f[1437:1457]" "f[1459:1463]" "f[1465:1466]" "f[1469]" "f[1472:1479]" "f[1481:1482]" "f[1484:1490]" "f[1493:1496]" "f[1498:1504]" "f[1507:1527]" "f[1531:1547]" "f[1549:1562]" "f[1564:1585]" "f[1588:1589]" "f[1591:1593]" "f[1597:1612]" "f[1614:1618]" "f[1623:1626]" "f[1629:1630]" "f[1632:1635]" "f[1637:1649]" "f[1651:1654]" "f[1657:1664]" "f[1666:1669]" "f[1671:1683]" "f[1686]" "f[1689:1692]" "f[1694:1697]" "f[1699:1708]" "f[1712:1721]" "f[1724:1733]" "f[1736]" "f[1738:1745]" "f[1749:1751]" "f[1755]" "f[1758:1769]" "f[1771:1775]" "f[1777:1781]" "f[1785:1812]" "f[1814:1815]" "f[1817:1818]" "f[1820:1827]" "f[1829]" "f[1831:1832]" "f[1835:1853]" "f[1856:1859]" "f[1862:1863]" "f[1865:1878]" "f[1880:1888]" "f[1890:1894]" "f[1897:1921]" "f[1927:1930]" "f[1933:1944]" "f[1946:1966]" "f[1968:1973]" "f[1978:1991]" "f[1994:2005]" "f[2007]" "f[2009]" "f[2011:2018]" "f[2020]" "f[2024:2025]" "f[2027:2034]" "f[2038]" "f[2041:2048]" "f[2052:2063]" "f[2073:2074]" "f[2076:2083]" "f[2085:2092]" "f[2126:2128]" "f[2130:2139]" "f[2141:2144]" "f[2157:2162]" "f[2164]" "f[2166]" "f[2172]" "f[2174:2178]" "f[2182]" "f[2185]" "f[2187:2204]" "f[2207]" "f[2212:2220]" "f[2222]" "f[2224:2234]" "f[2238:2249]" "f[2252:2261]" "f[2263:2264]" "f[2266:2278]" "f[2283:2297]" "f[2300:2324]" "f[2326:2333]" "f[2335:2337]" "f[2339:2343]" "f[2346:2353]" "f[2357:2363]" "f[2365]" "f[2367:2369]" "f[2371:2373]" "f[2376:2407]" "f[2409:2425]" "f[2427]" "f[2429:2430]" "f[2432:2437]" "f[2439]" "f[2441:2455]" "f[2459:2460]" "f[2462:2468]" "f[2470]" "f[2473:2479]" "f[2483]" "f[2485:2493]" "f[2496]" "f[2500:2507]" "f[2509:2524]" "f[2528:2534]" "f[2536]" "f[2540:2541]" "f[2585:2590]" "f[2592:2595]" "f[2599]" "f[2605]" "f[2609:2621]" "f[2625:2635]" "f[2643:2647]" "f[2651]" "f[2660]" "f[2662:2663]" "f[2678:2681]" "f[2684:2685]" "f[2687]" "f[2689:2695]" "f[2697:2710]" "f[2713:2719]" "f[2742:2745]" "f[2755:2777]" "f[2792:2805]" "f[2823:2836]" "f[2846:2852]" "f[2865:2870]" "f[2885:2893]" "f[2897:2898]" "f[2910:2916]" "f[2931:2943]" "f[2965:2987]" "f[3000:3023]" "f[3043:3054]" "f[3068]" "f[3075:3088]" "f[3101:3109]" "f[3135:3154]" "f[3166]" "f[3179:3199]" "f[3222:3236]" "f[3254:3268]" "f[3278:3293]" "f[3308:3322]" "f[3336:3351]" "f[3354:3407]" "f[3411:3446]" "f[3456:3515]" "f[3520:3521]" "f[3528:3529]" "f[3531]" "f[3542]" "f[3548]" "f[3553:3556]" "f[3560:3562]" "f[3567:3568]" "f[3571]" "f[3575]" "f[3579:3581]" "f[3584]" "f[3586]" "f[3588]" "f[3591:3592]" "f[3597]" "f[3599]" "f[3602:3604]" "f[3606:3611]" "f[3613:3615]" "f[3618]" "f[3625:3627]" "f[3632:3641]" "f[3645:3646]" "f[3650:3653]" "f[3656]" "f[3658]" "f[3661:3662]" "f[3668]" "f[3673:3675]" "f[3677:3686]" "f[3689]" "f[3692:3696]" "f[3698]" "f[3700]";
createNode objectSet -n "outside";
	rename -uid "79D01BAC-40F6-3505-30E6-4ABAE7FF5874";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "84DF0FB3-44EE-D429-C088-42B9A212AB50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "D016E390-4375-59DE-C373-6080E7728E71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 314 "f[0:11]" "f[13:48]" "f[51]" "f[55:56]" "f[60:63]" "f[72:76]" "f[79:81]" "f[92:101]" "f[114:118]" "f[124:126]" "f[129:130]" "f[134:138]" "f[146:148]" "f[153:154]" "f[158:163]" "f[171:178]" "f[182:183]" "f[193:195]" "f[199:200]" "f[204]" "f[218]" "f[222:226]" "f[228:229]" "f[232:233]" "f[240:245]" "f[254:255]" "f[258:263]" "f[273]" "f[289:299]" "f[316:324]" "f[343:349]" "f[358:361]" "f[372:378]" "f[383:384]" "f[388:391]" "f[401:404]" "f[418:421]" "f[426]" "f[442:444]" "f[449:450]" "f[718:731]" "f[738]" "f[761:762]" "f[766]" "f[769]" "f[789]" "f[806:808]" "f[810]" "f[822]" "f[824:846]" "f[849]" "f[851:852]" "f[855]" "f[863:870]" "f[872:873]" "f[875:877]" "f[887:889]" "f[891:892]" "f[897:898]" "f[910:911]" "f[917:918]" "f[923:924]" "f[927]" "f[930]" "f[934:935]" "f[939]" "f[943:944]" "f[950:951]" "f[955:959]" "f[972:975]" "f[994]" "f[998:999]" "f[1027:1028]" "f[1047:1049]" "f[1061:1063]" "f[1075]" "f[1080]" "f[1090]" "f[1097:1098]" "f[1100]" "f[1119]" "f[1139]" "f[1149]" "f[1153]" "f[1164]" "f[1167:1169]" "f[1174]" "f[1189:1190]" "f[1194]" "f[1198]" "f[1205:1206]" "f[1209:1218]" "f[1223]" "f[1230:1231]" "f[1235:1236]" "f[1252]" "f[1256:1257]" "f[1259]" "f[1261:1264]" "f[1268:1269]" "f[1289:1293]" "f[1308]" "f[1312:1313]" "f[1315:1317]" "f[1320:1322]" "f[1324]" "f[1334]" "f[1339:1340]" "f[1343]" "f[1345]" "f[1351]" "f[1362]" "f[1365]" "f[1373:1374]" "f[1379]" "f[1396:1397]" "f[1400:1403]" "f[1420:1421]" "f[1436]" "f[1458]" "f[1464]" "f[1467:1468]" "f[1470:1471]" "f[1480]" "f[1483]" "f[1491:1492]" "f[1497]" "f[1505:1506]" "f[1528:1530]" "f[1548]" "f[1563]" "f[1586:1587]" "f[1590]" "f[1594:1596]" "f[1613]" "f[1619:1622]" "f[1627:1628]" "f[1631]" "f[1636]" "f[1650]" "f[1655:1656]" "f[1665]" "f[1670]" "f[1684:1685]" "f[1687:1688]" "f[1693]" "f[1698]" "f[1709:1711]" "f[1722:1723]" "f[1734:1735]" "f[1737]" "f[1746:1748]" "f[1752:1754]" "f[1756:1757]" "f[1770]" "f[1776]" "f[1782:1784]" "f[1813]" "f[1816]" "f[1819]" "f[1828]" "f[1830]" "f[1833:1834]" "f[1854:1855]" "f[1860:1861]" "f[1864]" "f[1879]" "f[1889]" "f[1895:1896]" "f[1922:1926]" "f[1931:1932]" "f[1945]" "f[1967]" "f[1974:1977]" "f[1992:1993]" "f[2006]" "f[2008]" "f[2010]" "f[2019]" "f[2021:2023]" "f[2026]" "f[2035:2037]" "f[2039:2040]" "f[2049:2051]" "f[2064:2072]" "f[2075]" "f[2084]" "f[2093:2125]" "f[2129]" "f[2140]" "f[2145:2156]" "f[2163]" "f[2165]" "f[2167:2171]" "f[2173]" "f[2179:2181]" "f[2183:2184]" "f[2186]" "f[2205:2206]" "f[2208:2211]" "f[2221]" "f[2223]" "f[2235:2237]" "f[2250:2251]" "f[2262]" "f[2265]" "f[2279:2282]" "f[2298:2299]" "f[2325]" "f[2334]" "f[2338]" "f[2344:2345]" "f[2354:2356]" "f[2364]" "f[2366]" "f[2370]" "f[2374:2375]" "f[2408]" "f[2426]" "f[2428]" "f[2431]" "f[2438]" "f[2440]" "f[2456:2458]" "f[2461]" "f[2469]" "f[2471:2472]" "f[2480:2482]" "f[2484]" "f[2494:2495]" "f[2497:2499]" "f[2508]" "f[2525:2527]" "f[2535]" "f[2537:2539]" "f[2542:2584]" "f[2591]" "f[2596:2598]" "f[2600:2604]" "f[2606:2608]" "f[2622:2624]" "f[2636:2642]" "f[2648:2650]" "f[2652:2659]" "f[2661]" "f[2664:2677]" "f[2682:2683]" "f[2686]" "f[2688]" "f[2696]" "f[2711:2712]" "f[2733:2741]" "f[2746:2754]" "f[2778:2791]" "f[2806:2822]" "f[2837:2845]" "f[2853:2864]" "f[2871:2884]" "f[2894:2896]" "f[2899:2909]" "f[2917:2930]" "f[2944:2964]" "f[2988:2999]" "f[3024:3042]" "f[3055:3067]" "f[3069:3074]" "f[3089:3100]" "f[3110:3134]" "f[3155:3165]" "f[3167:3178]" "f[3200:3221]" "f[3237:3253]" "f[3269:3277]" "f[3294:3307]" "f[3323:3335]" "f[3352:3353]" "f[3408:3410]" "f[3447:3455]" "f[3516:3519]" "f[3522:3527]" "f[3530]" "f[3532:3541]" "f[3543:3547]" "f[3549:3552]" "f[3557:3559]" "f[3563:3566]" "f[3569:3570]" "f[3572:3574]" "f[3576:3578]" "f[3582:3583]" "f[3585]" "f[3587]" "f[3589:3590]" "f[3593:3596]" "f[3598]" "f[3600:3601]" "f[3605]" "f[3612]" "f[3616:3617]" "f[3619:3624]" "f[3628:3631]" "f[3642:3644]" "f[3647:3649]" "f[3654:3655]" "f[3657]" "f[3659:3660]" "f[3663:3667]" "f[3669:3672]" "f[3676]" "f[3687:3688]" "f[3690:3691]" "f[3697]" "f[3699]" "f[3701]";
createNode objectSet -n "concrete_fracture2outside";
	rename -uid "DF4BF9D0-49ED-B989-2FE9-54BA9DC75D23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "CFD56896-49AD-7BE7-733E-02A9BEF807B9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "F2546222-4940-5CC1-18FA-32AFA6DF1D0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 422 "f[0:11]" "f[13:48]" "f[51:52]" "f[55:56]" "f[60:66]" "f[72:81]" "f[85:87]" "f[92:101]" "f[106:108]" "f[114:119]" "f[124:126]" "f[129:130]" "f[134:139]" "f[146:154]" "f[156:163]" "f[171:186]" "f[193:200]" "f[204]" "f[211:215]" "f[218:219]" "f[222:229]" "f[232:233]" "f[240:245]" "f[249:255]" "f[258:266]" "f[273]" "f[275:280]" "f[282:283]" "f[289:299]" "f[311:313]" "f[316:332]" "f[343:352]" "f[358:361]" "f[363:369]" "f[372:384]" "f[388:393]" "f[401:406]" "f[409:410]" "f[418:424]" "f[426]" "f[431:435]" "f[440]" "f[442:444]" "f[448:450]" "f[455]" "f[457]" "f[462:466]" "f[469:470]" "f[472:473]" "f[476:493]" "f[505:506]" "f[508]" "f[510]" "f[513:516]" "f[529]" "f[547:548]" "f[555]" "f[559:560]" "f[570]" "f[574:579]" "f[582:583]" "f[591:592]" "f[597]" "f[605]" "f[623:624]" "f[632:637]" "f[640]" "f[644:645]" "f[652]" "f[657:660]" "f[669:670]" "f[673]" "f[678]" "f[681]" "f[685:689]" "f[692]" "f[694:695]" "f[697:698]" "f[700:701]" "f[704:708]" "f[711]" "f[715:716]" "f[718:731]" "f[733:735]" "f[738:739]" "f[742]" "f[744:746]" "f[748]" "f[752]" "f[754:755]" "f[760:769]" "f[772:774]" "f[776]" "f[783]" "f[786:787]" "f[789]" "f[794:795]" "f[797]" "f[806:814]" "f[818:820]" "f[822]" "f[824:853]" "f[855]" "f[857:859]" "f[861]" "f[863:870]" "f[872:881]" "f[884:893]" "f[896:903]" "f[906:911]" "f[917:924]" "f[926:931]" "f[934:946]" "f[950:962]" "f[966]" "f[969:970]" "f[972:975]" "f[978:979]" "f[986:994]" "f[998:1004]" "f[1007]" "f[1009]" "f[1015:1017]" "f[1027:1028]" "f[1032:1034]" "f[1045]" "f[1047:1049]" "f[1051:1053]" "f[1059:1065]" "f[1070:1072]" "f[1075]" "f[1080]" "f[1082:1084]" "f[1086]" "f[1088:1095]" "f[1097:1102]" "f[1110:1112]" "f[1116:1119]" "f[1123:1124]" "f[1137:1139]" "f[1146]" "f[1149:1150]" "f[1152:1153]" "f[1164]" "f[1167:1169]" "f[1174]" "f[1189:1190]" "f[1194]" "f[1198]" "f[1201]" "f[1205:1218]" "f[1223:1224]" "f[1230:1231]" "f[1235:1238]" "f[1241]" "f[1243:1244]" "f[1249]" "f[1251:1252]" "f[1256:1257]" "f[1259]" "f[1261:1264]" "f[1268:1269]" "f[1272:1273]" "f[1280]" "f[1288:1294]" "f[1299:1306]" "f[1308]" "f[1312:1322]" "f[1324]" "f[1334:1340]" "f[1343]" "f[1345]" "f[1351]" "f[1361:1362]" "f[1365]" "f[1371:1374]" "f[1379]" "f[1382:1384]" "f[1386:1387]" "f[1395:1397]" "f[1400:1403]" "f[1412]" "f[1420:1421]" "f[1423:1434]" "f[1436]" "f[1441:1448]" "f[1451:1452]" "f[1455:1460]" "f[1462:1464]" "f[1467:1471]" "f[1473]" "f[1480]" "f[1483:1485]" "f[1491:1492]" "f[1497]" "f[1502:1503]" "f[1505:1507]" "f[1516:1517]" "f[1519:1520]" "f[1525:1530]" "f[1546:1549]" "f[1562:1563]" "f[1565:1566]" "f[1579:1583]" "f[1586:1587]" "f[1590]" "f[1592]" "f[1594:1596]" "f[1599]" "f[1601:1603]" "f[1605:1606]" "f[1608]" "f[1611:1613]" "f[1617]" "f[1619:1622]" "f[1627:1628]" "f[1631:1636]" "f[1638:1639]" "f[1645:1646]" "f[1650:1651]" "f[1653]" "f[1655:1660]" "f[1664:1666]" "f[1670]" "f[1672:1675]" "f[1683:1685]" "f[1687:1688]" "f[1693]" "f[1698]" "f[1700:1703]" "f[1706:1707]" "f[1709:1711]" "f[1722:1723]" "f[1725:1726]" "f[1734:1737]" "f[1742:1743]" "f[1746:1748]" "f[1750:1757]" "f[1762:1763]" "f[1765]" "f[1767:1772]" "f[1776]" "f[1781:1784]" "f[1786:1791]" "f[1805]" "f[1813]" "f[1816]" "f[1818:1819]" "f[1828]" "f[1830:1840]" "f[1847:1848]" "f[1851:1852]" "f[1854:1855]" "f[1860:1862]" "f[1864:1865]" "f[1868]" "f[1871:1872]" "f[1877]" "f[1879]" "f[1885:1887]" "f[1889]" "f[1894:1896]" "f[1900:1903]" "f[1918]" "f[1920:1936]" "f[1945]" "f[1948]" "f[1950:1951]" "f[1961:1967]" "f[1974:1979]" "f[1983]" "f[1985:1986]" "f[1992:1993]" "f[1996:1998]" "f[2000:2016]" "f[2018:2023]" "f[2025:2026]" "f[2034:2037]" "f[2039:2043]" "f[2045:2051]" "f[2053]" "f[2055]" "f[2064:2073]" "f[2075]" "f[2077]" "f[2081:2084]" "f[2086]" "f[2088]" "f[2090]" "f[2093:2125]" "f[2129]" "f[2134:2140]" "f[2145:2156]" "f[2162:2181]" "f[2183:2186]" "f[2188]" "f[2192:2198]" "f[2203:2212]" "f[2216]" "f[2219:2221]" "f[2223]" "f[2231]" "f[2235:2238]" "f[2243:2252]" "f[2258]" "f[2262]" "f[2265:2266]" "f[2269:2270]" "f[2279:2282]" "f[2286:2288]" "f[2295:2299]" "f[2315:2338]" "f[2344:2345]" "f[2351:2356]" "f[2359:2364]" "f[2366]" "f[2369:2370]" "f[2374:2378]" "f[2382]" "f[2384:2387]" "f[2408]" "f[2411:2417]" "f[2420]" "f[2426]" "f[2428:2433]" "f[2435]" "f[2438]" "f[2440]" "f[2442:2445]" "f[2448:2459]" "f[2461:2463]" "f[2469:2472]" "f[2480:2484]" "f[2491:2495]" "f[2497:2515]" "f[2520:2532]" "f[2535]" "f[2537:2539]" "f[2542:2585]" "f[2587:2604]" "f[2606:2612]" "f[2622:2624]" "f[2629:2630]" "f[2633]" "f[2636:2642]" "f[2648:2650]" "f[2652:2659]" "f[2661]" "f[2664:2680]" "f[2682:2691]" "f[2696:2701]" "f[2704:2705]" "f[2709:2716]" "f[2718:2719]" "f[2733:2754]" "f[2763]" "f[2770:2799]" "f[2806:2830]" "f[2832]" "f[2837:2845]" "f[2853:2864]" "f[2871:2886]" "f[2894:2896]" "f[2899:2930]" "f[2944:2980]" "f[2988:3010]" "f[3024:3044]" "f[3055:3067]" "f[3069:3081]" "f[3088:3105]" "f[3110:3143]" "f[3155:3165]" "f[3167:3192]" "f[3200:3228]" "f[3237:3259]" "f[3269:3277]" "f[3285]" "f[3294:3317]" "f[3323:3335]" "f[3349]" "f[3352:3353]" "f[3357:3358]" "f[3367:3372]" "f[3375:3380]" "f[3391:3402]" "f[3408:3411]" "f[3417:3426]" "f[3432:3440]" "f[3444]" "f[3447:3467]" "f[3483:3489]" "f[3491:3504]" "f[3515:3527]" "f[3530:3541]" "f[3543:3552]" "f[3554]" "f[3557:3560]" "f[3562:3566]" "f[3568:3570]" "f[3572:3574]" "f[3576:3578]" "f[3582:3587]" "f[3589:3590]" "f[3593:3598]" "f[3600:3605]" "f[3607:3608]" "f[3610:3613]" "f[3616:3617]" "f[3619:3624]" "f[3626:3633]" "f[3635:3639]" "f[3641:3644]" "f[3646:3652]" "f[3654:3657]" "f[3659:3660]" "f[3662:3667]" "f[3669:3672]" "f[3675:3688]" "f[3690:3692]" "f[3694]" "f[3696:3699]" "f[3701]";
createNode projection -n "projection6";
	rename -uid "1CEFB972-4923-0873-634F-2EAFB37B05DA";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode projection -n "projection7";
	rename -uid "75FBECC1-472C-96F2-817E-AD99D9475FB9";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode projection -n "projection8";
	rename -uid "2DD2FC20-4C9B-74C4-AB59-F2B4C31A02FC";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode projection -n "projection9";
	rename -uid "181C2147-49A9-A03B-4165-9692A89D337C";
	setAttr ".t" 6;
	setAttr ".vt1" -type "float2" 0.5 0.5 ;
	setAttr ".vt2" -type "float2" 0.5 0.5 ;
	setAttr ".vt3" -type "float2" 0.5 0.5 ;
createNode projection -n "projection10";
	rename -uid "66148772-4BF2-79C5-14ED-469265C37062";
	setAttr ".ua" 180.00000500895632;
	setAttr ".va" 90.000002504478161;
	setAttr ".t" 2;
createNode substanceNode -n "substanceNode4";
	rename -uid "0A88CD94-4AF0-D7DD-C633-E29E5A0E050E";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_bark_color" -ln "input_bark_color" 
		-nn "Bark Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_bark_colorr" -ln "input_bark_colorR" 
		-dv 0.45098000764846802 -smn 0 -smx 0 -at "float" -p "input_bark_color";
	addAttr -r false -ci true -h true -k true -sn "input_bark_colorg" -ln "input_bark_colorG" 
		-dv 0.30196100473403931 -smn 0 -smx 0 -at "float" -p "input_bark_color";
	addAttr -r false -ci true -h true -k true -sn "input_bark_colorb" -ln "input_bark_colorB" 
		-dv 0.20392200350761414 -smn 0 -smx 0 -at "float" -p "input_bark_color";
	addAttr -r false -ci true -h true -k true -sn "input_bark_color_variation" -ln "input_bark_color_variation" 
		-nn "Bark Color Variation" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_bark_roughness" -ln "input_bark_roughness" 
		-nn "Bark Roughness" -ct "substance_input" -dv 0.64999997615814209 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_bark_density" -ln "input_bark_density" 
		-nn "Bark Density" -ct "substance_input" -dv 0.47999998927116394 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_missing_part_density" -ln "input_missing_part_density" 
		-nn "Missing Part Density" -ct "substance_input" -dv 0.090000003576278687 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".outputsize" -type "long2" 10 10 ;
	setAttr ".sbs" -type "string" "C:/Users/bryce/OneDrive/Substance/wood_bark.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://wood_bark\" label=\"Wet Wood Bark\" >\n  <presetinput identifier=\"bark_color\" uid=\"3046716794\" type=\"2\" value=\"0.36,0.264457,0.2016\" />\n  <presetinput identifier=\"bark_color_variation\" uid=\"3046435878\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"bark_roughness\" uid=\"3046716786\" type=\"0\" value=\"0.26\" />\n  <presetinput identifier=\"bark_density\" uid=\"3046435238\" type=\"0\" value=\"0.48\" />\n  <presetinput identifier=\"missing_part_density\" uid=\"3047056366\" type=\"0\" value=\"0.64\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2857952661\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2767576511\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2767576508\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2857952682\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2857952683\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2767576496\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2767576497\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2767576503\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2937492178\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3721348272\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2722794898\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3721348290\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3721348261\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3721313233\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2783885296\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_position\" uid=\"2783885185\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2948443003\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://wood_bark\" label=\"Long Wood Bark\" >\n  <presetinput identifier=\"bark_color\" uid=\"3046716794\" type=\"2\" value=\"0.45,0.330572,0.252\" />\n  <presetinput identifier=\"bark_color_variation\" uid=\"3046435878\" type=\"0\" value=\"0.53\" />\n  <presetinput identifier=\"bark_roughness\" uid=\"3046716786\" type=\"0\" value=\"0.65\" />\n  <presetinput identifier=\"bark_density\" uid=\"3046435238\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"missing_part_density\" uid=\"3047056366\" type=\"0\" value=\"0.39\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2857952661\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2767576511\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2767576508\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2857952682\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2857952683\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2767576496\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2767576497\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2767576503\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2937492178\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3721348272\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2722794898\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3721348290\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3721348261\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3721313233\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2783885296\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_position\" uid=\"2783885185\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2948443003\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://wood_bark\" label=\"Small Wood Bark\" >\n  <presetinput identifier=\"bark_color\" uid=\"3046716794\" type=\"2\" value=\"0.45,0.31428,0.216\" />\n  <presetinput identifier=\"bark_color_variation\" uid=\"3046435878\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"bark_roughness\" uid=\"3046716786\" type=\"0\" value=\"0.65\" />\n  <presetinput identifier=\"bark_density\" uid=\"3046435238\" type=\"0\" value=\"0.97\" />\n  <presetinput identifier=\"missing_part_density\" uid=\"3047056366\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2857952661\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2767576511\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2767576508\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2857952682\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2857952683\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2767576496\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2767576497\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2767576503\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2937492178\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3721348272\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2722794898\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3721348290\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3721348261\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3721313233\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"\" uid=\"1186040406\" type=\"65535\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2783885296\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_position\" uid=\"2783885185\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2948443003\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture7";
	rename -uid "8B1ED63F-4724-12DE-9B8B-E591CE990E5F";
createNode substanceOutputNode -n "Wood_Bark_basecolor";
	rename -uid "D6499B7E-4486-3848-D591-94AB46901965";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_basecolor.png";
createNode file -n "file17";
	rename -uid "81729EEC-4F6F-6ADB-34AE-0D9A229C0654";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Wood_Bark_ambientocclusion";
	rename -uid "6A0B9366-4C0B-EAD5-F9B6-D4A3E7E56A5F";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_ambientocclusion.exr";
createNode file -n "file18";
	rename -uid "913B1F0E-4459-6BEA-CA44-CE8B0FB78683";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Wood_Bark_metallic";
	rename -uid "6A671AF7-473C-C5CD-A470-A0A964867DAF";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_metallic.png";
createNode file -n "file19";
	rename -uid "60940B6F-46B6-2B98-E556-80BF54B7999A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Wood_Bark_normal";
	rename -uid "3780C759-441B-5B03-CC0F-3C8E6F2A8E16";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_normal.exr";
createNode file -n "file20";
	rename -uid "482082AB-4A42-D613-AC37-7B8F7AC478D0";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Wood_Bark_height";
	rename -uid "88368096-48F1-1E48-BA57-A280BB71EE3F";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_height.exr";
createNode file -n "file21";
	rename -uid "C2B1B926-45DC-7314-CFE6-068040116E5D";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Wood_Bark_roughness";
	rename -uid "8EE91285-4A04-F3F4-9B4A-B2897AAA0605";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Wood_Bark_roughness.png";
createNode file -n "file22";
	rename -uid "DC5CA8D1-4284-BBA8-0CF4-30BEA1DEC43C";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "3E68CB02-4D07-DA43-56AB-1BABE0C71045";
createNode aiStandardSurface -n "wood";
	rename -uid "F9480467-4DFC-B19A-9092-D8AC392567D6";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set4";
	rename -uid "55768BFF-4811-90CC-53FA-A3B870A4FF9A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo6";
	rename -uid "0191AEDC-43A0-FBBF-A0C4-9FA9D6DA2721";
createNode bump2d -n "bump2d4";
	rename -uid "77FF5D67-4629-40C9-FC4F-16ADC2936A0B";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader4";
	rename -uid "A69F484F-4D47-3876-8EB5-589D91546DCA";
createNode substanceNode -n "substanceNode5";
	rename -uid "7A720C28-4B43-2700-F293-83B3C3842375";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_travertine_color" -ln "input_travertine_color" 
		-nn "Travertine Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_travertine_colorr" -ln "input_travertine_colorR" 
		-dv 0.92549002170562744 -smn 0 -smx 0 -at "float" -p "input_travertine_color";
	addAttr -r false -ci true -h true -k true -sn "input_travertine_colorg" -ln "input_travertine_colorG" 
		-dv 0.82745099067687988 -smn 0 -smx 0 -at "float" -p "input_travertine_color";
	addAttr -r false -ci true -h true -k true -sn "input_travertine_colorb" -ln "input_travertine_colorB" 
		-dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_travertine_color";
	addAttr -r false -ci true -h true -k true -sn "input_travertine_roughness" -ln "input_travertine_roughness" 
		-nn "Travertine Roughness" -ct "substance_input" -dv 0.18000000715255737 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_travertine_color_variation_type" 
		-ln "input_travertine_color_variation_type" -nn "Travertine Color Variation Type" 
		-ct "substance_input" -dv 1 -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_travertine_color_variation_density" 
		-ln "input_travertine_color_variation_density" -nn "Travertine Color Variation Density" 
		-ct "substance_input" -dv 0.31999999284744263 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_holes_density" -ln "input_holes_density" 
		-nn "Holes Density" -ct "substance_input" -dv 0.56000000238418579 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_holes_scale" -ln "input_holes_scale" 
		-nn "Holes Scale" -ct "substance_input" -dv 0.34000000357627869 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_holes_deformation_intensity" 
		-ln "input_holes_deformation_intensity" -nn "Holes Deformation Intensity" -ct "substance_input" 
		-dv 0.41999998688697815 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".outputsize" -type "long2" 10 10 ;
	setAttr ".sbs" -type "string" "C:/Users/bryce/OneDrive/Substance/stone_travertine.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://stone_travertine\" label=\"Ancient Silver Travertine\" >\n  <presetinput identifier=\"travertine_color\" uid=\"4013715793\" type=\"2\" value=\"0.847059,0.835294,0.815686\" />\n  <presetinput identifier=\"travertine_roughness\" uid=\"4013715779\" type=\"0\" value=\"0.41\" />\n  <presetinput identifier=\"travertine_color_variation_type\" uid=\"4011778656\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"travertine_color_variation_density\" uid=\"4013715843\" type=\"0\" value=\"0.32\" />\n  <presetinput identifier=\"holes_density\" uid=\"4013716917\" type=\"0\" value=\"0.7\" />\n  <presetinput identifier=\"holes_scale\" uid=\"4013694846\" type=\"0\" value=\"0.74\" />\n  <presetinput identifier=\"holes_deformation_intensity\" uid=\"4013715926\" type=\"0\" value=\"0.42\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"4041261155\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"4266522697\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"4266522698\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"4041261148\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"4041261149\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"4266522694\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"4266522695\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"4266522689\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"4121868068\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2272747846\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"4176652388\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2272747828\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2272747859\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2272697895\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"4283863558\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"4283863671\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"4110782093\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stone_travertine\" label=\"Chocolate Vein Cut Travertine\" >\n  <presetinput identifier=\"travertine_color\" uid=\"4013715793\" type=\"2\" value=\"0.603922,0.54902,0.486275\" />\n  <presetinput identifier=\"travertine_roughness\" uid=\"4013715779\" type=\"0\" value=\"0.09\" />\n  <presetinput identifier=\"travertine_color_variation_type\" uid=\"4011778656\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"travertine_color_variation_density\" uid=\"4013715843\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"holes_density\" uid=\"4013716917\" type=\"0\" value=\"0.24\" />\n  <presetinput identifier=\"holes_scale\" uid=\"4013694846\" type=\"0\" value=\"0.76\" />\n  <presetinput identifier=\"holes_deformation_intensity\" uid=\"4013715926\" type=\"0\" value=\"0.82\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"4041261155\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"4266522697\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"4266522698\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"4041261148\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"4041261149\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"4266522694\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"4266522695\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"4266522689\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"4121868068\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2272747846\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"4176652388\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2272747828\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2272747859\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2272697895\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"4283863558\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"4283863671\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"4110782093\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stone_travertine\" label=\"Minimal White Travertine\" >\n  <presetinput identifier=\"travertine_color\" uid=\"4013715793\" type=\"2\" value=\"0.862069,0.822615,0.761242\" />\n  <presetinput identifier=\"travertine_roughness\" uid=\"4013715779\" type=\"0\" value=\"0.09\" />\n  <presetinput identifier=\"travertine_color_variation_type\" uid=\"4011778656\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"travertine_color_variation_density\" uid=\"4013715843\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"holes_density\" uid=\"4013716917\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"holes_scale\" uid=\"4013694846\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"holes_deformation_intensity\" uid=\"4013715926\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"4041261155\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"4266522697\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"4266522698\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"4041261148\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"4041261149\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"4266522694\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"4266522695\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"4266522689\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"4121868068\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2272747846\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"4176652388\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2272747828\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2272747859\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2272697895\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_range\" uid=\"4283863558\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"4283863671\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"4110782093\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture8";
	rename -uid "3BFAC5A5-461D-058A-F29C-51BC22414D50";
createNode substanceOutputNode -n "Stone_Travertine_basecolor";
	rename -uid "B1DE1640-4308-6AC1-D361-669F42350E24";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_basecolor.png";
createNode file -n "file23";
	rename -uid "21417D31-4833-4E2E-1130-5BBEC9DEE85C";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stone_Travertine_ambientocclusion";
	rename -uid "6592FE02-4004-D35A-91EA-D0A273A9ED5E";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_ambientocclusion.exr";
createNode file -n "file24";
	rename -uid "2E934368-48D4-73A9-318A-62A064FAE6F2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stone_Travertine_metallic";
	rename -uid "EDA30A6E-4844-E8A6-AB42-5DB1B71808E7";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_metallic.png";
createNode file -n "file25";
	rename -uid "0F105F1E-4809-2E23-BA3D-16B0FE92DDD5";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stone_Travertine_normal";
	rename -uid "29D1D6EA-4DE8-2342-3986-3A954DED9B21";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_normal.exr";
createNode file -n "file26";
	rename -uid "9CBB4150-46E3-3FFB-4548-B7B1C318AA13";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stone_Travertine_height";
	rename -uid "F5E17605-4782-62F1-CB58-2AAE3251E9E3";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_height.exr";
createNode file -n "file27";
	rename -uid "2EF2B90C-4D46-9742-D7E8-72AAD4818CB2";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stone_Travertine_roughness";
	rename -uid "EB5E0192-4262-0F6F-296B-BBBEDF9222F2";
	setAttr ".os" -type "long2" 1024 1024 ;
	setAttr ".cpth" -type "string" "C:/Users/bryce/Documents/maya\\2024\\substance/baked_images/Stone_Travertine_roughness.png";
createNode file -n "file28";
	rename -uid "032674E7-4E99-CF8B-D30F-9896169003F3";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide5";
	rename -uid "E5DF5B8F-469D-B039-668D-FF801C142579";
createNode aiStandardSurface -n "stone1";
	rename -uid "9B66A318-44D2-9F9E-0C4C-4598A9F0D6D3";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set5";
	rename -uid "B04BA780-4431-73B8-7518-4A8BE52F5C50";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
createNode materialInfo -n "materialInfo7";
	rename -uid "8897A20F-479E-E396-51DD-8F99F3804FC1";
createNode bump2d -n "bump2d5";
	rename -uid "08A1CF24-4282-A408-B970-CE8CD2577363";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader5";
	rename -uid "179C8857-44B2-FCEB-A5DB-AC8F0F06100B";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "56B68B2F-4F24-3CCD-BFCB-B58682BFB2BF";
	setAttr -s 5 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "SAND";
	setAttr ".tgi[0].vl" -type "double2" -463.09521969348748 -896.46457774598139 ;
	setAttr ".tgi[0].vh" -type "double2" 838.09520479232674 430.98840576615203 ;
	setAttr -s 24 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 144.28572082519531;
	setAttr ".tgi[0].ni[0].y" -368.57144165039062;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" 761.4285888671875;
	setAttr ".tgi[0].ni[1].y" -518.5714111328125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -161.42857360839844;
	setAttr ".tgi[0].ni[2].y" -295.71429443359375;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 144.28572082519531;
	setAttr ".tgi[0].ni[3].y" -838.5714111328125;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" 451.42855834960938;
	setAttr ".tgi[0].ni[4].y" -805.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 144.28572082519531;
	setAttr ".tgi[0].ni[5].y" 407.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 451.42855834960938;
	setAttr ".tgi[0].ni[6].y" 437.14285278320312;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 451.42855834960938;
	setAttr ".tgi[0].ni[7].y" 284.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 761.4285888671875;
	setAttr ".tgi[0].ni[8].y" 354.28570556640625;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 144.28572082519531;
	setAttr ".tgi[0].ni[9].y" 231.42857360839844;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 1068.5714111328125;
	setAttr ".tgi[0].ni[10].y" -441.42855834960938;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 451.42855834960938;
	setAttr ".tgi[0].ni[11].y" 74.285713195800781;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 1068.5714111328125;
	setAttr ".tgi[0].ni[12].y" 252.85714721679688;
	setAttr ".tgi[0].ni[12].nvs" 2387;
	setAttr ".tgi[0].ni[13].x" 451.42855834960938;
	setAttr ".tgi[0].ni[13].y" -174.28572082519531;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 144.28572082519531;
	setAttr ".tgi[0].ni[14].y" 582.85711669921875;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 761.4285888671875;
	setAttr ".tgi[0].ni[15].y" 25.714284896850586;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 1417.142822265625;
	setAttr ".tgi[0].ni[16].y" -78.571426391601562;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -781.4285888671875;
	setAttr ".tgi[0].ni[17].y" -327.14285278320312;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" -162.85714721679688;
	setAttr ".tgi[0].ni[18].y" 491.42855834960938;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" -162.85714721679688;
	setAttr ".tgi[0].ni[19].y" 961.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 144.28572082519531;
	setAttr ".tgi[0].ni[20].y" 101.42857360839844;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 761.4285888671875;
	setAttr ".tgi[0].ni[21].y" 178.57142639160156;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 761.4285888671875;
	setAttr ".tgi[0].ni[22].y" -127.14286041259766;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -474.28570556640625;
	setAttr ".tgi[0].ni[23].y" 111.42857360839844;
	setAttr ".tgi[0].ni[23].nvs" 1970;
	setAttr ".tgi[1].tn" -type "string" "Bridge";
	setAttr ".tgi[1].vl" -type "double2" -1667.857076582457 -1646.5497379795938 ;
	setAttr ".tgi[1].vh" -type "double2" 172.61904075978336 231.07360374937102 ;
	setAttr -s 20 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 862.85711669921875;
	setAttr ".tgi[1].ni[0].y" -82.857139587402344;
	setAttr ".tgi[1].ni[0].nvs" 2387;
	setAttr ".tgi[1].ni[1].x" -132.85714721679688;
	setAttr ".tgi[1].ni[1].y" -1244.2857666015625;
	setAttr ".tgi[1].ni[1].nvs" 1922;
	setAttr ".tgi[1].ni[2].x" -132.85714721679688;
	setAttr ".tgi[1].ni[2].y" -227.14285278320312;
	setAttr ".tgi[1].ni[2].nvs" 1922;
	setAttr ".tgi[1].ni[3].x" -785.71429443359375;
	setAttr ".tgi[1].ni[3].y" -367.14285278320312;
	setAttr ".tgi[1].ni[3].nvs" 1970;
	setAttr ".tgi[1].ni[4].x" 232.85714721679688;
	setAttr ".tgi[1].ni[4].y" -1190;
	setAttr ".tgi[1].ni[4].nvs" 1923;
	setAttr ".tgi[1].ni[5].x" -132.85714721679688;
	setAttr ".tgi[1].ni[5].y" 78.571426391601562;
	setAttr ".tgi[1].ni[5].nvs" 1923;
	setAttr ".tgi[1].ni[6].x" -132.85714721679688;
	setAttr ".tgi[1].ni[6].y" 254.28572082519531;
	setAttr ".tgi[1].ni[6].nvs" 1923;
	setAttr ".tgi[1].ni[7].x" -1092.857177734375;
	setAttr ".tgi[1].ni[7].y" -517.14288330078125;
	setAttr ".tgi[1].ni[7].nvs" 1923;
	setAttr ".tgi[1].ni[8].x" -132.85714721679688;
	setAttr ".tgi[1].ni[8].y" 442.85714721679688;
	setAttr ".tgi[1].ni[8].nvs" 1923;
	setAttr ".tgi[1].ni[9].x" 555.71429443359375;
	setAttr ".tgi[1].ni[9].y" 48.571430206298828;
	setAttr ".tgi[1].ni[9].nvs" 1923;
	setAttr ".tgi[1].ni[10].x" 862.85711669921875;
	setAttr ".tgi[1].ni[10].y" -785.71429443359375;
	setAttr ".tgi[1].ni[10].nvs" 1923;
	setAttr ".tgi[1].ni[11].x" 555.71429443359375;
	setAttr ".tgi[1].ni[11].y" -164.28572082519531;
	setAttr ".tgi[1].ni[11].nvs" 1923;
	setAttr ".tgi[1].ni[12].x" 1211.4285888671875;
	setAttr ".tgi[1].ni[12].y" -407.14285278320312;
	setAttr ".tgi[1].ni[12].nvs" 1923;
	setAttr ".tgi[1].ni[13].x" -474.28570556640625;
	setAttr ".tgi[1].ni[13].y" 881.4285888671875;
	setAttr ".tgi[1].ni[13].nvs" 1922;
	setAttr ".tgi[1].ni[14].x" 232.85714721679688;
	setAttr ".tgi[1].ni[14].y" -507.14285278320312;
	setAttr ".tgi[1].ni[14].nvs" 1923;
	setAttr ".tgi[1].ni[15].x" -474.28570556640625;
	setAttr ".tgi[1].ni[15].y" -57.378768920898438;
	setAttr ".tgi[1].ni[15].nvs" 1922;
	setAttr ".tgi[1].ni[16].x" -132.85714721679688;
	setAttr ".tgi[1].ni[16].y" -697.14288330078125;
	setAttr ".tgi[1].ni[16].nvs" 1922;
	setAttr ".tgi[1].ni[17].x" 232.85714721679688;
	setAttr ".tgi[1].ni[17].y" -252.85714721679688;
	setAttr ".tgi[1].ni[17].nvs" 1923;
	setAttr ".tgi[1].ni[18].x" -474.28570556640625;
	setAttr ".tgi[1].ni[18].y" 411.42855834960938;
	setAttr ".tgi[1].ni[18].nvs" 1922;
	setAttr ".tgi[1].ni[19].x" 335.71429443359375;
	setAttr ".tgi[1].ni[19].y" -60;
	setAttr ".tgi[1].ni[19].nvs" 1923;
	setAttr ".tgi[2].tn" -type "string" "OrganicThing";
	setAttr ".tgi[2].vl" -type "double2" -1026.4984513107602 -189.24087557787752 ;
	setAttr ".tgi[2].vh" -type "double2" -377.11361703314424 473.25080856589216 ;
	setAttr -s 23 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -1280;
	setAttr ".tgi[2].ni[0].y" 187.14285278320312;
	setAttr ".tgi[2].ni[0].nvs" 1922;
	setAttr ".tgi[2].ni[1].x" -345.71429443359375;
	setAttr ".tgi[2].ni[1].y" 438.57144165039062;
	setAttr ".tgi[2].ni[1].nvs" 1923;
	setAttr ".tgi[2].ni[2].x" -658.5714111328125;
	setAttr ".tgi[2].ni[2].y" 807.14288330078125;
	setAttr ".tgi[2].ni[2].nvs" 1923;
	setAttr ".tgi[2].ni[3].x" -972.85711669921875;
	setAttr ".tgi[2].ni[3].y" -405.71429443359375;
	setAttr ".tgi[2].ni[3].nvs" 1922;
	setAttr ".tgi[2].ni[4].x" -38.571430206298828;
	setAttr ".tgi[2].ni[4].y" 778.5714111328125;
	setAttr ".tgi[2].ni[4].nvs" 1923;
	setAttr ".tgi[2].ni[5].x" -972.85711669921875;
	setAttr ".tgi[2].ni[5].y" 1008.5714111328125;
	setAttr ".tgi[2].ni[5].nvs" 1922;
	setAttr ".tgi[2].ni[6].x" -658.5714111328125;
	setAttr ".tgi[2].ni[6].y" 268.57144165039062;
	setAttr ".tgi[2].ni[6].nvs" 1923;
	setAttr ".tgi[2].ni[7].x" 310;
	setAttr ".tgi[2].ni[7].y" 712.85711669921875;
	setAttr ".tgi[2].ni[7].nvs" 1923;
	setAttr ".tgi[2].ni[8].x" -658.5714111328125;
	setAttr ".tgi[2].ni[8].y" -205.71427917480469;
	setAttr ".tgi[2].ni[8].nvs" 1923;
	setAttr ".tgi[2].ni[9].x" -658.5714111328125;
	setAttr ".tgi[2].ni[9].y" 478.57144165039062;
	setAttr ".tgi[2].ni[9].nvs" 1923;
	setAttr ".tgi[2].ni[10].x" -345.71429443359375;
	setAttr ".tgi[2].ni[10].y" 285.71429443359375;
	setAttr ".tgi[2].ni[10].nvs" 1923;
	setAttr ".tgi[2].ni[11].x" -345.71429443359375;
	setAttr ".tgi[2].ni[11].y" 132.85714721679688;
	setAttr ".tgi[2].ni[11].nvs" 1923;
	setAttr ".tgi[2].ni[12].x" -972.85711669921875;
	setAttr ".tgi[2].ni[12].y" 398.57144165039062;
	setAttr ".tgi[2].ni[12].nvs" 1923;
	setAttr ".tgi[2].ni[13].x" -658.5714111328125;
	setAttr ".tgi[2].ni[13].y" 631.4285888671875;
	setAttr ".tgi[2].ni[13].nvs" 1923;
	setAttr ".tgi[2].ni[14].x" -38.571430206298828;
	setAttr ".tgi[2].ni[14].y" 602.85711669921875;
	setAttr ".tgi[2].ni[14].nvs" 2387;
	setAttr ".tgi[2].ni[15].x" -972.85711669921875;
	setAttr ".tgi[2].ni[15].y" 7.1428570747375488;
	setAttr ".tgi[2].ni[15].nvs" 1922;
	setAttr ".tgi[2].ni[16].x" -1591.4285888671875;
	setAttr ".tgi[2].ni[16].y" 451.42855834960938;
	setAttr ".tgi[2].ni[16].nvs" 1970;
	setAttr ".tgi[2].ni[17].x" -1280;
	setAttr ".tgi[2].ni[17].y" 657.14288330078125;
	setAttr ".tgi[2].ni[17].nvs" 1922;
	setAttr ".tgi[2].ni[18].x" -972.85711669921875;
	setAttr ".tgi[2].ni[18].y" 240;
	setAttr ".tgi[2].ni[18].nvs" 1923;
	setAttr ".tgi[2].ni[19].x" -972.85711669921875;
	setAttr ".tgi[2].ni[19].y" 574.28570556640625;
	setAttr ".tgi[2].ni[19].nvs" 1923;
	setAttr ".tgi[2].ni[20].x" -1898.5714111328125;
	setAttr ".tgi[2].ni[20].y" 231.42857360839844;
	setAttr ".tgi[2].ni[20].nvs" 1923;
	setAttr ".tgi[2].ni[21].x" -345.71429443359375;
	setAttr ".tgi[2].ni[21].y" 614.28570556640625;
	setAttr ".tgi[2].ni[21].nvs" 1923;
	setAttr ".tgi[2].ni[22].x" -345.71429443359375;
	setAttr ".tgi[2].ni[22].y" 801.4285888671875;
	setAttr ".tgi[2].ni[22].nvs" 1923;
	setAttr ".tgi[3].tn" -type "string" "treeThing";
	setAttr ".tgi[3].vl" -type "double2" -323.80951094248991 -330.95236780151544 ;
	setAttr ".tgi[3].vh" -type "double2" 324.99998708566085 330.95236780151544 ;
	setAttr -s 19 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 878.5714111328125;
	setAttr ".tgi[3].ni[0].y" -525.71429443359375;
	setAttr ".tgi[3].ni[0].nvs" 1923;
	setAttr ".tgi[3].ni[1].x" -122.85713958740234;
	setAttr ".tgi[3].ni[1].y" -988.5714111328125;
	setAttr ".tgi[3].ni[1].nvs" 1922;
	setAttr ".tgi[3].ni[2].x" -1062.857177734375;
	setAttr ".tgi[3].ni[2].y" -212.85714721679688;
	setAttr ".tgi[3].ni[2].nvs" 1923;
	setAttr ".tgi[3].ni[3].x" 222.85714721679688;
	setAttr ".tgi[3].ni[3].y" 122.85713958740234;
	setAttr ".tgi[3].ni[3].nvs" 1923;
	setAttr ".tgi[3].ni[4].x" 222.85714721679688;
	setAttr ".tgi[3].ni[4].y" -530;
	setAttr ".tgi[3].ni[4].nvs" 1923;
	setAttr ".tgi[3].ni[5].x" -444.28570556640625;
	setAttr ".tgi[3].ni[5].y" 840;
	setAttr ".tgi[3].ni[5].nvs" 1922;
	setAttr ".tgi[3].ni[6].x" -444.28570556640625;
	setAttr ".tgi[3].ni[6].y" 370;
	setAttr ".tgi[3].ni[6].nvs" 1922;
	setAttr ".tgi[3].ni[7].x" 222.85714721679688;
	setAttr ".tgi[3].ni[7].y" -354.28570556640625;
	setAttr ".tgi[3].ni[7].nvs" 1923;
	setAttr ".tgi[3].ni[8].x" 530;
	setAttr ".tgi[3].ni[8].y" -201.42857360839844;
	setAttr ".tgi[3].ni[8].nvs" 2387;
	setAttr ".tgi[3].ni[9].x" 530;
	setAttr ".tgi[3].ni[9].y" -895.71429443359375;
	setAttr ".tgi[3].ni[9].nvs" 1923;
	setAttr ".tgi[3].ni[10].x" -755.71429443359375;
	setAttr ".tgi[3].ni[10].y" 71.428573608398438;
	setAttr ".tgi[3].ni[10].nvs" 1970;
	setAttr ".tgi[3].ni[11].x" -444.28570556640625;
	setAttr ".tgi[3].ni[11].y" 1310;
	setAttr ".tgi[3].ni[11].nvs" 1922;
	setAttr ".tgi[3].ni[12].x" -122.85713958740234;
	setAttr ".tgi[3].ni[12].y" -505.71429443359375;
	setAttr ".tgi[3].ni[12].nvs" 1922;
	setAttr ".tgi[3].ni[13].x" 222.85714721679688;
	setAttr ".tgi[3].ni[13].y" -201.42857360839844;
	setAttr ".tgi[3].ni[13].nvs" 1923;
	setAttr ".tgi[3].ni[14].x" -122.85713958740234;
	setAttr ".tgi[3].ni[14].y" 328.57144165039062;
	setAttr ".tgi[3].ni[14].nvs" 1923;
	setAttr ".tgi[3].ni[15].x" 222.85714721679688;
	setAttr ".tgi[3].ni[15].y" -1068.5714111328125;
	setAttr ".tgi[3].ni[15].nvs" 1923;
	setAttr ".tgi[3].ni[16].x" -122.85713958740234;
	setAttr ".tgi[3].ni[16].y" 608.5714111328125;
	setAttr ".tgi[3].ni[16].nvs" 1923;
	setAttr ".tgi[3].ni[17].x" -122.85713958740234;
	setAttr ".tgi[3].ni[17].y" -35.714286804199219;
	setAttr ".tgi[3].ni[17].nvs" 1922;
	setAttr ".tgi[3].ni[18].x" -122.85713958740234;
	setAttr ".tgi[3].ni[18].y" 140;
	setAttr ".tgi[3].ni[18].nvs" 1923;
	setAttr ".tgi[4].tn" -type "string" "Untitled_1";
	setAttr ".tgi[4].vl" -type "double2" 34.139351958930888 -587.57805272566679 ;
	setAttr ".tgi[4].vh" -type "double2" 951.6945434668213 348.49660136311701 ;
	setAttr -s 19 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" -492.85714721679688;
	setAttr ".tgi[4].ni[0].y" 1310;
	setAttr ".tgi[4].ni[0].nvs" 1922;
	setAttr ".tgi[4].ni[1].x" -137.14285278320312;
	setAttr ".tgi[4].ni[1].y" 608.5714111328125;
	setAttr ".tgi[4].ni[1].nvs" 1923;
	setAttr ".tgi[4].ni[2].x" -492.85714721679688;
	setAttr ".tgi[4].ni[2].y" 840;
	setAttr ".tgi[4].ni[2].nvs" 1922;
	setAttr ".tgi[4].ni[3].x" -137.14285278320312;
	setAttr ".tgi[4].ni[3].y" 328.57144165039062;
	setAttr ".tgi[4].ni[3].nvs" 1923;
	setAttr ".tgi[4].ni[4].x" -137.14285278320312;
	setAttr ".tgi[4].ni[4].y" -505.71429443359375;
	setAttr ".tgi[4].ni[4].nvs" 1922;
	setAttr ".tgi[4].ni[5].x" 242.85714721679688;
	setAttr ".tgi[4].ni[5].y" -530;
	setAttr ".tgi[4].ni[5].nvs" 1923;
	setAttr ".tgi[4].ni[6].x" -492.85714721679688;
	setAttr ".tgi[4].ni[6].y" 370;
	setAttr ".tgi[4].ni[6].nvs" 1922;
	setAttr ".tgi[4].ni[7].x" -137.14285278320312;
	setAttr ".tgi[4].ni[7].y" 140;
	setAttr ".tgi[4].ni[7].nvs" 1923;
	setAttr ".tgi[4].ni[8].x" -137.14285278320312;
	setAttr ".tgi[4].ni[8].y" -988.5714111328125;
	setAttr ".tgi[4].ni[8].nvs" 1922;
	setAttr ".tgi[4].ni[9].x" 242.85714721679688;
	setAttr ".tgi[4].ni[9].y" -1068.5714111328125;
	setAttr ".tgi[4].ni[9].nvs" 1923;
	setAttr ".tgi[4].ni[10].x" -137.14285278320312;
	setAttr ".tgi[4].ni[10].y" -35.714286804199219;
	setAttr ".tgi[4].ni[10].nvs" 1922;
	setAttr ".tgi[4].ni[11].x" 242.85714721679688;
	setAttr ".tgi[4].ni[11].y" -201.42857360839844;
	setAttr ".tgi[4].ni[11].nvs" 1923;
	setAttr ".tgi[4].ni[12].x" 242.85714721679688;
	setAttr ".tgi[4].ni[12].y" -354.28570556640625;
	setAttr ".tgi[4].ni[12].nvs" 1923;
	setAttr ".tgi[4].ni[13].x" 928.5714111328125;
	setAttr ".tgi[4].ni[13].y" -525.71429443359375;
	setAttr ".tgi[4].ni[13].nvs" 1923;
	setAttr ".tgi[4].ni[14].x" 242.85714721679688;
	setAttr ".tgi[4].ni[14].y" 122.85713958740234;
	setAttr ".tgi[4].ni[14].nvs" 1923;
	setAttr ".tgi[4].ni[15].x" 580;
	setAttr ".tgi[4].ni[15].y" -201.42857360839844;
	setAttr ".tgi[4].ni[15].nvs" 2387;
	setAttr ".tgi[4].ni[16].x" 580;
	setAttr ".tgi[4].ni[16].y" -895.71429443359375;
	setAttr ".tgi[4].ni[16].nvs" 1923;
	setAttr ".tgi[4].ni[17].x" -804.28570556640625;
	setAttr ".tgi[4].ni[17].y" 71.428573608398438;
	setAttr ".tgi[4].ni[17].nvs" 1970;
	setAttr ".tgi[4].ni[18].x" -1111.4285888671875;
	setAttr ".tgi[4].ni[18].y" -212.85714721679688;
	setAttr ".tgi[4].ni[18].nvs" 1923;
createNode reference -n "RobotVItalityAnimationRN";
	rename -uid "43B18FD1-446D-4A01-5C24-5895DFC21EC4";
	setAttr ".ed" -type "dataReferenceEdits" 
		"RobotVItalityAnimationRN"
		"RobotVItalityAnimation:PALBotRN" 0
		"RobotVItalityAnimationRN" 0
		"RobotVItalityAnimation:PALBotRN" 46
		2 "|RobotVItalityAnimation:PALBot:PALBOT_GRP|RobotVItalityAnimation:PALBot:PALbot_MESH|RobotVItalityAnimation:PALBot:PALbot_HeadGRP|RobotVItalityAnimation:PALBot:GLASS_clean|RobotVItalityAnimation:PALBot:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "RobotVItalityAnimation:PALBot:lambert3SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:lambert3SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:lambert3SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:blinn1SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:blinn1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:blinn1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:blinn2SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:blinn2SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:blinn2SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader2SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader2SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader2SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:blinn5SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:blinn5SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:blinn5SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v01:lambert8SG" "aiCustomAOVs" 
		" -s 2"
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v01:lambert8SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v01:lambert8SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:FACE_SHD1SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:FACE_SHD1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:FACE_SHD1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader6SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader6SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader6SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader7SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader7SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader7SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:blinn6SG" "aiCustomAOVs" " -s 2"
		2 "RobotVItalityAnimation:PALBot:blinn6SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"diffuse_direct\""
		
		2 "RobotVItalityAnimation:PALBot:blinn6SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"diffuse\""
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader8SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader8SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader8SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader9SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader9SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader9SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v02:lambert7SG" "aiCustomAOVs" 
		" -s 2"
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v02:lambert7SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:PANDARIG_v02:lambert7SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader14SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader14SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader14SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader15SG" "aiCustomAOVs" " -s 2"
		
		2 "RobotVItalityAnimation:PALBot:surfaceShader15SG" "aiCustomAOVs[0].aovName" 
		" -type \"string\" \"diffuse_direct\""
		2 "RobotVItalityAnimation:PALBot:surfaceShader15SG" "aiCustomAOVs[1].aovName" 
		" -type \"string\" \"diffuse\"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode timeEditor -s -n "timeEditor";
	rename -uid "1C2CB8D4-4F42-23CE-BAC7-AB82AABD94C8";
	setAttr ".ac" 0;
createNode aiImagerDenoiserNoice -n "aiImagerDenoiserNoice1";
	rename -uid "BE51E6A3-44B4-7B86-2662-D39D2407F956";
	setAttr ".enable" no;
createNode aiImagerDenoiserOptix -n "aiImagerDenoiserOptix1";
	rename -uid "B2D27127-4610-B5DC-2692-BB87921F67FF";
createNode reference -n "walkAnimationRN";
	rename -uid "F1936AB9-4665-663C-EB62-DABB33F40220";
	setAttr ".ed" -type "dataReferenceEdits" 
		"walkAnimationRN"
		"walkAnimation:Ultimate_Walker_RigRN" 0
		"walkAnimationRN" 0
		"walkAnimation:Ultimate_Walker_RigRN" 1
		2 "|walkAnimation:Ultimate_Walker_Rig:AniM_walker_Main|walkAnimation:Ultimate_Walker_Rig:Body_Rig_Grp|walkAnimation:Ultimate_Walker_Rig:CNT_Grp|walkAnimation:Ultimate_Walker_Rig:CTRL_Main_Grp|walkAnimation:Ultimate_Walker_Rig:CTRL_Main" 
		"inheritsTransform" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 26 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 34 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 59 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 12 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 81 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
select -ne :initialParticleSE;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro" yes;
	setAttr -s 2 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse_direct";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse_direct","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1].aovName"} ;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr ":time1.o" "bryce__dev__Terrain__2_01.inTime";
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputObjectTranslate" "Terrain1.t"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputObjectRotate" "Terrain1.r"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputObjectScale" "Terrain1.s"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.i"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitscale"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_cdramp"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[2].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_shadowscale"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[3].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.numnonpacked"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[4].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitramp"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[5].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitcdrange"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[6].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_densityrampperiodic"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[7].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitrampperiodic"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[8].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitcdramp"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[9].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_cdrange"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[10].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_densityramp"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[11].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitrange"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[12].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_densityrange"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[13].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitcdfield"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[14].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitcdrampperiodic"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[15].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_cdfield"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[16].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_emitfield"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[17].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_cdrampperiodic"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[18].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.coverage"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[19].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.volvis_densityfield"
		;
connectAttr "bryce__dev__Terrain__2_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[20].outputPartExtraAttributeData" "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.name"
		;
connectAttr ":time1.o" "bryce__dev__bridge__1_01.inTime";
connectAttr "bryce__dev__bridge__1_01.outputObjects[0].outputObjectTranslate" "bridge1.t"
		;
connectAttr "bryce__dev__bridge__1_01.outputObjects[0].outputObjectRotate" "bridge1.r"
		;
connectAttr "bryce__dev__bridge__1_01.outputObjects[0].outputObjectScale" "bridge1.s"
		;
connectAttr ":time1.o" "bryce__dev__Boulder__1_01.inTime";
connectAttr "bryce__dev__Boulder__1_01.outputObjects[0].outputObjectTranslate" "Boulder1.t"
		;
connectAttr "bryce__dev__Boulder__1_01.outputObjects[0].outputObjectRotate" "Boulder1.r"
		;
connectAttr "bryce__dev__Boulder__1_01.outputObjects[0].outputObjectScale" "Boulder1.s"
		;
connectAttr ":time1.o" "bryce__dev__weirdTree__1_01.inTime";
connectAttr "bryce__dev__weirdTree__1_01.outputObjects[0].outputObjectTranslate" "weirdTree1.t"
		;
connectAttr "bryce__dev__weirdTree__1_01.outputObjects[0].outputObjectRotate" "weirdTree1.r"
		;
connectAttr "bryce__dev__weirdTree__1_01.outputObjects[0].outputObjectScale" "weirdTree1.s"
		;
connectAttr ":time1.o" "bryce_dev__rock__1_01.inTime";
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputObjectTranslate" "rock1.t"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputObjectRotate" "rock1.r"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputObjectScale" "rock1.s"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|bryce_dev__rock__1_01|rock1|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|bryce_dev__rock__1_01|rock1|uvunwrap1_0|uvunwrap1_0Shape.name"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|bryce_dev__rock__1_01|rock1|uvunwrap1_0|uvunwrap1_0Shape.N"
		;
connectAttr "nucleus1.noao[0]" "uvunwrap1_1Shape.nxst";
connectAttr "nucleus1.stf" "uvunwrap1_1Shape.stf";
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[1].outputPartParticleCurrentTime" "uvunwrap1_1Shape.cti"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[1].outputPartParticlePositions" "uvunwrap1_1Shape.poss"
		;
connectAttr "bryce_dev__rock__1_01.outputObjects[0].outputGeos[0].outputParts[1].outputPartParticleArrayData" "uvunwrap1_1Shape.chad"
		;
connectAttr "uvunwrap1_1Shape.incr" "uvunwrap1_1Shape.rgbPP";
connectAttr "uvunwrap1_1Shape.inor" "uvunwrap1_1Shape.opacityPP";
connectAttr ":time1.o" "nucleus1.cti";
connectAttr "uvunwrap1_1Shape.cust" "nucleus1.niao[0]";
connectAttr "uvunwrap1_1Shape.stst" "nucleus1.nias[0]";
connectAttr ":time1.o" "bryce__dev__weirdTree__1_11.inTime";
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputObjectTranslate" "weirdTree2.t"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputObjectRotate" "weirdTree2.r"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputObjectScale" "weirdTree2.s"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0|uvunwrap1_0Shape.tag"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0|uvunwrap1_0Shape.curvature"
		;
connectAttr "bryce__dev__weirdTree__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[2].outputPartExtraAttributeData" "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0|uvunwrap1_0Shape.N"
		;
connectAttr "aiPhysicalSky1.out" "aiSkyDomeLightShape1.sc";
connectAttr ":time1.o" "bryce__dev__bridge__1_11.inTime";
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputObjectTranslate" "bridge2.t"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputObjectRotate" "bridge2.r"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputObjectScale" "bridge2.s"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.i"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.numnonpacked"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.coverage"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[2].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.curvature"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[3].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.mask"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[4].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.point_dist"
		;
connectAttr "bryce__dev__bridge__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[5].outputPartExtraAttributeData" "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.N"
		;
connectAttr ":time1.o" "bryce__dev__Boulder__1_11.inTime";
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputObjectTranslate" "Boulder2.t"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputObjectRotate" "Boulder2.r"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputObjectScale" "Boulder2.s"
		;
connectAttr "groupParts6.og" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.i"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.numnonpacked"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.coverage"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[2].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.name"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[3].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.curvature"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[4].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.pscale"
		;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[5].outputPartExtraAttributeData" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.N"
		;
connectAttr "groupId1.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[0].gid"
		;
connectAttr "concrete_fracture2inside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[1].gid"
		;
connectAttr "concrete_fracture1inside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[1].gco"
		;
connectAttr "groupId3.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[2].gid"
		;
connectAttr "concrete_fracture1outside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[2].gco"
		;
connectAttr "groupId4.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[3].gid"
		;
connectAttr "inside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[3].gco"
		;
connectAttr "groupId5.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[4].gid"
		;
connectAttr "outside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[4].gco"
		;
connectAttr "groupId6.id" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[5].gid"
		;
connectAttr "concrete_fracture2outside.mwc" "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[5].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "nParticlePointSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "nParticlePointSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set5.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "aiImagerDenoiserOptix1.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr "npPointBlinn.oc" "nParticlePointSE.ss";
connectAttr "npPointVolume.oi" "nParticlePointSE.vs";
connectAttr "uvunwrap1_1Shape.iog" "nParticlePointSE.dsm" -na;
connectAttr "nParticlePointSE.msg" "materialInfo1.sg";
connectAttr "npPointBlinn.msg" "materialInfo1.m";
connectAttr "particleSamplerInfo1.msg" "materialInfo1.t" -na;
connectAttr "particleSamplerInfo1.oc" "npPointBlinn.c";
connectAttr "particleSamplerInfo1.ot" "npPointBlinn.it";
connectAttr "particleSamplerInfo1.oi" "npPointBlinn.ic";
connectAttr "particleSamplerInfo1.ot" "npPointVolume.t";
connectAttr "particleSamplerInfo1.oc" "npPointVolume.c";
connectAttr "particleSamplerInfo1.oi" "npPointVolume.i";
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture4.o" "substanceNode1.uv";
connectAttr "place2dTexture4.ofs" "substanceNode1.fs";
connectAttr "substanceNode1.output_basecolor" "Ground_Sand_basecolor.sbs";
connectAttr "substanceNode1.rsw" "Ground_Sand_basecolor.rsw";
connectAttr "substanceNode1.cext" "Ground_Sand_basecolor.cext";
connectAttr "substanceNode1.hext" "Ground_Sand_basecolor.hext";
connectAttr "substanceNode1.cfld" "Ground_Sand_basecolor.cprx";
connectAttr "place2dTexture4.o" "Ground_Sand_basecolor.uv";
connectAttr "place2dTexture4.ofs" "Ground_Sand_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "Ground_Sand_basecolor.cpth" "file1.ftn";
connectAttr "place2dTexture4.o" "file1.uv";
connectAttr "place2dTexture4.ofs" "file1.fs";
connectAttr "place2dTexture4.c" "file1.c";
connectAttr "place2dTexture4.tf" "file1.tf";
connectAttr "place2dTexture4.rf" "file1.rf";
connectAttr "place2dTexture4.mu" "file1.mu";
connectAttr "place2dTexture4.mv" "file1.mv";
connectAttr "place2dTexture4.s" "file1.s";
connectAttr "place2dTexture4.wu" "file1.wu";
connectAttr "place2dTexture4.wv" "file1.wv";
connectAttr "place2dTexture4.re" "file1.re";
connectAttr "place2dTexture4.of" "file1.of";
connectAttr "place2dTexture4.r" "file1.ro";
connectAttr "place2dTexture4.n" "file1.n";
connectAttr "place2dTexture4.vt1" "file1.vt1";
connectAttr "place2dTexture4.vt2" "file1.vt2";
connectAttr "place2dTexture4.vt3" "file1.vt3";
connectAttr "place2dTexture4.vc1" "file1.vc1";
connectAttr "place3dTexture1.m" "projection1.pm";
connectAttr "file1.oc" "projection1.im";
connectAttr "substanceNode1.output_metallic" "Ground_Sand_metallic.sbs";
connectAttr "substanceNode1.rsw" "Ground_Sand_metallic.rsw";
connectAttr "substanceNode1.cext" "Ground_Sand_metallic.cext";
connectAttr "substanceNode1.hext" "Ground_Sand_metallic.hext";
connectAttr "substanceNode1.cfld" "Ground_Sand_metallic.cprx";
connectAttr "place2dTexture4.o" "Ground_Sand_metallic.uv";
connectAttr "place2dTexture4.ofs" "Ground_Sand_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "Ground_Sand_metallic.cpth" "file2.ftn";
connectAttr "place2dTexture4.o" "file2.uv";
connectAttr "place2dTexture4.ofs" "file2.fs";
connectAttr "place2dTexture4.c" "file2.c";
connectAttr "place2dTexture4.tf" "file2.tf";
connectAttr "place2dTexture4.rf" "file2.rf";
connectAttr "place2dTexture4.mu" "file2.mu";
connectAttr "place2dTexture4.mv" "file2.mv";
connectAttr "place2dTexture4.s" "file2.s";
connectAttr "place2dTexture4.wu" "file2.wu";
connectAttr "place2dTexture4.wv" "file2.wv";
connectAttr "place2dTexture4.re" "file2.re";
connectAttr "place2dTexture4.of" "file2.of";
connectAttr "place2dTexture4.r" "file2.ro";
connectAttr "place2dTexture4.n" "file2.n";
connectAttr "place2dTexture4.vt1" "file2.vt1";
connectAttr "place2dTexture4.vt2" "file2.vt2";
connectAttr "place2dTexture4.vt3" "file2.vt3";
connectAttr "place2dTexture4.vc1" "file2.vc1";
connectAttr "place3dTexture1.m" "projection2.pm";
connectAttr "file2.oc" "projection2.im";
connectAttr "substanceNode1.output_normal" "Ground_Sand_normal.sbs";
connectAttr "substanceNode1.rsw" "Ground_Sand_normal.rsw";
connectAttr "substanceNode1.cext" "Ground_Sand_normal.cext";
connectAttr "substanceNode1.hext" "Ground_Sand_normal.hext";
connectAttr "substanceNode1.cfld" "Ground_Sand_normal.cprx";
connectAttr "place2dTexture4.o" "Ground_Sand_normal.uv";
connectAttr "place2dTexture4.ofs" "Ground_Sand_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "Ground_Sand_normal.cpth" "file3.ftn";
connectAttr "place2dTexture4.o" "file3.uv";
connectAttr "place2dTexture4.ofs" "file3.fs";
connectAttr "place2dTexture4.c" "file3.c";
connectAttr "place2dTexture4.tf" "file3.tf";
connectAttr "place2dTexture4.rf" "file3.rf";
connectAttr "place2dTexture4.mu" "file3.mu";
connectAttr "place2dTexture4.mv" "file3.mv";
connectAttr "place2dTexture4.s" "file3.s";
connectAttr "place2dTexture4.wu" "file3.wu";
connectAttr "place2dTexture4.wv" "file3.wv";
connectAttr "place2dTexture4.re" "file3.re";
connectAttr "place2dTexture4.of" "file3.of";
connectAttr "place2dTexture4.r" "file3.ro";
connectAttr "place2dTexture4.n" "file3.n";
connectAttr "place2dTexture4.vt1" "file3.vt1";
connectAttr "place2dTexture4.vt2" "file3.vt2";
connectAttr "place2dTexture4.vt3" "file3.vt3";
connectAttr "place2dTexture4.vc1" "file3.vc1";
connectAttr "place3dTexture1.m" "projection3.pm";
connectAttr "file3.oc" "projection3.im";
connectAttr "substanceNode1.output_height" "Ground_Sand_height.sbs";
connectAttr "substanceNode1.rsw" "Ground_Sand_height.rsw";
connectAttr "substanceNode1.cext" "Ground_Sand_height.cext";
connectAttr "substanceNode1.hext" "Ground_Sand_height.hext";
connectAttr "substanceNode1.cfld" "Ground_Sand_height.cprx";
connectAttr "place2dTexture4.o" "Ground_Sand_height.uv";
connectAttr "place2dTexture4.ofs" "Ground_Sand_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "Ground_Sand_height.cpth" "file4.ftn";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place3dTexture1.m" "projection4.pm";
connectAttr "file4.oc" "projection4.im";
connectAttr "substanceNode1.output_roughness" "Ground_Sand_roughness.sbs";
connectAttr "substanceNode1.rsw" "Ground_Sand_roughness.rsw";
connectAttr "substanceNode1.cext" "Ground_Sand_roughness.cext";
connectAttr "substanceNode1.hext" "Ground_Sand_roughness.hext";
connectAttr "substanceNode1.cfld" "Ground_Sand_roughness.cprx";
connectAttr "place2dTexture4.o" "Ground_Sand_roughness.uv";
connectAttr "place2dTexture4.ofs" "Ground_Sand_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "Ground_Sand_roughness.cpth" "file5.ftn";
connectAttr "place2dTexture4.o" "file5.uv";
connectAttr "place2dTexture4.ofs" "file5.fs";
connectAttr "place2dTexture4.c" "file5.c";
connectAttr "place2dTexture4.tf" "file5.tf";
connectAttr "place2dTexture4.rf" "file5.rf";
connectAttr "place2dTexture4.mu" "file5.mu";
connectAttr "place2dTexture4.mv" "file5.mv";
connectAttr "place2dTexture4.s" "file5.s";
connectAttr "place2dTexture4.wu" "file5.wu";
connectAttr "place2dTexture4.wv" "file5.wv";
connectAttr "place2dTexture4.re" "file5.re";
connectAttr "place2dTexture4.of" "file5.of";
connectAttr "place2dTexture4.r" "file5.ro";
connectAttr "place2dTexture4.n" "file5.n";
connectAttr "place2dTexture4.vt1" "file5.vt1";
connectAttr "place2dTexture4.vt2" "file5.vt2";
connectAttr "place2dTexture4.vt3" "file5.vt3";
connectAttr "place2dTexture4.vc1" "file5.vc1";
connectAttr "place3dTexture1.m" "projection5.pm";
connectAttr "file5.oc" "projection5.im";
connectAttr "projection1.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "SAND.base_color";
connectAttr "bump2d1.o" "SAND.n";
connectAttr "projection5.ocr" "SAND.specular_roughness";
connectAttr "projection2.ocr" "SAND.metalness";
connectAttr "SAND.out" "set1.ss";
connectAttr "displacementShader1.d" "set1.ds";
connectAttr "|bryce__dev__Terrain__2_01|Terrain1|uvlayout1_0|uvlayout1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "set1.msg" "materialInfo3.sg";
connectAttr "SAND.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr "projection3.ocr" "bump2d1.bv";
connectAttr "projection4.ocr" "displacementShader1.d";
connectAttr "place2dTexture5.o" "substanceNode2.uv";
connectAttr "place2dTexture5.ofs" "substanceNode2.fs";
connectAttr "substanceNode2.output_basecolor" "Stylized_Stone_basecolor.sbs";
connectAttr "substanceNode2.rsw" "Stylized_Stone_basecolor.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_basecolor.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_basecolor.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_basecolor.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_basecolor.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "Stylized_Stone_basecolor.cpth" "file6.ftn";
connectAttr "place2dTexture5.o" "file6.uv";
connectAttr "place2dTexture5.ofs" "file6.fs";
connectAttr "place2dTexture5.c" "file6.c";
connectAttr "place2dTexture5.tf" "file6.tf";
connectAttr "place2dTexture5.rf" "file6.rf";
connectAttr "place2dTexture5.mu" "file6.mu";
connectAttr "place2dTexture5.mv" "file6.mv";
connectAttr "place2dTexture5.s" "file6.s";
connectAttr "place2dTexture5.wu" "file6.wu";
connectAttr "place2dTexture5.wv" "file6.wv";
connectAttr "place2dTexture5.re" "file6.re";
connectAttr "place2dTexture5.of" "file6.of";
connectAttr "place2dTexture5.r" "file6.ro";
connectAttr "place2dTexture5.n" "file6.n";
connectAttr "place2dTexture5.vt1" "file6.vt1";
connectAttr "place2dTexture5.vt2" "file6.vt2";
connectAttr "place2dTexture5.vt3" "file6.vt3";
connectAttr "place2dTexture5.vc1" "file6.vc1";
connectAttr "substanceNode2.output_ambientocclusion" "Stylized_Stone_ambientocclusion.sbs"
		;
connectAttr "substanceNode2.rsw" "Stylized_Stone_ambientocclusion.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_ambientocclusion.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_ambientocclusion.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_ambientocclusion.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_ambientocclusion.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "Stylized_Stone_ambientocclusion.cpth" "file7.ftn";
connectAttr "place2dTexture5.o" "file7.uv";
connectAttr "place2dTexture5.ofs" "file7.fs";
connectAttr "place2dTexture5.c" "file7.c";
connectAttr "place2dTexture5.tf" "file7.tf";
connectAttr "place2dTexture5.rf" "file7.rf";
connectAttr "place2dTexture5.mu" "file7.mu";
connectAttr "place2dTexture5.mv" "file7.mv";
connectAttr "place2dTexture5.s" "file7.s";
connectAttr "place2dTexture5.wu" "file7.wu";
connectAttr "place2dTexture5.wv" "file7.wv";
connectAttr "place2dTexture5.re" "file7.re";
connectAttr "place2dTexture5.of" "file7.of";
connectAttr "place2dTexture5.r" "file7.ro";
connectAttr "place2dTexture5.n" "file7.n";
connectAttr "place2dTexture5.vt1" "file7.vt1";
connectAttr "place2dTexture5.vt2" "file7.vt2";
connectAttr "place2dTexture5.vt3" "file7.vt3";
connectAttr "place2dTexture5.vc1" "file7.vc1";
connectAttr "substanceNode2.output_metallic" "Stylized_Stone_metallic.sbs";
connectAttr "substanceNode2.rsw" "Stylized_Stone_metallic.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_metallic.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_metallic.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_metallic.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_metallic.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "Stylized_Stone_metallic.cpth" "file8.ftn";
connectAttr "place2dTexture5.o" "file8.uv";
connectAttr "place2dTexture5.ofs" "file8.fs";
connectAttr "place2dTexture5.c" "file8.c";
connectAttr "place2dTexture5.tf" "file8.tf";
connectAttr "place2dTexture5.rf" "file8.rf";
connectAttr "place2dTexture5.mu" "file8.mu";
connectAttr "place2dTexture5.mv" "file8.mv";
connectAttr "place2dTexture5.s" "file8.s";
connectAttr "place2dTexture5.wu" "file8.wu";
connectAttr "place2dTexture5.wv" "file8.wv";
connectAttr "place2dTexture5.re" "file8.re";
connectAttr "place2dTexture5.of" "file8.of";
connectAttr "place2dTexture5.r" "file8.ro";
connectAttr "place2dTexture5.n" "file8.n";
connectAttr "place2dTexture5.vt1" "file8.vt1";
connectAttr "place2dTexture5.vt2" "file8.vt2";
connectAttr "place2dTexture5.vt3" "file8.vt3";
connectAttr "place2dTexture5.vc1" "file8.vc1";
connectAttr "substanceNode2.output_normal" "Stylized_Stone_normal.sbs";
connectAttr "substanceNode2.rsw" "Stylized_Stone_normal.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_normal.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_normal.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_normal.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_normal.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "Stylized_Stone_normal.cpth" "file9.ftn";
connectAttr "place2dTexture5.o" "file9.uv";
connectAttr "place2dTexture5.ofs" "file9.fs";
connectAttr "place2dTexture5.c" "file9.c";
connectAttr "place2dTexture5.tf" "file9.tf";
connectAttr "place2dTexture5.rf" "file9.rf";
connectAttr "place2dTexture5.mu" "file9.mu";
connectAttr "place2dTexture5.mv" "file9.mv";
connectAttr "place2dTexture5.s" "file9.s";
connectAttr "place2dTexture5.wu" "file9.wu";
connectAttr "place2dTexture5.wv" "file9.wv";
connectAttr "place2dTexture5.re" "file9.re";
connectAttr "place2dTexture5.of" "file9.of";
connectAttr "place2dTexture5.r" "file9.ro";
connectAttr "place2dTexture5.n" "file9.n";
connectAttr "place2dTexture5.vt1" "file9.vt1";
connectAttr "place2dTexture5.vt2" "file9.vt2";
connectAttr "place2dTexture5.vt3" "file9.vt3";
connectAttr "place2dTexture5.vc1" "file9.vc1";
connectAttr "substanceNode2.output_height" "Stylized_Stone_height.sbs";
connectAttr "substanceNode2.rsw" "Stylized_Stone_height.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_height.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_height.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_height.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_height.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "Stylized_Stone_height.cpth" "file10.ftn";
connectAttr "place2dTexture5.o" "file10.uv";
connectAttr "place2dTexture5.ofs" "file10.fs";
connectAttr "place2dTexture5.c" "file10.c";
connectAttr "place2dTexture5.tf" "file10.tf";
connectAttr "place2dTexture5.rf" "file10.rf";
connectAttr "place2dTexture5.mu" "file10.mu";
connectAttr "place2dTexture5.mv" "file10.mv";
connectAttr "place2dTexture5.s" "file10.s";
connectAttr "place2dTexture5.wu" "file10.wu";
connectAttr "place2dTexture5.wv" "file10.wv";
connectAttr "place2dTexture5.re" "file10.re";
connectAttr "place2dTexture5.of" "file10.of";
connectAttr "place2dTexture5.r" "file10.ro";
connectAttr "place2dTexture5.n" "file10.n";
connectAttr "place2dTexture5.vt1" "file10.vt1";
connectAttr "place2dTexture5.vt2" "file10.vt2";
connectAttr "place2dTexture5.vt3" "file10.vt3";
connectAttr "place2dTexture5.vc1" "file10.vc1";
connectAttr "substanceNode2.output_roughness" "Stylized_Stone_roughness.sbs";
connectAttr "substanceNode2.rsw" "Stylized_Stone_roughness.rsw";
connectAttr "substanceNode2.cext" "Stylized_Stone_roughness.cext";
connectAttr "substanceNode2.hext" "Stylized_Stone_roughness.hext";
connectAttr "substanceNode2.cfld" "Stylized_Stone_roughness.cprx";
connectAttr "place2dTexture5.o" "Stylized_Stone_roughness.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Stone_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "Stylized_Stone_roughness.cpth" "file11.ftn";
connectAttr "place2dTexture5.o" "file11.uv";
connectAttr "place2dTexture5.ofs" "file11.fs";
connectAttr "place2dTexture5.c" "file11.c";
connectAttr "place2dTexture5.tf" "file11.tf";
connectAttr "place2dTexture5.rf" "file11.rf";
connectAttr "place2dTexture5.mu" "file11.mu";
connectAttr "place2dTexture5.mv" "file11.mv";
connectAttr "place2dTexture5.s" "file11.s";
connectAttr "place2dTexture5.wu" "file11.wu";
connectAttr "place2dTexture5.wv" "file11.wv";
connectAttr "place2dTexture5.re" "file11.re";
connectAttr "place2dTexture5.of" "file11.of";
connectAttr "place2dTexture5.r" "file11.ro";
connectAttr "place2dTexture5.n" "file11.n";
connectAttr "place2dTexture5.vt1" "file11.vt1";
connectAttr "place2dTexture5.vt2" "file11.vt2";
connectAttr "place2dTexture5.vt3" "file11.vt3";
connectAttr "place2dTexture5.vc1" "file11.vc1";
connectAttr "file6.oc" "multiplyDivide2.i1";
connectAttr "file7.oc" "multiplyDivide2.i2";
connectAttr "multiplyDivide2.o" "stone.base_color";
connectAttr "bump2d2.o" "stone.n";
connectAttr "file11.oa" "stone.specular_roughness";
connectAttr "file8.oa" "stone.metalness";
connectAttr "stone.out" "set2.ss";
connectAttr "displacementShader2.d" "set2.ds";
connectAttr "|bryce__dev__bridge__1_11|bridge2|uvlayout1_0|uvlayout1_0Shape.iog" "set2.dsm"
		 -na;
connectAttr "set2.msg" "materialInfo4.sg";
connectAttr "stone.msg" "materialInfo4.m";
connectAttr "file6.msg" "materialInfo4.t" -na;
connectAttr "file9.oa" "bump2d2.bv";
connectAttr "file10.oa" "displacementShader2.d";
connectAttr "place2dTexture6.o" "substanceNode3.uv";
connectAttr "place2dTexture6.ofs" "substanceNode3.fs";
connectAttr "substanceNode3.output_basecolor" "Organic_Flesh_basecolor.sbs";
connectAttr "substanceNode3.rsw" "Organic_Flesh_basecolor.rsw";
connectAttr "substanceNode3.cext" "Organic_Flesh_basecolor.cext";
connectAttr "substanceNode3.hext" "Organic_Flesh_basecolor.hext";
connectAttr "substanceNode3.cfld" "Organic_Flesh_basecolor.cprx";
connectAttr "place2dTexture6.o" "Organic_Flesh_basecolor.uv";
connectAttr "place2dTexture6.ofs" "Organic_Flesh_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "Organic_Flesh_basecolor.cpth" "file12.ftn";
connectAttr "place2dTexture6.o" "file12.uv";
connectAttr "place2dTexture6.ofs" "file12.fs";
connectAttr "place2dTexture6.c" "file12.c";
connectAttr "place2dTexture6.tf" "file12.tf";
connectAttr "place2dTexture6.rf" "file12.rf";
connectAttr "place2dTexture6.mu" "file12.mu";
connectAttr "place2dTexture6.mv" "file12.mv";
connectAttr "place2dTexture6.s" "file12.s";
connectAttr "place2dTexture6.wu" "file12.wu";
connectAttr "place2dTexture6.wv" "file12.wv";
connectAttr "place2dTexture6.re" "file12.re";
connectAttr "place2dTexture6.of" "file12.of";
connectAttr "place2dTexture6.r" "file12.ro";
connectAttr "place2dTexture6.n" "file12.n";
connectAttr "place2dTexture6.vt1" "file12.vt1";
connectAttr "place2dTexture6.vt2" "file12.vt2";
connectAttr "place2dTexture6.vt3" "file12.vt3";
connectAttr "place2dTexture6.vc1" "file12.vc1";
connectAttr "substanceNode3.output_metallic" "Organic_Flesh_metallic.sbs";
connectAttr "substanceNode3.rsw" "Organic_Flesh_metallic.rsw";
connectAttr "substanceNode3.cext" "Organic_Flesh_metallic.cext";
connectAttr "substanceNode3.hext" "Organic_Flesh_metallic.hext";
connectAttr "substanceNode3.cfld" "Organic_Flesh_metallic.cprx";
connectAttr "place2dTexture6.o" "Organic_Flesh_metallic.uv";
connectAttr "place2dTexture6.ofs" "Organic_Flesh_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "Organic_Flesh_metallic.cpth" "file13.ftn";
connectAttr "place2dTexture6.o" "file13.uv";
connectAttr "place2dTexture6.ofs" "file13.fs";
connectAttr "place2dTexture6.c" "file13.c";
connectAttr "place2dTexture6.tf" "file13.tf";
connectAttr "place2dTexture6.rf" "file13.rf";
connectAttr "place2dTexture6.mu" "file13.mu";
connectAttr "place2dTexture6.mv" "file13.mv";
connectAttr "place2dTexture6.s" "file13.s";
connectAttr "place2dTexture6.wu" "file13.wu";
connectAttr "place2dTexture6.wv" "file13.wv";
connectAttr "place2dTexture6.re" "file13.re";
connectAttr "place2dTexture6.of" "file13.of";
connectAttr "place2dTexture6.r" "file13.ro";
connectAttr "place2dTexture6.n" "file13.n";
connectAttr "place2dTexture6.vt1" "file13.vt1";
connectAttr "place2dTexture6.vt2" "file13.vt2";
connectAttr "place2dTexture6.vt3" "file13.vt3";
connectAttr "place2dTexture6.vc1" "file13.vc1";
connectAttr "substanceNode3.output_normal" "Organic_Flesh_normal.sbs";
connectAttr "substanceNode3.rsw" "Organic_Flesh_normal.rsw";
connectAttr "substanceNode3.cext" "Organic_Flesh_normal.cext";
connectAttr "substanceNode3.hext" "Organic_Flesh_normal.hext";
connectAttr "substanceNode3.cfld" "Organic_Flesh_normal.cprx";
connectAttr "place2dTexture6.o" "Organic_Flesh_normal.uv";
connectAttr "place2dTexture6.ofs" "Organic_Flesh_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "Organic_Flesh_normal.cpth" "file14.ftn";
connectAttr "place2dTexture6.o" "file14.uv";
connectAttr "place2dTexture6.ofs" "file14.fs";
connectAttr "place2dTexture6.c" "file14.c";
connectAttr "place2dTexture6.tf" "file14.tf";
connectAttr "place2dTexture6.rf" "file14.rf";
connectAttr "place2dTexture6.mu" "file14.mu";
connectAttr "place2dTexture6.mv" "file14.mv";
connectAttr "place2dTexture6.s" "file14.s";
connectAttr "place2dTexture6.wu" "file14.wu";
connectAttr "place2dTexture6.wv" "file14.wv";
connectAttr "place2dTexture6.re" "file14.re";
connectAttr "place2dTexture6.of" "file14.of";
connectAttr "place2dTexture6.r" "file14.ro";
connectAttr "place2dTexture6.n" "file14.n";
connectAttr "place2dTexture6.vt1" "file14.vt1";
connectAttr "place2dTexture6.vt2" "file14.vt2";
connectAttr "place2dTexture6.vt3" "file14.vt3";
connectAttr "place2dTexture6.vc1" "file14.vc1";
connectAttr "substanceNode3.output_height" "Organic_Flesh_height.sbs";
connectAttr "substanceNode3.rsw" "Organic_Flesh_height.rsw";
connectAttr "substanceNode3.cext" "Organic_Flesh_height.cext";
connectAttr "substanceNode3.hext" "Organic_Flesh_height.hext";
connectAttr "substanceNode3.cfld" "Organic_Flesh_height.cprx";
connectAttr "place2dTexture6.o" "Organic_Flesh_height.uv";
connectAttr "place2dTexture6.ofs" "Organic_Flesh_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "Organic_Flesh_height.cpth" "file15.ftn";
connectAttr "place2dTexture6.o" "file15.uv";
connectAttr "place2dTexture6.ofs" "file15.fs";
connectAttr "place2dTexture6.c" "file15.c";
connectAttr "place2dTexture6.tf" "file15.tf";
connectAttr "place2dTexture6.rf" "file15.rf";
connectAttr "place2dTexture6.mu" "file15.mu";
connectAttr "place2dTexture6.mv" "file15.mv";
connectAttr "place2dTexture6.s" "file15.s";
connectAttr "place2dTexture6.wu" "file15.wu";
connectAttr "place2dTexture6.wv" "file15.wv";
connectAttr "place2dTexture6.re" "file15.re";
connectAttr "place2dTexture6.of" "file15.of";
connectAttr "place2dTexture6.r" "file15.ro";
connectAttr "place2dTexture6.n" "file15.n";
connectAttr "place2dTexture6.vt1" "file15.vt1";
connectAttr "place2dTexture6.vt2" "file15.vt2";
connectAttr "place2dTexture6.vt3" "file15.vt3";
connectAttr "place2dTexture6.vc1" "file15.vc1";
connectAttr "substanceNode3.output_roughness" "Organic_Flesh_roughness.sbs";
connectAttr "substanceNode3.rsw" "Organic_Flesh_roughness.rsw";
connectAttr "substanceNode3.cext" "Organic_Flesh_roughness.cext";
connectAttr "substanceNode3.hext" "Organic_Flesh_roughness.hext";
connectAttr "substanceNode3.cfld" "Organic_Flesh_roughness.cprx";
connectAttr "place2dTexture6.o" "Organic_Flesh_roughness.uv";
connectAttr "place2dTexture6.ofs" "Organic_Flesh_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "Organic_Flesh_roughness.cpth" "file16.ftn";
connectAttr "place2dTexture6.o" "file16.uv";
connectAttr "place2dTexture6.ofs" "file16.fs";
connectAttr "place2dTexture6.c" "file16.c";
connectAttr "place2dTexture6.tf" "file16.tf";
connectAttr "place2dTexture6.rf" "file16.rf";
connectAttr "place2dTexture6.mu" "file16.mu";
connectAttr "place2dTexture6.mv" "file16.mv";
connectAttr "place2dTexture6.s" "file16.s";
connectAttr "place2dTexture6.wu" "file16.wu";
connectAttr "place2dTexture6.wv" "file16.wv";
connectAttr "place2dTexture6.re" "file16.re";
connectAttr "place2dTexture6.of" "file16.of";
connectAttr "place2dTexture6.r" "file16.ro";
connectAttr "place2dTexture6.n" "file16.n";
connectAttr "place2dTexture6.vt1" "file16.vt1";
connectAttr "place2dTexture6.vt2" "file16.vt2";
connectAttr "place2dTexture6.vt3" "file16.vt3";
connectAttr "place2dTexture6.vc1" "file16.vc1";
connectAttr "projection6.oc" "multiplyDivide3.i1";
connectAttr "multiplyDivide3.o" "flesh.base_color";
connectAttr "bump2d3.o" "flesh.n";
connectAttr "projection8.ocr" "flesh.specular_roughness";
connectAttr "projection9.ocr" "flesh.metalness";
connectAttr "flesh.out" "set3.ss";
connectAttr "displacementShader3.d" "set3.ds";
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog" "set3.dsm"
		 -na;
connectAttr "set3.msg" "materialInfo5.sg";
connectAttr "flesh.msg" "materialInfo5.m";
connectAttr "file12.msg" "materialInfo5.t" -na;
connectAttr "projection7.ocr" "bump2d3.bv";
connectAttr "projection10.ocr" "displacementShader3.d";
connectAttr "groupId1.msg" "concrete_fracture2inside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[0]" "concrete_fracture2inside.dsm"
		 -na;
connectAttr "bryce__dev__Boulder__1_11.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts1.ig"
		;
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupId2.msg" "concrete_fracture1inside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[1]" "concrete_fracture1inside.dsm"
		 -na;
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupId3.msg" "concrete_fracture1outside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[2]" "concrete_fracture1outside.dsm"
		 -na;
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupId4.msg" "inside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[3]" "inside.dsm"
		 -na;
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupId5.msg" "outside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[4]" "outside.dsm"
		 -na;
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupId6.msg" "concrete_fracture2outside.gn" -na;
connectAttr "|bryce__dev__Boulder__1_11|Boulder2|uvlayout1_0|uvlayout1_0Shape.iog.og[5]" "concrete_fracture2outside.dsm"
		 -na;
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "place3dTexture2.m" "projection6.pm";
connectAttr "file12.oc" "projection6.im";
connectAttr "place3dTexture2.m" "projection7.pm";
connectAttr "file14.oc" "projection7.im";
connectAttr "place3dTexture2.m" "projection8.pm";
connectAttr "file16.oc" "projection8.im";
connectAttr "place3dTexture2.m" "projection9.pm";
connectAttr "file13.oc" "projection9.im";
connectAttr "place3dTexture2.m" "projection10.pm";
connectAttr "file15.oc" "projection10.im";
connectAttr "place2dTexture7.o" "substanceNode4.uv";
connectAttr "place2dTexture7.ofs" "substanceNode4.fs";
connectAttr "substanceNode4.output_basecolor" "Wood_Bark_basecolor.sbs";
connectAttr "substanceNode4.rsw" "Wood_Bark_basecolor.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_basecolor.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_basecolor.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_basecolor.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_basecolor.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "Wood_Bark_basecolor.cpth" "file17.ftn";
connectAttr "place2dTexture7.o" "file17.uv";
connectAttr "place2dTexture7.ofs" "file17.fs";
connectAttr "place2dTexture7.c" "file17.c";
connectAttr "place2dTexture7.tf" "file17.tf";
connectAttr "place2dTexture7.rf" "file17.rf";
connectAttr "place2dTexture7.mu" "file17.mu";
connectAttr "place2dTexture7.mv" "file17.mv";
connectAttr "place2dTexture7.s" "file17.s";
connectAttr "place2dTexture7.wu" "file17.wu";
connectAttr "place2dTexture7.wv" "file17.wv";
connectAttr "place2dTexture7.re" "file17.re";
connectAttr "place2dTexture7.of" "file17.of";
connectAttr "place2dTexture7.r" "file17.ro";
connectAttr "place2dTexture7.n" "file17.n";
connectAttr "place2dTexture7.vt1" "file17.vt1";
connectAttr "place2dTexture7.vt2" "file17.vt2";
connectAttr "place2dTexture7.vt3" "file17.vt3";
connectAttr "place2dTexture7.vc1" "file17.vc1";
connectAttr "substanceNode4.output_ambientocclusion" "Wood_Bark_ambientocclusion.sbs"
		;
connectAttr "substanceNode4.rsw" "Wood_Bark_ambientocclusion.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_ambientocclusion.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_ambientocclusion.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_ambientocclusion.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_ambientocclusion.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "Wood_Bark_ambientocclusion.cpth" "file18.ftn";
connectAttr "place2dTexture7.o" "file18.uv";
connectAttr "place2dTexture7.ofs" "file18.fs";
connectAttr "place2dTexture7.c" "file18.c";
connectAttr "place2dTexture7.tf" "file18.tf";
connectAttr "place2dTexture7.rf" "file18.rf";
connectAttr "place2dTexture7.mu" "file18.mu";
connectAttr "place2dTexture7.mv" "file18.mv";
connectAttr "place2dTexture7.s" "file18.s";
connectAttr "place2dTexture7.wu" "file18.wu";
connectAttr "place2dTexture7.wv" "file18.wv";
connectAttr "place2dTexture7.re" "file18.re";
connectAttr "place2dTexture7.of" "file18.of";
connectAttr "place2dTexture7.r" "file18.ro";
connectAttr "place2dTexture7.n" "file18.n";
connectAttr "place2dTexture7.vt1" "file18.vt1";
connectAttr "place2dTexture7.vt2" "file18.vt2";
connectAttr "place2dTexture7.vt3" "file18.vt3";
connectAttr "place2dTexture7.vc1" "file18.vc1";
connectAttr "substanceNode4.output_metallic" "Wood_Bark_metallic.sbs";
connectAttr "substanceNode4.rsw" "Wood_Bark_metallic.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_metallic.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_metallic.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_metallic.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_metallic.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "Wood_Bark_metallic.cpth" "file19.ftn";
connectAttr "place2dTexture7.o" "file19.uv";
connectAttr "place2dTexture7.ofs" "file19.fs";
connectAttr "place2dTexture7.c" "file19.c";
connectAttr "place2dTexture7.tf" "file19.tf";
connectAttr "place2dTexture7.rf" "file19.rf";
connectAttr "place2dTexture7.mu" "file19.mu";
connectAttr "place2dTexture7.mv" "file19.mv";
connectAttr "place2dTexture7.s" "file19.s";
connectAttr "place2dTexture7.wu" "file19.wu";
connectAttr "place2dTexture7.wv" "file19.wv";
connectAttr "place2dTexture7.re" "file19.re";
connectAttr "place2dTexture7.of" "file19.of";
connectAttr "place2dTexture7.r" "file19.ro";
connectAttr "place2dTexture7.n" "file19.n";
connectAttr "place2dTexture7.vt1" "file19.vt1";
connectAttr "place2dTexture7.vt2" "file19.vt2";
connectAttr "place2dTexture7.vt3" "file19.vt3";
connectAttr "place2dTexture7.vc1" "file19.vc1";
connectAttr "substanceNode4.output_normal" "Wood_Bark_normal.sbs";
connectAttr "substanceNode4.rsw" "Wood_Bark_normal.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_normal.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_normal.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_normal.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_normal.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "Wood_Bark_normal.cpth" "file20.ftn";
connectAttr "place2dTexture7.o" "file20.uv";
connectAttr "place2dTexture7.ofs" "file20.fs";
connectAttr "place2dTexture7.c" "file20.c";
connectAttr "place2dTexture7.tf" "file20.tf";
connectAttr "place2dTexture7.rf" "file20.rf";
connectAttr "place2dTexture7.mu" "file20.mu";
connectAttr "place2dTexture7.mv" "file20.mv";
connectAttr "place2dTexture7.s" "file20.s";
connectAttr "place2dTexture7.wu" "file20.wu";
connectAttr "place2dTexture7.wv" "file20.wv";
connectAttr "place2dTexture7.re" "file20.re";
connectAttr "place2dTexture7.of" "file20.of";
connectAttr "place2dTexture7.r" "file20.ro";
connectAttr "place2dTexture7.n" "file20.n";
connectAttr "place2dTexture7.vt1" "file20.vt1";
connectAttr "place2dTexture7.vt2" "file20.vt2";
connectAttr "place2dTexture7.vt3" "file20.vt3";
connectAttr "place2dTexture7.vc1" "file20.vc1";
connectAttr "substanceNode4.output_height" "Wood_Bark_height.sbs";
connectAttr "substanceNode4.rsw" "Wood_Bark_height.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_height.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_height.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_height.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_height.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "Wood_Bark_height.cpth" "file21.ftn";
connectAttr "place2dTexture7.o" "file21.uv";
connectAttr "place2dTexture7.ofs" "file21.fs";
connectAttr "place2dTexture7.c" "file21.c";
connectAttr "place2dTexture7.tf" "file21.tf";
connectAttr "place2dTexture7.rf" "file21.rf";
connectAttr "place2dTexture7.mu" "file21.mu";
connectAttr "place2dTexture7.mv" "file21.mv";
connectAttr "place2dTexture7.s" "file21.s";
connectAttr "place2dTexture7.wu" "file21.wu";
connectAttr "place2dTexture7.wv" "file21.wv";
connectAttr "place2dTexture7.re" "file21.re";
connectAttr "place2dTexture7.of" "file21.of";
connectAttr "place2dTexture7.r" "file21.ro";
connectAttr "place2dTexture7.n" "file21.n";
connectAttr "place2dTexture7.vt1" "file21.vt1";
connectAttr "place2dTexture7.vt2" "file21.vt2";
connectAttr "place2dTexture7.vt3" "file21.vt3";
connectAttr "place2dTexture7.vc1" "file21.vc1";
connectAttr "substanceNode4.output_roughness" "Wood_Bark_roughness.sbs";
connectAttr "substanceNode4.rsw" "Wood_Bark_roughness.rsw";
connectAttr "substanceNode4.cext" "Wood_Bark_roughness.cext";
connectAttr "substanceNode4.hext" "Wood_Bark_roughness.hext";
connectAttr "substanceNode4.cfld" "Wood_Bark_roughness.cprx";
connectAttr "place2dTexture7.o" "Wood_Bark_roughness.uv";
connectAttr "place2dTexture7.ofs" "Wood_Bark_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "Wood_Bark_roughness.cpth" "file22.ftn";
connectAttr "place2dTexture7.o" "file22.uv";
connectAttr "place2dTexture7.ofs" "file22.fs";
connectAttr "place2dTexture7.c" "file22.c";
connectAttr "place2dTexture7.tf" "file22.tf";
connectAttr "place2dTexture7.rf" "file22.rf";
connectAttr "place2dTexture7.mu" "file22.mu";
connectAttr "place2dTexture7.mv" "file22.mv";
connectAttr "place2dTexture7.s" "file22.s";
connectAttr "place2dTexture7.wu" "file22.wu";
connectAttr "place2dTexture7.wv" "file22.wv";
connectAttr "place2dTexture7.re" "file22.re";
connectAttr "place2dTexture7.of" "file22.of";
connectAttr "place2dTexture7.r" "file22.ro";
connectAttr "place2dTexture7.n" "file22.n";
connectAttr "place2dTexture7.vt1" "file22.vt1";
connectAttr "place2dTexture7.vt2" "file22.vt2";
connectAttr "place2dTexture7.vt3" "file22.vt3";
connectAttr "place2dTexture7.vc1" "file22.vc1";
connectAttr "file17.oc" "multiplyDivide4.i1";
connectAttr "file18.oc" "multiplyDivide4.i2";
connectAttr "multiplyDivide4.o" "wood.base_color";
connectAttr "bump2d4.o" "wood.n";
connectAttr "file22.oa" "wood.specular_roughness";
connectAttr "file19.oa" "wood.metalness";
connectAttr "wood.out" "set4.ss";
connectAttr "displacementShader4.d" "set4.ds";
connectAttr "|bryce__dev__weirdTree__1_11|weirdTree2|uvunwrap1_0|uvunwrap1_0Shape.iog" "set4.dsm"
		 -na;
connectAttr "set4.msg" "materialInfo6.sg";
connectAttr "wood.msg" "materialInfo6.m";
connectAttr "wood.msg" "materialInfo6.t" -na;
connectAttr "file20.oa" "bump2d4.bv";
connectAttr "file21.oa" "displacementShader4.d";
connectAttr "place2dTexture8.o" "substanceNode5.uv";
connectAttr "place2dTexture8.ofs" "substanceNode5.fs";
connectAttr "substanceNode5.output_basecolor" "Stone_Travertine_basecolor.sbs";
connectAttr "substanceNode5.rsw" "Stone_Travertine_basecolor.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_basecolor.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_basecolor.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_basecolor.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_basecolor.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "Stone_Travertine_basecolor.cpth" "file23.ftn";
connectAttr "place2dTexture8.o" "file23.uv";
connectAttr "place2dTexture8.ofs" "file23.fs";
connectAttr "place2dTexture8.c" "file23.c";
connectAttr "place2dTexture8.tf" "file23.tf";
connectAttr "place2dTexture8.rf" "file23.rf";
connectAttr "place2dTexture8.mu" "file23.mu";
connectAttr "place2dTexture8.mv" "file23.mv";
connectAttr "place2dTexture8.s" "file23.s";
connectAttr "place2dTexture8.wu" "file23.wu";
connectAttr "place2dTexture8.wv" "file23.wv";
connectAttr "place2dTexture8.re" "file23.re";
connectAttr "place2dTexture8.of" "file23.of";
connectAttr "place2dTexture8.r" "file23.ro";
connectAttr "place2dTexture8.n" "file23.n";
connectAttr "place2dTexture8.vt1" "file23.vt1";
connectAttr "place2dTexture8.vt2" "file23.vt2";
connectAttr "place2dTexture8.vt3" "file23.vt3";
connectAttr "place2dTexture8.vc1" "file23.vc1";
connectAttr "substanceNode5.output_ambientocclusion" "Stone_Travertine_ambientocclusion.sbs"
		;
connectAttr "substanceNode5.rsw" "Stone_Travertine_ambientocclusion.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_ambientocclusion.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_ambientocclusion.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_ambientocclusion.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_ambientocclusion.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "Stone_Travertine_ambientocclusion.cpth" "file24.ftn";
connectAttr "place2dTexture8.o" "file24.uv";
connectAttr "place2dTexture8.ofs" "file24.fs";
connectAttr "place2dTexture8.c" "file24.c";
connectAttr "place2dTexture8.tf" "file24.tf";
connectAttr "place2dTexture8.rf" "file24.rf";
connectAttr "place2dTexture8.mu" "file24.mu";
connectAttr "place2dTexture8.mv" "file24.mv";
connectAttr "place2dTexture8.s" "file24.s";
connectAttr "place2dTexture8.wu" "file24.wu";
connectAttr "place2dTexture8.wv" "file24.wv";
connectAttr "place2dTexture8.re" "file24.re";
connectAttr "place2dTexture8.of" "file24.of";
connectAttr "place2dTexture8.r" "file24.ro";
connectAttr "place2dTexture8.n" "file24.n";
connectAttr "place2dTexture8.vt1" "file24.vt1";
connectAttr "place2dTexture8.vt2" "file24.vt2";
connectAttr "place2dTexture8.vt3" "file24.vt3";
connectAttr "place2dTexture8.vc1" "file24.vc1";
connectAttr "substanceNode5.output_metallic" "Stone_Travertine_metallic.sbs";
connectAttr "substanceNode5.rsw" "Stone_Travertine_metallic.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_metallic.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_metallic.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_metallic.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_metallic.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "Stone_Travertine_metallic.cpth" "file25.ftn";
connectAttr "place2dTexture8.o" "file25.uv";
connectAttr "place2dTexture8.ofs" "file25.fs";
connectAttr "place2dTexture8.c" "file25.c";
connectAttr "place2dTexture8.tf" "file25.tf";
connectAttr "place2dTexture8.rf" "file25.rf";
connectAttr "place2dTexture8.mu" "file25.mu";
connectAttr "place2dTexture8.mv" "file25.mv";
connectAttr "place2dTexture8.s" "file25.s";
connectAttr "place2dTexture8.wu" "file25.wu";
connectAttr "place2dTexture8.wv" "file25.wv";
connectAttr "place2dTexture8.re" "file25.re";
connectAttr "place2dTexture8.of" "file25.of";
connectAttr "place2dTexture8.r" "file25.ro";
connectAttr "place2dTexture8.n" "file25.n";
connectAttr "place2dTexture8.vt1" "file25.vt1";
connectAttr "place2dTexture8.vt2" "file25.vt2";
connectAttr "place2dTexture8.vt3" "file25.vt3";
connectAttr "place2dTexture8.vc1" "file25.vc1";
connectAttr "substanceNode5.output_normal" "Stone_Travertine_normal.sbs";
connectAttr "substanceNode5.rsw" "Stone_Travertine_normal.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_normal.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_normal.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_normal.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_normal.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "Stone_Travertine_normal.cpth" "file26.ftn";
connectAttr "place2dTexture8.o" "file26.uv";
connectAttr "place2dTexture8.ofs" "file26.fs";
connectAttr "place2dTexture8.c" "file26.c";
connectAttr "place2dTexture8.tf" "file26.tf";
connectAttr "place2dTexture8.rf" "file26.rf";
connectAttr "place2dTexture8.mu" "file26.mu";
connectAttr "place2dTexture8.mv" "file26.mv";
connectAttr "place2dTexture8.s" "file26.s";
connectAttr "place2dTexture8.wu" "file26.wu";
connectAttr "place2dTexture8.wv" "file26.wv";
connectAttr "place2dTexture8.re" "file26.re";
connectAttr "place2dTexture8.of" "file26.of";
connectAttr "place2dTexture8.r" "file26.ro";
connectAttr "place2dTexture8.n" "file26.n";
connectAttr "place2dTexture8.vt1" "file26.vt1";
connectAttr "place2dTexture8.vt2" "file26.vt2";
connectAttr "place2dTexture8.vt3" "file26.vt3";
connectAttr "place2dTexture8.vc1" "file26.vc1";
connectAttr "substanceNode5.output_height" "Stone_Travertine_height.sbs";
connectAttr "substanceNode5.rsw" "Stone_Travertine_height.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_height.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_height.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_height.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_height.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "Stone_Travertine_height.cpth" "file27.ftn";
connectAttr "place2dTexture8.o" "file27.uv";
connectAttr "place2dTexture8.ofs" "file27.fs";
connectAttr "place2dTexture8.c" "file27.c";
connectAttr "place2dTexture8.tf" "file27.tf";
connectAttr "place2dTexture8.rf" "file27.rf";
connectAttr "place2dTexture8.mu" "file27.mu";
connectAttr "place2dTexture8.mv" "file27.mv";
connectAttr "place2dTexture8.s" "file27.s";
connectAttr "place2dTexture8.wu" "file27.wu";
connectAttr "place2dTexture8.wv" "file27.wv";
connectAttr "place2dTexture8.re" "file27.re";
connectAttr "place2dTexture8.of" "file27.of";
connectAttr "place2dTexture8.r" "file27.ro";
connectAttr "place2dTexture8.n" "file27.n";
connectAttr "place2dTexture8.vt1" "file27.vt1";
connectAttr "place2dTexture8.vt2" "file27.vt2";
connectAttr "place2dTexture8.vt3" "file27.vt3";
connectAttr "place2dTexture8.vc1" "file27.vc1";
connectAttr "substanceNode5.output_roughness" "Stone_Travertine_roughness.sbs";
connectAttr "substanceNode5.rsw" "Stone_Travertine_roughness.rsw";
connectAttr "substanceNode5.cext" "Stone_Travertine_roughness.cext";
connectAttr "substanceNode5.hext" "Stone_Travertine_roughness.hext";
connectAttr "substanceNode5.cfld" "Stone_Travertine_roughness.cprx";
connectAttr "place2dTexture8.o" "Stone_Travertine_roughness.uv";
connectAttr "place2dTexture8.ofs" "Stone_Travertine_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file28.ws";
connectAttr "Stone_Travertine_roughness.cpth" "file28.ftn";
connectAttr "place2dTexture8.o" "file28.uv";
connectAttr "place2dTexture8.ofs" "file28.fs";
connectAttr "place2dTexture8.c" "file28.c";
connectAttr "place2dTexture8.tf" "file28.tf";
connectAttr "place2dTexture8.rf" "file28.rf";
connectAttr "place2dTexture8.mu" "file28.mu";
connectAttr "place2dTexture8.mv" "file28.mv";
connectAttr "place2dTexture8.s" "file28.s";
connectAttr "place2dTexture8.wu" "file28.wu";
connectAttr "place2dTexture8.wv" "file28.wv";
connectAttr "place2dTexture8.re" "file28.re";
connectAttr "place2dTexture8.of" "file28.of";
connectAttr "place2dTexture8.r" "file28.ro";
connectAttr "place2dTexture8.n" "file28.n";
connectAttr "place2dTexture8.vt1" "file28.vt1";
connectAttr "place2dTexture8.vt2" "file28.vt2";
connectAttr "place2dTexture8.vt3" "file28.vt3";
connectAttr "place2dTexture8.vc1" "file28.vc1";
connectAttr "file23.oc" "multiplyDivide5.i1";
connectAttr "file24.oc" "multiplyDivide5.i2";
connectAttr "multiplyDivide5.o" "stone1.base_color";
connectAttr "bump2d5.o" "stone1.n";
connectAttr "file28.oa" "stone1.specular_roughness";
connectAttr "file25.oa" "stone1.metalness";
connectAttr "stone1.out" "set5.ss";
connectAttr "displacementShader5.d" "set5.ds";
connectAttr "|bryce_dev__rock__1_01|rock1|uvunwrap1_0|uvunwrap1_0Shape.iog" "set5.dsm"
		 -na;
connectAttr "set5.msg" "materialInfo7.sg";
connectAttr "stone1.msg" "materialInfo7.m";
connectAttr "stone1.msg" "materialInfo7.t" -na;
connectAttr "file26.oa" "bump2d5.bv";
connectAttr "file27.oa" "displacementShader5.d";
connectAttr "Ground_Sand_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "projection4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "aiSkyDomeLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Ground_Sand_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "projection1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "projection3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "place3dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "SAND.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "projection5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Ground_Sand_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Ground_Sand_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Ground_Sand_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "projection2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "substanceNode1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "stone.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "Stylized_Stone_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "Stylized_Stone_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "substanceNode2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "file9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "Stylized_Stone_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "Stylized_Stone_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "Stylized_Stone_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "Stylized_Stone_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "Organic_Flesh_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "file15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "Organic_Flesh_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "Organic_Flesh_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "projection7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "projection8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "projection9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "place3dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "projection6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "flesh.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "Organic_Flesh_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "substanceNode3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "Organic_Flesh_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "file14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "place2dTexture6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "projection10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "set4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "Wood_Bark_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "multiplyDivide4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "Wood_Bark_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "Wood_Bark_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "file22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "wood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "displacementShader4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "substanceNode4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "Wood_Bark_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "Wood_Bark_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "bump2d4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "file21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "Wood_Bark_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "Stone_Travertine_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "file23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "Stone_Travertine_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "file24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "Stone_Travertine_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "Stone_Travertine_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "Stone_Travertine_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "Stone_Travertine_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "bump2d5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "file28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "set5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "multiplyDivide5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "stone1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "displacementShader5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "substanceNode5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[17].dn"
		;
connectAttr "place2dTexture8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "nParticlePointSE.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "set4.pa" ":renderPartition.st" -na;
connectAttr "set5.pa" ":renderPartition.st" -na;
connectAttr "npPointBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "npPointVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "SAND.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "stone.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "flesh.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "wood.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "stone1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place3dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "projection10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Ground_Sand_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Ground_Sand_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Ground_Sand_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Ground_Sand_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Ground_Sand_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Stone_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Organic_Flesh_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Organic_Flesh_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Organic_Flesh_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Organic_Flesh_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "Organic_Flesh_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "Wood_Bark_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_ambientocclusion.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stone_Travertine_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of Unit3Assignment.ma
