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
    numtaps=N-1 ,
    cutoff=fc2,
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
sos = signal.ellip(
    N=N2,
    rp=ronf,
    rs=att,
    Wn=[fc_low3, fc_high3],
    fs=fe,
    btype="bandstop",
    output="sos",
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

print(h)
print()
#print([b,a])

plt.figure(1)
plt.plot(xaxis[128:256],(hf)[128:256], label='filtre passe-bas 500Hz')



plt.grid(which="both", axis="both")
plt.tight_layout()

#plt.figure(2)
plt.plot(xaxis[128:255],(hf2)[128:255])
#plt.figure(3)
plt.plot(xaxis[128:256],(hf3)[128:256], label='filtre passe-bande 1000±500')
#plt.title("Réponse en fréquence du filtre fir passe-bande 1000±500")
#plt.xlabel("Fréquence [Hz]")
#plt.ylabel("Gain [DC]")
#plt.legend()
#plt.grid(which="both", axis="both")
#plt.tight_layout()
#plt.figure(4)



plt.plot(xaxis[128:256],(hf4)[128:256], label='passe-bande 2000±500')
#plt.title("Réponse en fréquence du filtre fir passe-bande 2000±500")
#plt.xlabel("Fréquence [Hz]")
#plt.ylabel("Gain [DC]")
#plt.legend()
#plt.grid(which="both", axis="both")
#plt.tight_layout()
#plt.figure(5)
plt.plot(xaxis[128:256],(hf5)[128:256], label='filtre passe-bande3500±1000')

plt.title("Réponse en fréquence du filtre fir passe-bas 500Hz")
plt.xlabel("Fréquence [Hz]")
plt.ylabel("Gain [DC]")
plt.legend()
#plt.title("Réponse en fréquence du filtre fir passe-bande3500±1000")
#plt.xlabel("Fréquence [Hz]")
#plt.ylabel("Gain [DC]")
#plt.legend()
#plt.grid(which="both", axis="both")
#plt.tight_layout()

#[w, h_dft] = signal.freqz(b, a, worN=1000, fs=fe)
plt.figure(6)
#plt.semilogx(w, (np.abs(h_dft)))

sos2_13 = np.round(sos * (2 ** 13))
newsos = sos2_13 / (2 ** 13)

#q2.5

sos2_5 = np.round(sos * (2 ** 5))
newsos2_5 = sos2_5 / (2 ** 5)

[w2_13sos, h_dft2_13sos] = signal.sosfreqz(newsos, worN=100000, fs=20000)
[w2_5sos, h_dft2_5sos] = signal.sosfreqz(newsos2_5, worN=100000, fs=20000)
[wsos, h_dftsos] = signal.sosfreqz(sos, worN=100000, fs=20000)


plt.semilogx(wsos, 20*np.log10(np.abs(h_dftsos)))
#plt.semilogx(w2_13sos, (np.abs(h_dft2_13sos)) )
plt.semilogx(w2_5sos, 20*np.log10(np.abs(h_dft2_5sos)),'--')


plt.grid(which="both", axis="both")
plt.tight_layout()

plt.title("filtre coupe-bande 1000±50")
plt.xlabel("Fréquence [Hz]")
plt.ylabel("Gain (DC)")


plt.show()


#csv lowpass
a = np.asarray([ hi ])
np.savetxt("low_pass.csv", a, delimiter=",")

#csv highpass
a2 = np.asarray([ hi2 ])
np.savetxt("high_pass.csv", a2, delimiter=",")
#csv passbande1
a3 = np.asarray([ hi3 ])
np.savetxt("band_pass.csv1000", a3, delimiter=",")
#csv passbande2
a4 = np.asarray([ hi4 ])
np.savetxt("band_pass2000.csv", a4, delimiter=",")
#csvpassbande3
a5 = np.asarray([ hi5 ])
np.savetxt("band_pass3500.csv", a5, delimiter=",")
#csv coupebande
a6 = np.asarray([ sos2_13])
np.savetxt("stop_pass.csv", a6, delimiter=",")
