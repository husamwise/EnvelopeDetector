function m = solve_by_trpz(f,tRange,initVal)

m    = zeros(size(tRange));
m(1) = initVal;

for kk = 2:(numel(tRange)-1)
    m(kk) =( ( tRange(kk+1) - tRange(kk) ) *( f( tRange(kk+1) , m(kk+1) ) + f( tRange(kk) , m(kk) ) ))*0.5;
end

end % function
