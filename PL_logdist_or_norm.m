function PL=PL_logdist_or_norm(fc,d,d0,n,sigma)
%对数距离或对数阴影路径损耗模型
lamda=3e8/fc;
PL=-20*log10(lamda/(4*pi*d0))+10*n*log10(d/d0);
if nargin>4
    PL=PL+sigma*randn(size(d));
end;
