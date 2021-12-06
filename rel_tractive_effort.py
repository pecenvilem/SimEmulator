import numpy as np
import matplotlib.pyplot as plt

def mu(speed):
    """Vypočítá součinitel adheze pro danou rychlost pohybu"""
    return (9000 / (speed + 42) + 116) * 1e-3


mass = 90 * 1000
g = 9.81
P = 6400 * 1000
spd = np.linspace(0, 250, num=1000)
pwr_lim = P / (spd/3.6)
adhes_lim = mass * g * mu(spd) * 0.8

plt.plot(spd, pwr_lim/1000, label='Výkon')
plt.plot(spd, adhes_lim/1000, label='Adheze')
plt.ylim(0, 400)
plt.legend()

plt.show()
