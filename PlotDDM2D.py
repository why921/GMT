from netCDF4 import Dataset
import xarray as xr
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import ScalarFormatter
fmt =ScalarFormatter(useMathText=True)
fmt.set_powerlimits((0, 0))
#EA
#OI 00 36 270-278; 00 38 0-22;  H00 62 0-51  H00 37 339-343
#THICK 18 63 35-36;
#GWI 18 63 50;  06 50 167-176;
#NI 06 50 183-184
#GI 18 85 159-165; 18 84 256-262
#MEDIUM 18 84 252-255
#land 00 13 291-326



#WA
#THIN H12 00 32-65

#1008OW
#EA H00 05 110-196

#1008SYI
#EA H00 05 281-291    272
#NI H00 05 277-280
#NI H00 04  437-441



a=np.load("E:\GNSSR_DATA\TDS-1\DDM_numpy\\201810\\08\H00\\000005.npy")
num=290
plt.imshow(a[num,:,:].T,cmap=plt.cm.jet, aspect=0.4)

plt.colorbar(format=fmt)
plt.xlabel('Doppler(kHz)')
plt.ylabel('Delay(chips)')
plt.show()