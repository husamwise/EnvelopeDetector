function m = solve_by_be(f,tRange,initVal)

m    = zeros(size(tRange));
m(1) = initVal;

for kk = 1:(numel(tRange)-1)
    m(kk+1) = m(kk) + ( tRange(kk+1) - tRange(kk) ) * f( tRange(kk) , m(kk) );
end

end % function
