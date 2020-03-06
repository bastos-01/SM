p = [ 14 64 5 10 7 ]'/100;
H = p' * log2(1./p);
fprintf("<Entropia> %f \n", H); 

nbits = [ 2 1 4 3 4 ]';
N = 1000;
bps = (N*p'*nbits)/N;
fprintf("<BPS> %f \n", bps);