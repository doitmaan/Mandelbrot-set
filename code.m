
for n = 1:1001
    for m = 1:1001
        x(n) = -1 + 0.002*(n-1);
        y(m) = -1 + 0.002*(m-1);
        c(n,m) = x(n) + 1i*y(m);
    end
end
z = 0;
I = 0
for i=1:512
  z = z.^2 + c;
    numiter = abs(z) <= 2;
    I = I + numiter;
end
image(I)
colormap(flipud(jet(512)))


