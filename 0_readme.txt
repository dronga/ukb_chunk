before running:

1) download GNU parallel https://www.gnu.org/software/parallel/ to directory (or change path in line 4 of  2_chunk.sh)
2) change file paths to input and output directories in 1_split.qsub
3) make your sample file with your desired phenotypes (can provide separate script), and edit 3_snptest.sh

to run:

on rescomp "qsub 1_split.qsub"
on pootle, dougal, etc: "bash -xv 2_chunk.sh"
...
make new sample file
..
on rescomp "qsub 3_snptest.qsub"
