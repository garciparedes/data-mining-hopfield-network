#
# Self-organizing map
#
# Sergio Garcia Prado
# garciparedes.me
#
clear all


x = [
    -1, -1,  1;
     1, -1, -1;
     1,  1,  1;
    -1,  1,  1;
    -1, -1, -1;
     1,  1, -1;
]

x_p = [
     1, -1,  1;
    -1,  1, -1;
];

w = zeros(size(x,2),size(x,2));
for i = 1:size(w,1);
    for j = 1:size(w,2);
        if( i == j);
            w(i,j) = 0;
        else;
            sum1 = 0;
            for p = 1: size(x_p,1);
                sum1 =+  x_p(p,i) * x_p(p,j);
            endfor;
            w(i,j) = sum1;
        endif;
    endfor;
endfor;

w
s = x;
do;
    for index = 1:size(s,1);
        for i = 1:size(s,2);
            s_old= s(index,:);
            temp = sum(w(i,:) .* s_old);
            if (temp > 0);
                s(index,i) = 1;
            elseif(temp < 0);
                s(index,i) = -1;
            endif;
        endfor;
    endfor;
until(s_old == s(index,:));
s
