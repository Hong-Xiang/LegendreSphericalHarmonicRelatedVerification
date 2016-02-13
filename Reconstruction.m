function f = Reconstruction(x, coef)
MaxN = numel(coef)-1;
f = zeros(size(x));
for l = 0 : MaxN
    f = f + coef(l+1)*LegendreBasis(l, x);
end
end

