function m = solve_by_be(f,tRange,initVal)

m    = zeros(size(tRange));
m(1) = initVal;

for kk = 2:(numel(tRange))
    m(kk) = m(kk-1) + ( tRange(kk) - tRange(kk-1) ) * f( tRange(kk) , m(kk-1) );
end

end % function
