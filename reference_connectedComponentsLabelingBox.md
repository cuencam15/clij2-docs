## connectedComponentsLabelingBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Performs connected components analysis inspecting the box neighborhood of every pixel to a binary image and generates a label map.

### connectedComponentsLabelingBox often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (2)
* <a href="reference_binaryNot">binaryNot</a> (2)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)


### connectedComponentsLabelingBox is often followed by
* <a href="reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a> (2)
* <a href="reference_maximum2DBox">maximum2DBox</a> (2)
* <a href="reference_getMaximumOfAllPixels">getMaximumOfAllPixels</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_connectedComponentsLabelingBox(Image binary_input, ByRef Image labeling_destination);
```




### Usage in Java


<details>

<summary>
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer binary_input = clij2.push(binary_inputImagePlus);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
//show result
labeling_destinationImagePlus = clij2.pull(labeling_destination);
labeling_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
binary_input = clij2.pushMat(binary_input_matrix);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
% show result
labeling_destination = clij2.pullMat(labeling_destination)

% cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
binary_input_sequence = getSequence();
binary_input = clij2.pushSequence(binary_input_sequence);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
// show result
labeling_destination_sequence = clij2.pullSequence(labeling_destination)
Icy.addSequence(labeling_destination_sequence);
// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)
