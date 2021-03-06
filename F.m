function F = F(V, Ed)
% generates the function F(r)
% input r - radius in fm, Ed - binding energy, V - the current value V(r) for the
% Mallfliet-Tjon potential.
% output F(r) - function evaluated at point r

% masses for proton and neutron in MeV/c^2; thus we need hbar*c
m_p = 938.272;  % MeV/c^2
m_n = 939.565;  % MeV/c^2
my = m_p*m_n/(m_p+m_n); 
h_barc = 197.327;  %MeV*fm
K = 2*my/h_barc.^2;

F = K*(V-Ed);

end 