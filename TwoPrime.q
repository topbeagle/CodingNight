`we set ();prime:2 3;oldx:5
[{if[(not (x mod 2) = 0) and (not (x mod 3) = 0) ;[{$[(x=oldx);[ `we set we,(x mod y)];[(if[(not any 0=we);[`prime set prime,oldx]]);`we set ();`oldx set x ]  ] }[x; ]  each reverse[2+til ceiling[sqrt[x]]]]  ] } each 3+til 1000000;
sum prime
