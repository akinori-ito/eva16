rm eva16.*gf eva16.*pk eva16.*tfm
for mode in ljfour #nexthi
do
  for mag in 0.5 1 1.414 2
  do
    mf "\mode:=$mode; mag:=$mag; nonstopmode; input eva16" 
  done
done
for e in eva16.*gf
do
  gftopk $e `expr $e : '\(.*\)gf'`pk
  rm $e
done
latex voytest.tex
xdvi -s 3 voytest.dvi
