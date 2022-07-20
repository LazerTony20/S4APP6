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

    # (1) Frequency response
    [w, h_dft] = signal.freqz(b, a, worN=10000, fs=fe)  # worN change le graph (voir doc) (nb echantillons sur le graph, si on le bump, on a plus de details)
    plt.figure('(1) Réponse fréquentielle')
    plt.semilogx(w, 20 * np.log10(np.abs(h_dft)))
    plt.title(f"Réponse en fréquence du filtre elliptique (ordre {filter_order})")
    plt.xlabel("Fréquence [Hz]")
    plt.ylabel("Gain [dB]")
    plt.grid(which="both", axis="both")
    plt.tight_layout()

    # (2) Zeros and Poles
    plt.figure('(2) Pôles et Zéros')
    plt.title(f"Pôles et Zéros du filtre d'ordre {filter_order}")
    plt.grid(True)
    zplane(b, a)

    # (3) Afficher la réponse impulsionnelle
    n = 1000
    imp: np.ndarray = signal.unit_impulse(n)
    iir_h: np.ndarray = signal.lfilter(b=b, a=a, x=imp)
    plt.figure('(3) Réponse Impulsionnelle du filtre elliptique')
    plt.title('Réponse Impulsionnelle du filtre Elliptique')
    plt.plot(iir_h)
    plt.xlabel("n")
    plt.ylabel("Amplitude normalisée")
    plt.grid(True)

    # pour convertir en Q2.13 il faut multiplier, mais il faut reconvertir en float pour SOS dans le lab

    # (4) Réponse en fréquence du filtre elliptique
    sos = signal.ellip(
        N=filter_order,
        rp=pass_band_ripple_db,
        rs=stop_band_attn_db,
        Wn=[fc_low, fc_high],
        fs=fe,
        btype="bandpass",
        output="sos",
    )
    [wsos, h_dft_sos] = signal.sosfreqz(sos, worN=10000, fs=fe)
    plt.figure('(4-5) Réponses en fréquence du filtre elliptique')
    plt.title('Réponses en fréquences du filtre elliptique')
    plt.semilogx(wsos, 20 * np.log10(np.abs(h_dft_sos)), label='H - SOS')
    plt.xlabel("Fréquence [Hz]")
    plt.ylabel("Gain [dB]")

    # (5) format Q2.13
    X = 2   # Nb de bits entiers
    Y = 13  # Nb de bits apres virgule
    Q2_13 = 2 ** Y
    a_q = np.round(a * Q2_13)
    b_q = np.round(b * Q2_13)
    sos_q = np.round(sos * Q2_13)
    [w_q, h_dft_q] = signal.freqz(b_q, a_q, worN=10000, fs=fe)
    [wsos_q, h_dft_sos_q] = signal.sosfreqz((sos_q/Q2_13), worN=10000, fs=fe)
    plt.semilogx(wsos_q, 20 * np.log10(np.abs(h_dft_sos_q)), '--', color='red', label='H - coeffs SOS arrondis en Q2.13')
    plt.semilogx(w_q, 20 * np.log10(np.abs(h_dft_q)), '--', color='orange', label='H - coeffs a,b arrondis en Q2.13')
    plt.grid(which='both', axis='both')
    plt.legend()

    # 5b
    fs = 20000
    fc_lp = 1000
    fc_hp = 950
    signal.firwin()



def laboratoire():
    plt.ion()  # Comment out if using scientific mode!

    fe = 20000
    probleme_1(fe)
    print("Done!")


if __name__ == "__main__":
    laboratoire()