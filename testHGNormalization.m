MAXERROR = 1e-2;
%% Test g=0, HG1D
g = 0;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

%% Test g=.3, HG1D
g = 0.3;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

%% Test g=.5, HG1D
g = 0.5;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

%% Test g=.8, HG1D
g = 0.8;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.9, HG1D
g = 0.9;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.95, HG1D
g = 0.95;
i1d = integral(@(x) HG1D(x, g), -1, 1);
assert(abs(i1d-1)<MAXERROR);

M=80;
s = FEMAngularGrid(M);
W = s.w;
eta = s.ang(:,3);
onel = ones(s.order,1);
%% Test g=0, HG3D
g = 0;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.3, HG3D
g = 0.3;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.5, HG3D
g = 0.5;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.8, HG3D
g = 0.8;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.9, HG3D
g = 0.9;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);

%% Test g=0.95, HG3D
g = 0.95;
i1d = onel'*W*HG3D(eta,g);
assert(abs(i1d-1)<MAXERROR);
