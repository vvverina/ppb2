double hitungPajakTahunan(double gajiBulanan) {
  const double ptkp = 54000000.0;
  double penghasilanTahunan = gajiBulanan * 12.0;
  double pkp = penghasilanTahunan - ptkp;
  
  if (pkp <= 0) {
    return 0.0;
  }
  
  const double batas1 = 60000000.0;
  const double batas2 = 250000000.0;
  const double batas3 = 500000000.0;
  const double batas4 = 5000000000.0;
  
  double pajak = 0.0;
  
  if (pkp <= batas1) {
    pajak = pkp * 0.05;
  } else if (pkp <= batas2) {
    pajak = batas1 * 0.05 + (pkp - batas1) * 0.15;
  } else if (pkp <= batas3) {
    pajak = batas1 * 0.05 + (batas2 - batas1) * 0.15 + (pkp - batas2) * 0.25;
  } else if (pkp <= batas4) {
    pajak = batas1 * 0.05 + (batas2 - batas1) * 0.15 + (batas3 - batas2) * 0.25 + (pkp - batas3) * 0.30;
  } else {
    pajak = batas1 * 0.05 + (batas2 - batas1) * 0.15 + (batas3 - batas2) * 0.25 + (batas4 - batas3) * 0.30 + (pkp - batas4) * 0.35;
  }
  
  return pajak;
}

void main() {
  double gajiBulanan = 15500000.0;
  double penghasilanTahunan = gajiBulanan * 12.0;
  double ptkp = 54000000.0;
  double pkp = penghasilanTahunan - ptkp;
  double pajakTahunan = hitungPajakTahunan(gajiBulanan);
  
  print('--- PERHITUNGAN PAJAK GAJI ---');
  print('');
  print('Gaji Bulanan = ${gajiBulanan}');
  print('Penghasilan Tahunan = ${penghasilanTahunan}');
  print('Penghasilan Tidak Kena Pajak (PTKP) Per Tahun = ${ptkp}');
  print('Penghasilan Kena Pajak (PKP) Per Tahun = ${pkp}');
  print('');
  print('Pajak tahunan = Rp${pajakTahunan.toInt()}');
}
