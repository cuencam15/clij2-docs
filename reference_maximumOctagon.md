## maximumOctagon
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies a maximum filter with kernel size 3x3 n times to an image iteratively. 

Odd iterations are done with box neighborhood, even iterations with a diamond. 
Thus, with n > 2, the filter shape is an octagon. The given number of iterations makes the filter 
result very similar to minimum sphere. Approximately:radius = iterations - 2

### Usage in ImageJ macro
```
Ext.CLIJ2_maximumOctagon(Image input, ByRef Image destination, Number iterations);
```




### Usage in Java


<details>

<summary>
clij2.maximumOctagon(input, destination, iterations);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
int iterations = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumOctagon(input, destination, iterations);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.maximumOctagon(input, destination, iterations);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
iterations = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximumOctagon(input, destination, iterations);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.maximumOctagon(input, destination, iterations);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
iterations = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumOctagon(input, destination, iterations);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)
