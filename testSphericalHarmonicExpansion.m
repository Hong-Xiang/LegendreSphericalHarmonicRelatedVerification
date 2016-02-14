M = 20;
s = FEMAngularGrid(M);
mu = s.ang(:,1);
xi = s.ang(:,2);
eta = s.ang(:,3);

g = 0.5;
f = HG3D(mu, g);

MaxL = 5;
coe = zeros((MaxL+1)^2,1);
fr = zeros(size(f));
for l = 0 : MaxL
    for m = -l : l 
        y = SphericalHarmonicBasis(mu, xi, eta, l, m);
        coe(ilm(l,m)) = f'*s.w*y;
        fr = fr + coe(ilm(l,m))*y;
    end
end
x = 1 : numel(f);
plot(x, f, x, fr);
