% The inputs are the row vectors input into the transfer function.

function Output = calcZetaOmegaNOmegaD(numerator, denominatorSecLast, ...
    denominatorLast)

% k omegan ^2 is in the numerator
% The denom. middle is 2*zeta*omegan = middle cooeficient
% The denom. end is omegan^2

omegan = denominatorLast^0.5;
k = numerator/denominatorLast;
zeta = denominatorSecLast/(2*omegan);

Output = [k omegan zeta];

end