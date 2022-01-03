## Sudoku for Octave

+-----+-----+-----+

|5 1 3|6 8 7|2 4 9|

|8 4 9|5 2 1|6 3 7|

|2 6 7|3 4 9|5 8 1|

+-----+-----+-----+

|1 5 8|4 6 3|9 7 2|

|9 7 4|2 1 8|3 6 5|

|3 2 6|7 9 5|4 1 8|

+-----+-----+-----+

|7 8 2|9 3 4|1 5 6|

|6 3 5|1 7 2|8 9 4|

|4 9 1|8 5 6|7 2 3|

+-----+-----+-----+


Create sudoku matrix 9x9 dimension with 3 levels of dificulty

#### getRndPos
Function getRndPos: takes uncomplete sudoku matrix and let 'r' and 'c' as row and column where the sudoku is empty (has a 0). The coordinates are chosen by uniform random distribution, if you want to use another distribution, change the line of getRndPos where is writed rand

#### License 
 Copyright (C) 2020-2021 Yassin Achengli <0619883460@uma.es> 

This program is free software: you can redistribute it and/or modify  it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details. 
 
You should have received a copy of the GNU General Public License along with this program; see the file LICENSE.  If not, see <https://www.gnu.org/licenses/>.

#### Reference 
> https://en.wikipedia.org/wiki/Sudoku
