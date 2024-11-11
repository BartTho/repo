import matplotlib.pyplot as plt
import numpy as np

Aatal = 10

x = np.arange(0, Aatal*np.pi, 0.1)
y = np.sin(x)
plt.plot(x, y, color='green')
plt.xlabel('tijd(s)')
plt.ylabel('Waarde')
plt.savefig('sinus.png')
plt.show()
