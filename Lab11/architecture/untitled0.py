# -*- coding: utf-8 -*-
"""
Created on Wed Dec  9 10:07:29 2020

@author: user
"""

import numpy as np

c2 = 0b0111_0110_0100
c4 = 0b0101_1010_1000
c6 = 0b0011_0000_1111
x  = np.array ([[322],[324],[327],[326]],dtype=np.int)
A  = np.array ([[ c4, c4, c4, c4],
               [ c2, c6,-c6,-c2],
               [ c4,-c4,-c4, c4],
               [ c6,-c2, c2,-c6]],dtype=np.object)
Z  = np.dot(A,x)
print('z0=',Z[0])
print('z1=',Z[1])
print('z2=',Z[2])
print('z3=',Z[3])
"""
x = np.array ([[1],[2],[1],[2]],dtype=np.int)
A = np.array ([[ 1,0,0,1],
               [ 0,0,1,1],
               [ 1,0,0,0],
               [ 0,1,0,0]],dtype=np.object)
"""