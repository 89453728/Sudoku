##
## genSudoku.m
##
## Copyright (C) 2020-2021 Yassin Achengli <0619883460@uma.es>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; see the file LICENSE.  If not, see
## <https://www.gnu.org/licenses/>.
## 
## Create sudoku matrix 9x9 dimension with 3 levels of dificulty
## @example 
##      s = genSudoku(lvl)
## 
##      0   0   0   0   0   9   0   0   5
##      8   0   7   0   0   4   9   0   0
##      0   9   0   7   0   6   5   4   8
##      9   0   0   5   0   8   7   6   0
##      0   0   0   0   9   0   0   5   7
##      0   0   9   6   0   7   0   8   0
##      0   0   6   0   8   0   4   0   9
##      0   7   0   0   0   5   8   9   6
##      0   0   0   0   0   0   6   0   0
##  
## Function getRndPos: takes uncomplete sudoku matrix and let r and c 
## as row and column where the sudoku is empty (has a 0). The 
## coordinates are chosen by uniform random distribution, if you want 
## to use another distribution, change the line of getRndPos where is 
## writed rand
## @end example
##
## Reference:
## https://en.wikipedia.org/wiki/Sudoku
##


function s = genSudoku (lvl)
    s = zeros(9,9);
    P = 0;
    if (lvl == 1)
        P = 50;
    elseif (lvl == 2)
        P = 34;
    elseif (lvl == 3)
        P = 20;
    else
        error("level must be between 1 and 3");
    endif
    
    Av = 1:9;
    for it = 1:P
        [r,c] = getRndPos(s);
        for a = Av
            if (length(s(r,s(r,:) == a)) == 0 && length(s(s(:,c) == a,c)) == 0)
                s(r,c) = a;
            endif
        endfor
    endfor
endfunction


function [r,c] = getRndPos(s)
    free = zeros(9,9);
    ss = size(s);
    if(ss(1) ~= 9 || ss(2) ~=9)
        error("must be square 9x9 matrix");
    end
    for a = 1:9
        for b = 1:9
            if (s(a,b) == 0)
                free(a,b) = 1;
            end
        end
    end
    r = randint(1,9);
    count = 0;
    while(free(r,:)==zeros(1,9) & count < 10)
        if(r < 9)
            r+=1;
        else 
            r = 1;
        end
        count+=1;
    end    
    pos=[];
    for a = 1:9
        if(free(r,a)==1)
           pos=[pos a]; 
        end
    end
    c = randint(1,length(pos));
    c = pos(c);
end

function r = randint(a,b)
    r = round(rand()*(b-a) + a);
end
