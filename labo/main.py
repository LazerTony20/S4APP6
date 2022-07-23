#
# Copyright (c) 2011 Christopher Felton
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# The following is derived from the slides presented by
# Alexander Kain for CS506/606 "Special Topics: Speech Signal Processing"
# CSLU / OHSU, Spring Term 2011.

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import patches
from matplotlib.figure import Figure
from matplotlib import rcParams


def zplane(b, a, filename=None):
    """Plot the complex z-plane given a transfer function.
    """
import matplotlib.pyplot as plt
import numpy as np
from scipy import signal
from zplane import zplane


def probleme_1(fe: float):
    """
    ProblÃ¨me 1: Filtre IIR elliptique
    """

    # Filter specifications
    fc_low: float = 900
    fc_high: float = 1100
    filter_order: int = 2
    pass_band_ripple_db: float = 1
    stop_band_attn_db: float = 40

    # Filter coefficients
    [b, a] = signal.ellip(
        N=filter_order,
        rp=pass_band_ripple_db,
        rs=stop_band_attn_db,
        Wn=[fc_low, fc_high],
        fs=fe,
        btype="bandpass",
        output="ba",
    )

    #num2
    plt.figure(2)
    plt.grid()
    zplane(b, a)
    # Frequency response
    [w, h_dft] = signal.freqz(b, a, worN=10000, fs=fe)
    plt.figure()
    plt.semilogx(w, 20 * np.log10(np.abs(h_dft)))
    plt.title("Réponse en fréquence du filtre elliptique (ordre 2)")
    plt.xlabel("Fréquence [Hz]")
    plt.ylabel("Gain [dB]")
    plt.grid(which="both", axis="both")
    plt.tight_layout()

    #afficher num 3

   # [c, d] = signal.butter(N=1000, Wn=fc, btype="low", fs=fe, output="ba")
    imp: np.ndarray = signal.unit_impulse(1000)
    iir_h: np.ndarray = signal.lfilter(b=b, a=a, x=imp)
    plt.figure('num 3')
    plt.plot(iir_h)


    #afficher num4

    # Filter coefficients
    sos = signal.ellip(
        N=filter_order,
        rp=pass_band_ripple_db,
        rs=stop_band_attn_db,
        Wn=[fc_low, fc_high],
        fs=fe,
        btype="bandpass",
        output="sos",
    )

    # num5

    a2_13 = np.round(a * (2 ** 13))
    b2_13 = np.round(b * (2 ** 13))
    sos2_13 = np.round(sos * (2 ** 13))
    newsos = sos2_13 / (2 ** 13)

    [w2_13sos, h_dft2_13sos] = signal.sosfreqz(newsos, worN=1000000, fs=fe)

    [w2_13a, h_dft2_13a] = signal.freqz(b2_13, a2_13, worN=10000, fs=fe)



    [wsos, h_dftsos] = signal.sosfreqz(sos, worN=10000, fs=fe)
    plt.figure('num4&5')
    #num4
    plt.semilogx(wsos, 20 * np.log10(np.abs(h_dftsos)))
    #num5
    plt.semilogx(w2_13a, 20 * np.log10(np.abs(h_dft2_13a)))
    plt.semilogx(w2_13sos, 20 * np.log10(np.abs(h_dft2_13sos)), '--')

    plt.title("Réponse en fréquence du filtre elliptique (ordre 2)")
    plt.xlabel("Fréquence [Hz]")
    plt.ylabel("Gain [dB]")
    plt.grid(which="both", axis="both")
    plt.tight_layout()



#num5b

    N2=512
    fe2=20000
    fc2=1000
    fc3=950
    h = signal.firwin(
        numtaps=N2-1,
        cutoff=fc2,
        width=None,
        window='hamming',
        pass_zero='lowpass',
        scale=True,
        fs=fe2,
    )
    h2 = signal.firwin(
        numtaps=N2 - 1,
        cutoff=fc3,
        width=None,
        window='hamming',
        pass_zero='highpass',
        scale=True,
        fs=fe2,
    )

    # imp2: np.ndarray = signal.unit_impulse(1000)
    # iir_h2 = signal.lfilter(b=c, a=d, x=imp2)
    plt.figure('num5b')
    plt.subplot(2,1,1)
    plt.plot(h)

    plt.title("filtre passe-bas reponse impulsionel")
    plt.xlabel("Fréquence [Hz]")
    plt.ylabel("Gain [dB]")
    plt.grid(which="both", axis="both")
    plt.tight_layout()

    plt.subplot(2,1,2)
    plt.plot(h2)


#num5b2
   # newh= np.ndarray = np.append(h, np.zeros(len(h)))
   # newh2=np.ndarray = np.append(h2, np.zeros(len(h2)))
   # hfft=np.fft.fft(newh)
  #  h2fft=np.fft.fft(newh2)



  #  plt.figure('num5b2')
#    plt.plot(h)


    plt.show()

def laboratoire():
    # plt.ion()  # Comment out if using scientific mode!

    fe = 20000
    probleme_1(fe)



    print("Done!")




if __name__ == "__main__":
    laboratoire()
