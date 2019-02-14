
import os
import sys
from os.path import join
print(__file__)
for root, dirs, files in os.walk('C:\\'):
    for d in dirs:
        if d in ['MSBuild', 'Microsoft.Cpp']:
            print('Found ' + join(root, d))
