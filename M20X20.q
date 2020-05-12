nums:read0(`:TWENTYX20); 

horsum:{[iteration]
  `row set "I" $ " " vs nums[iteration];
  res:{(*/) row[x + til 4]} each til 17;
  res
  arr:{row[x + til 4]} each til 17;
  top:max res;
  dict:`H_greatest`H_array!(top;arr[first where res=top]);
 dict
 }

versum:{[iteration]
  `row set {first  1#"I" $ " " vs nums[x]} each til 19; 
  res:{(*/) row[x + til 4]} each til 17;
  arr:{row[x + til 4]} each til 17;
  top:max res;
  dict:`V_greatest`V_array!(top;arr[first where res=top]);
 dict
 }

diagnum:{[iteration]
  `diag1 set "I" $ " " vs nums[iteration];
  `diag2 set "I" $ " " vs nums[iteration + 1];
  `diag3 set "I" $ " " vs nums[iteration + 2];
  `diag4 set "I" $ " " vs nums[iteration + 3];
   res:{(*/) diag1[x],diag2[x+1],diag3[x+2],diag4[x+3]} each til 16;
   arr:{diag1[x],diag2[x+1],diag3[x+2],diag4[x+3]} each til 16;
   top:max res; 
   dict:`D_greatest`D_array!(top;arr[first where res=top]);
 dict
 }
diagfinal:{diagnum[x]} each til 16

diagnum2:{[iteration]
  `diag1 set "I" $ " " vs nums[iteration];
  `diag2 set "I" $ " " vs nums[iteration + 1];
  `diag3 set "I" $ " " vs nums[iteration + 2];
  `diag4 set "I" $ " " vs nums[iteration + 3];
   res:{(*/) diag1[x+3],diag2[x+2],diag3[x+1],diag4[x]} each til 16;
   arr:{diag1[x],diag2[x+1],diag3[x+2],diag4[x+3]} each til 16;
   top:max res; 
   dict:`D_greatest`D_array!(top;arr[first where res=top]);
 dict
 }
diagfinal2:{diagnum2[x]} each til 16
0N! "Raw Data";

show diagMax:select by max D_greatest from diagfinal;
show diagMax2:select by max D_greatest from diagfinal2;
/diagMax: first value  exec  from  diagMax;
show horizontal:first desc best:{horsum[x]} each til 19
show vertical:first desc best:{versum[x]} each til 19

0N! "Greatest";

(first value vertical)|(first value horizontal)|(first value  exec  from  diagMax)|(first value  exec  from  diagMax2)
