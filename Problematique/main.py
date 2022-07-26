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





#csv lowpass
a = np.asarray([ hi ])
np.savetxt("low_pass.csv", a, delimiter=",")

#csv highpass
a2 = np.asarray([ hi2 ])
np.savetxt("high_pass.csv", a2, delimiter=",")
#csv passbande1
a3 = np.asarray([ hi3 ])
np.savetxt("band_pass1000.csv", a3, delimiter=",")
#csv passbande2
a4 = np.asarray([ hi4 ])
np.savetxt("band_pass2000.csv", a4, delimiter=",")
#csvpassbande3
a5 = np.asarray([ hi5 ])
np.savetxt("band_pass3500.csv", a5, delimiter=",")
#csv coupebande
a6 = np.asarray([ sos2_13])
#np.savetxt("stop_pass.csv", a6, delimiter=",")

#=========================================================================
t=0
x=256
n=np.arange(0,N)

#sinus passe-bas
sin300=np.sin(2*np.pi*n*300/fe)
sin1000=np.sin(2*np.pi*n*1000/fe)

fftsin300=np.fft.fft(sin300)
fftsin1000=np.fft.fft(sin1000)

lp300=hi*fftsin300
lp1000=hi*fftsin1000



plt.figure('lp filter')
plt.subplot(2,1,1)
plt.plot(np.fft.ifft(lp300))
plt.subplot(2,1,2)
plt.plot(np.fft.ifft(lp1000))
#sinus passe-haut
sin4000=np.sin(2*np.pi*np.arange(N-1)*4000/fe)
sin5000=np.sin(2*np.pi*np.arange(N-1)*5000/fe)

hp4000=hi2*np.fft.fft(sin4000)
hp5000=hi2*np.fft.fft(sin5000)

plt.figure('hp filter')
plt.subplot(2,1,1)
plt.plot(np.fft.ifft(hp4000))
plt.subplot(2,1,2)
plt.plot(np.fft.ifft(hp5000))

#sinus passe-bande1
sin200=np.sin(2*np.pi*n*200/fe)
sin10003=np.sin(2*np.pi*n*1000/fe)
sin2000=np.sin(2*np.pi*n*2000/fe)

bp200=hi3*np.fft.fft(sin200)
bp1000=hi3*np.fft.fft(sin10003)
bp2000=hi3*np.fft.fft(sin2000)

plt.figure('bp filter1')
plt.subplot(3,1,1)
plt.plot(np.fft.ifft(bp200))
plt.subplot(3,1,2)
plt.plot(np.fft.ifft(bp1000))
plt.subplot(3,1,3)
plt.plot(np.fft.ifft(bp2000))

#sinus passe-bande2
#sin1450=np.sin(2*np.pi*n*1450/fe)
#sin2000=np.sin(2*np.pi*n*2000/fe)
sin3000=np.sin(2*np.pi*n*3000/fe)

bp4=hi4*np.fft.fft(sin10003)
bp5=hi4*np.fft.fft(sin2000)
bp6=hi4*np.fft.fft(sin3000)

plt.figure('bp filter2')
plt.subplot(3,1,1)
plt.plot(np.fft.ifft(bp4))
plt.subplot(3,1,2)
plt.plot(np.fft.ifft(bp5))
plt.subplot(3,1,3)
plt.plot(np.fft.ifft(bp6))
#sinus passe-bande3
#sin2400=np.sin(2*np.pi*n*2400/fe)
sin3500=np.sin(2*np.pi*n*3500/fe)
sin5500=np.sin(2*np.pi*5500*(n/fe))

bp7=hi5*np.fft.fft(sin2000)
bp8=hi5*np.fft.fft(sin3500)
bp9=hi5*np.fft.fft(sin5500)

plt.figure('bp filter3')
plt.subplot(3,1,1)
plt.plot(np.fft.ifft(bp7))
plt.subplot(3,1,2)
plt.plot(np.fft.ifft(bp8))
plt.subplot(3,1,3)
plt.plot(np.fft.ifft(bp9))

#sinus coupe-bande
sin500=np.sin(2*np.pi*np.arange(0,N2)*500/20000)
sin10002=np.sin(2*np.pi*np.arange(0,N2)*1000/20000)
sin1500=np.sin(2*np.pi*np.arange(0,N2)*1500/20000)


#bc1=newsos*np.fft.fft(sin500)
#bc2=newsos*np.fft.fft(sin10002)
#bc3=newsos*np.fft.fft(sin1500)


#plt.figure('bc')
#plt.subplot(3,1,1)
#plt.plot(np.fft.ifft(bc1))
#plt.subplot(3,1,2)
#plt.plot(np.fft.ifft(bc2))
#plt.subplot(3,1,3)
#plt.plot(np.fft.ifft(bc3))


#plt.figure('sin')
#plt.plot(sin940)
plt.show()

