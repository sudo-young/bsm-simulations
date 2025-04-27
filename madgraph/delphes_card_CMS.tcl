################################################################
# Delphes card for CMS detector (basic settings)
# Example file
################################################################

# Particle propagation
set MagneticField 3.8;

# Tracker resolution
set TrackerResolution 0.01;

# Calorimeter settings
set ECALResolution 0.03;
set HCALResolution 0.1;

# Object reconstruction
set ElectronEfficiency 0.95;
set MuonEfficiency 0.98;
set JetEfficiency 0.90;

# Tau-tagging
set TauTaggingEfficiency 0.60;

# B-tagging
set BTaggingEfficiency 0.70;
set MistagRate 0.01;

# MET (Missing ET) settings
set METResolution 0.05;
