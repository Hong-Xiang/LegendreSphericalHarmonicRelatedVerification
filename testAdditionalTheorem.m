MaxL = 8;

M = 4;
s = FEMAngularGrid(M);
cost = s.ang*s.ang';
cost = min(cost, 1);
cost = max(cost, -1);

for l = 0 : MaxL
    
    pcost = zeros(s.order);
    ycost = zeros(s.order);
    for ia1 = 1 : s.order
        for ia2 = 1 : s.order
                        pcost(ia1, ia2) = LegendreBasis(l, cost(ia1, ia2));
%             tmp = legendre(l, cost(ia1,ia2));
%             pcost(ia1, ia2) = tmp(1);
            ycost(ia1, ia2) = MulYY(s.ang(ia1,:), s.ang(ia2,:), l);
        end
    end
    
    
    err = abs(pcost - ycost);
    max(err(:))
end

