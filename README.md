source downloaded from https://www.itu.int/rec/T-REC-P.862-200511-I!Amd2/en

# Compile
make

# Run
./bin/pesq +16000 +wb <reference_clean_wav> <degraded_wav>

e.g
```
Reading reference file 11.wav...done.
Reading degraded file 22.wav...done.
 Level normalization...
 IRS filtering...
 Variable delay compensation...
 Acoustic model processing...

P.862.2 Prediction (MOS-LQO):  = 1.130
```
