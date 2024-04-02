from netCDF4 import Dataset
import xarray as xr
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import ScalarFormatter

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
num=288

fig = plt.figure()
ax = fig.gca(projection='3d')
X = np.arange(-10, 10, 1)
Y = np.arange(0, 128, 1)
X, Y = np.meshgrid(X, Y)

fmt =ScalarFormatter(useMathText=True)
fmt.set_powerlimits((0, 0))

surf = ax.plot_surface(X, Y, a[num,:,:].T, cmap=plt.cm.jet,
                       linewidth=10, antialiased=True)

x_ticks = np.linspace(-10, 10, 5)
plt.xticks(range(-10,10,5))
#z_formatter=ScalarFormatter(useMathText=True)
#ax.zaxis.set_major_formatter(z_formatter)
ax.zaxis.set_major_formatter(fmt)
#plt.imshow(a[1,:,:],cmap=plt.cm.hot)
plt.colorbar(surf, shrink=0.4, aspect=10, format=fmt)


xx = -10 * np.ones(128)
yy = np.linspace(0, 127, 128, dtype=int)
plt.plot(xx, yy, a[num, 9, :].T, linewidth=1.5, color='r')
plt.plot(xx, yy, a[num, 10, :].T, linewidth=1.5, color='g')
plt.plot(xx, yy, a[num, 11, :].T, linewidth=1.5, color='b')

#for i in range(5,5):
  #  yy = np.linspace(0, 127, 128, dtype=int)
   # plt.plot(xx, yy, a[1, i+10, :].T, linewidth=1, color='g')

ax.set_xlabel('Doppler(kHz)')
ax.set_ylabel('Delay(chips)')
ax.set_zlabel('Power(raw)')

plt.show()