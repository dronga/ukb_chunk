for i in {22..1}
do
  zcat ../chr${i}impv1.qc.MAF0005.INFO04.nochr.prjc.gen.gz | split -a 4 -d -l 5000 - chr${i}_split_5k_  
ls chr${i}_split_5k_0* | ./parallel -j4 "mv {} {}.gen; gzip -v {}.gen -f"
done

ls -d1 chr* > splitfiles_all.txt