tel = [1];
n1 = [0.2 1]; 
n2 = [0.1 1]; 
d1 = tf(tel,n1);
d2 = tf(tel,n2);
d3 = tf(1,[1 0]);
sysol = d1 * d2 * d3;

%margin(sysol); 

%figure, margin(Kr*sysol)

%[Gm,Pm,Wcg,Wcp] = margin(sysol)

%sysgl = feedback(Kr*sysol, 1)
%step(sysgl)
%figure, bode(sysgl)

%w = [3 : 0.001 : 4];
%[M,F] = bode(sysol,w);
%[afw,pos] = min(abs( F+145))
%w(pos)
%kr = 1/M(pos)

%rlocus(sysol)
%sgrid
%[kmarg,polen] = rlocfind(sysol)

%[k7,polen] = rlocfind(sysol)
%sysgl = feedback(K7*sysol, 1)
%step(sysgl)

%diary off