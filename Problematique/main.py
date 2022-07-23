import matplotlib.pyplot as plt
import numpy as np
from scipy import signal



#filtre fir passe bas
fc=500
N=256
fe=20000

h = signal.firwin(
    numtaps=N ,
    cutoff=fc,
    width=None,
    window='blackman',
    pass_zero='lowpass',
    scale=True,
    fs=fe

)



#filtre fir passe haut
fc2=4490



h2 = signal.firwin(
    numtaps=N-1,
    cutoff=fc2-1,
    width=None,
    window='blackman',
    pass_zero='highpass',
    scale=True,
    fs=fe


)


#filtre pass-bande 1000+-500
fc_low=500
fc_high=1500


h3 = signal.firwin(
    numtaps=N,
    cutoff=[fc_low,fc_high],
    width=None,
    window='blackman',
    pass_zero='bandpass',
    scale=True,
    fs=fe

)


#filtre pass-bande 2000+-500
fc_low1=1500
fc_high1=2500


h4 = signal.firwin(
    numtaps=N,
    cutoff=[fc_low1,fc_high1],
    width=None,
    window='blackman',
    pass_zero='bandpass',
    scale=True,
    fs=fe
)

#filtre pass-bande 3500+-1000
fc_low2=2500
fc_high2=4500


h5 = signal.firwin(
    numtaps=N,
    cutoff=[fc_low2,fc_high2],
    width=None,
    window='blackman',
    pass_zero='bandpass',
    scale=True,
    fs=fe

)

#filtre iir coupe bande
N2=4
fc_low3=950
fc_high3=1050
ronf=1
att=70
[b, a] = signal.ellip(
    N=N2,
    rp=ronf,
    rs=att,
    Wn=[fc_low3, fc_high3],
    fs=fe,
    btype="bandstop",
    output="ba",
)

hi=np.fft.fft(h)
hi2=np.fft.fft(h2)
hi3=np.fft.fft(h3)
hi4=np.fft.fft(h4)
hi5=np.fft.fft(h5)

hf=np.fft.fftshift(np.abs(hi))
hf2=np.fft.fftshift(np.abs(hi2))
hf3=np.fft.fftshift(np.abs(hi3))
hf4=np.fft.fftshift(np.abs(hi4))
hf5=np.fft.fftshift(np.abs(hi5))

Range=np.arange(N)

xaxis=(Range*fe/N)-fe/2


print([b,a])

plt.figure(1)
plt.plot(xaxis,hf)
#plt.figure(2)
#plt.plot(xaxis,hf2)
plt.figure(3)
plt.plot(xaxis,hf3)
plt.figure(4)
plt.plot(xaxis,hf4)
plt.figure(5)
plt.plot(xaxis,hf5)
plt.show()





