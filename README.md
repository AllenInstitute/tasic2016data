# tasic2016data

#### Data from Tasic, _et al._, Nature Neuroscience (2016).

## Overview
This package is intended as a convenient way to load the scRNA-seq dataset published in Tasic, _et al._ (2016) in R for analysis.

It contains data for all cells released on GEO for this article, deposited at accession [GSE71585](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE71585)

There are only 3 data objects in this package, and no functions. They are:  
`tasic_2016_anno`: A data.frame with annotations for each sample. See `?tasic_2016_anno` for descriptions of each column.  
`tasic_2016_counts`: A matrix of read counts from RSEM analysis for each gene used in Tasic, _et al._ (2016).  
`tasic_2016_fpkm`: A matrix of FPKM values for each gene used in Tasic, _et al._ (2016).  

## Installation

The package can be installed from Github using the devtools package:

```r
devtools::install_github("AllenInstitute/tasic2016data")
```

Once installed, the dataset will be placed in the user's R LazyLoad database, and can be easily retrieved:

```r
library(tasic2016data)

annotations <- tasic_2016_anno
counts <- tasic_2016_counts
```

## Getting clustered samples

Note that this dataset has all cells from GSE71585, including those that failed QC, those from retrograde virus injections, and those that fell into outlier clusters.

To obtain the set of cells that was used for clustering in Tasic, _et al._ (2016), you can filter annotations on the core_intermediate and cre_driver_1 columns

```r
clustered_samples <- tasic_2016_anno$core_intermediate != "unclassified" & tasic_2016_anno$cre_driver_1 != "CAV2-Cre"
clustered_anno <- tasic_2016_anno[clustered_samples, ]
clustered_counts <- tasic_2016_counts[clustered_anno$sample_name, ]
```

## Citation

If you use this package, please cite the original publication, Tasic, _et al._ (2016). Details can be found using

```r
citation("tasic2016data")
```

## License

The license for this package is available on Github at: [https://github.com/AllenInstitute/tasic2016data/blob/master/LICENSE](https://github.com/AllenInstitute/tasic2016data/blob/master/LICENSE)


## Support

We are not currently supporting this code, but simply releasing it to the community AS IS but are not able to provide any guarantees of support. The community is welcome to submit issues, but you should not expect an active response.

