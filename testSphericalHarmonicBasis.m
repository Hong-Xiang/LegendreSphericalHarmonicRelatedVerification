%% Test I Orthorgonality & Normalization
MAXERROR = 1e-1;
MaxL = 8;
TotalBasis = (MaxL+1)^2;
lvalue = zeros(TotalBasis,1);
mvalue = zeros(TotalBasis,1);
intRsu = zeros(TotalBasis);
for l0 = 0 : MaxL
    for m0 = -l0 : l0
        lvalue(ilm(l0,m0)) = l0;
        mvalue(ilm(l0,m0)) = m0;
    end
end
M = 40;
s = FEMAngularGrid(M);
W = s.w;
mu = s.ang(:,1);
xi = s.ang(:,2);
eta = s.ang(:,3);
for id1 = 1 : TotalBasis
    for id2 = 1 : TotalBasis
        f1 = SphericalHarmonicBasis(mu,xi,eta,lvalue(id1),mvalue(id1));
        f2 = SphericalHarmonicBasis(mu,xi,eta,lvalue(id2),mvalue(id2));
        tmp = f1'*W*f2;
        intRsu(id1, id2) = tmp;
    end
end
intRsu(abs(intRsu-1) < MAXERROR) = 1;
intRsu(abs(intRsu) < MAXERROR) = 0;
assert(norm(intRsu-eye(TotalBasis)) < MAXERROR);
%% Test II Normailization
%% Test III Expansion And Reconstruction