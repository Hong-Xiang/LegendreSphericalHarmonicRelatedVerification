MAXERROR = 1e-10;
MaxN = 8;

%% Test N-order Polynomial
N = 5;
NTests = 10;
coes = zeros(MaxN,1);
[x, w] = GaussianQ(-1, 1, 0, 0, 2*MaxN);
for itest = 1 : NTests
    a = rand(N,1);
    f0 = PolyBasic(x, a);
    for i = 0 : MaxN
        coes(i+1) = Coefficient(i, f0, x, w);
    end
    f1 = Reconstruction(x,coes);
    err=abs(f0-f1);
    f02 = sum(f0.*f0.*w);
    err2 = sum(err.*err.*w);
    assert(err2/(f02+MAXERROR)<MAXERROR);
end

%% Test Sin
coes = zeros(MaxN,1);
[x, w] = GaussianQ(-1, 1, 0, 0, 2*MaxN);
f0 = sin(x);
for i = 0 : MaxN
    coes(i+1) = Coefficient(i, f0, x, w);
end
f1 = Reconstruction(x,coes);
err=abs(f0-f1);
f02 = sum(f0.*f0.*w);
err2 = sum(err.*err.*w);
assert(err2/(f02+MAXERROR)<MAXERROR);