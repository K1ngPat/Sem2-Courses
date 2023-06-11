BEGIN {
  FS=",";
  OFS=",";
}

{
  if($8 ~ /H16/) {
    M++;
  } else if($8 ~ /H1$/) {
    N++;
  } else {
    B++;
  }
}

END {
  print B, N, M;
}
