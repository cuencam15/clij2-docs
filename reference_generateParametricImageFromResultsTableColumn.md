## generateParametricImageFromResultsTableColumn
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Take a labelmap and a column from the results table to replace label 1 with the 1st value in the vector. 

Note that indexing in the table column starts at zero. The results table should contain a line at the beginningrepresenting the background.


### Usage in ImageJ macro
```
Ext.CLIJ2_generateParametricImageFromResultsTableColumn(Image label_map, ByRef Image parametric_image_destination, String column);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)
