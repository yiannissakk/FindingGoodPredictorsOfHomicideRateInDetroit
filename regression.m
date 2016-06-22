function klm = regression (filename)
load(filename);
x1 = data(:, 1);
x2 = data(:, 2);
x3 = data(:, 3);
x4 = data(:, 4);
x5 = data(:, 5);
x6 = data(:, 6);
x7 = data(:, 7);
x8 = data(:, 8);
x9 = data(:, 9);
x10 = data(:, 10);
xx = [x2 x3 x4 x5 x6 x7 x8];
A=0;
k=0;
for n = 1:7
    xi = xx(:,n); 
    X = [ones(size(x1,1),1) x1 x9 xi];
    b = regress(x10, X);
    b0 = b(1).*ones(13,1);
    Y =  b0+ b(2).*x1+b(3).*x9+b(4).*xi;
    D = (x10-Y).^2;
    Dsum = sum(D);
    if n == 1
        A = Dsum;
        k = n;
    else
        if Dsum < A
            A = Dsum;
            k = n;
        end
    end
    



end
klm = [A,(k+1)];
end
