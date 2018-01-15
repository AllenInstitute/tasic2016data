#' Annotations for V1 single-cell transcriptomic datasets
#'
#' A dataset consisting of descriptive annotation data for all 1679
#' cells characterized in Tasic, et al. (2016).
#'
#' @format A Data Frame with 11 columns and 1679 rows
#' \describe{
#'  \item{sample_id}{An ID that uniquely corresponds to a single cell. Matches column names in tasic_2016_counts and tasic_2016_rpkm}
#'  \item{mouse_line}{Short identifier for the Cre line that the cell was collected from}
#'  \item{cre_driver_1}{Full name of the first Cre line used to generate the mouse line}
#'  \item{cre_driver_2}{Full name of the second Cre line used to generate the mouse line, if used. If not, it will be blank ("")}
#'  \item{cre_reporter}{Full name of the Cre-responsive reporter used to generate the mouse line}
#'  \item{dissection}{Layers of VISp that were dissected. upper corresponds to L1-4; lower to L5-6}
#'  \item{tdTomato}{FACS gate used to collect the cell. tdTomato positive cells expressed tdTomato; tdTomato negative cells had low or no tdTomato fluorescence}
#'  \item{pass_qc_checks}{Flag for cells that did or did not pass initial QC checks. "Y" or "N".}
#'  \item{broad_type}{Broad classification of cell types}
#'  \item{core_intermediate}{Flag for cells that are assigned to "core" or "intermediate" cell type identity based on random forest analysis}
#'  \item{primary_type}{The primary cell type assigned to each cell}
#'  \item{secondary_type}{If a cell is intermediate, the secondary cell type assigned to each cell. If the cell is core, this will be blank ("")}
#'  \itme{aibs_vignette_id}{A unique short cell identifier that is used in the Allen Brain Institute Vignette at http://casestudies.brain-map.org/celltax }
#' }
"tasic_2016_anno"

#' RPKM matrix for single-cell transcriptomic datasets
#'
#' A matrix consisting of RPKM values for all 1679 cells
#' characterized in Tasic, et al. (2016).
#'
#' Each row corresponds to a single gene symbol. Each column corresponds to a single cell.
#'
#' @format A matrix with 1670 columns (cells) and 24,057 rows (genes)
#' \describe{
#'  \item{rows}{Each row corresponds to a single RefSeq gene symbol.}
#'  \item{columns}{Each column is named using a unique cell identifier that corresponds to the sample_id column in the tasic_2016_anno table.}
#' }
#'
"tasic_2016_rpkm"

#' Count matrix for single-cell transcriptomic datasets
#'
#' A matrix consisting of read count values for all 1679 cells
#' characterized in Tasic, et al. (2016).
#'
#' Each row corresponds to a single gene symbol. Each column corresponds to a single cell.
#'
#' @format A matrix with 1670 columns (cells) and 24,057 rows (genes)
#' \describe{
#'  \item{rows}{Each row corresponds to a single RefSeq gene symbol.}
#'  \item{columns}{Each column is named using a unique cell identifier that corresponds to the sample_id column in the tasic_2016_anno table.}
#' }
#'
"tasic_2016_counts"


