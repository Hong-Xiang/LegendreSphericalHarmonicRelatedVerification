function y = PolyBasic(x, a)
    Nmax = numel(a)-1;
    y = zeros(size(x));
    for i = 0 : Nmax
        xtmp = x.^i;
        y = y + a(i+1)*xtmp;
    end
    y = reshape(y, numel(y), 1);
end

