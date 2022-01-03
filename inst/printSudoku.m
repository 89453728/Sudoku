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
## Print sudoku in blocks of 3x3 elements with gap of 1 space in rows 
## and in columns.
##
## @example 
##      s = printSudoku(lvl)
## 
##      0   0   0    0   0   9    0   0   5
##      8   0   7    0   0   4    9   0   0
##      0   9   0    7   0   6    5   4   8
##
##      9   0   0    5   0   8    7   6   0
##      0   0   0    0   9   0    0   5   7
##      0   0   9    6   0   7    0   8   0
##
##      0   0   6    0   8   0    4   0   9
##      0   7   0    0   0   5    8   9   6
##      0   0   0    0   0   0    6   0   0
##
## @end example
##
## Reference:
## https://en.wikipedia.org/wiki/Sudoku
##


function p=printSudoku(s)
    ss = size(s);
    if (ss(1) ~= 9 || ss(2)~=9)
        error("s must be square 9x9 matrix");
    endif
    for a = 1:9
        for b = 1:9
            printf("%d ",s(a,b));
            if(mod(b,3) == 0)
                printf(" ");
            endif
        endfor
        printf("\n");
        if(mod(a,3)==0)
            printf("\n");
        endif
    endfor
endfunction
