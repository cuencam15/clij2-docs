// CLIJ example macro: benchmarkFillHoles.ijm
//
// This macro shows how fast it is to fill holes in a 
// binary image in the GPU.
//
// Author: Robert Haase
//         March 2020
// ---------------------------------------------


// Get test data
open("https://github.com/clij/clij2-tests/raw/master/src/test/resources/skeleton_test.tif");
run("Scale...", "x=10 y=10 width=2560 height=2560 interpolation=Bilinear average create");
input = getTitle();

filled_holes = "filled_holes";



setThreshold(1, 1);
run("Convert to Mask");

// fill holes in the binary image
for (i = 0; i < 10; i++) {
	run("Duplicate...", " ");
	time = getTime();
	run("Fill Holes");
	print("Fill holes on CPU took " + (getTime() - time) + " msec");
	close();
}

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// fill holes in the binary image
for (i = 0; i < 10; i++) {
	time = getTime();
	Ext.CLIJ2_binaryFillHoles(input, filled_holes);
	print("Fill holes on GPU took " + (getTime() - time) + " msec");
}



// show result
Ext.CLIJ2_pullBinary(input);
Ext.CLIJ2_pullBinary(filled_holes);
