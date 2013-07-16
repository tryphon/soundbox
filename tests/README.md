# Plugins documentation

## Cellular Leveler

    celll

    Ports:  "Reference Level (dB)" input, control, -20 to 0, default 0
            "Silence threshold (dB)" input, control, -80 to 0, default -60
            "Cell Duration (s)" input, control, 0.1 to 60, default 15.075
            "Algorithm " input, control, 0 to 2, default 0, integer
            "Up Cell number " input, control, 1 to 64, default 1, integer
            "Up speed (dB/s)" input, control, 0.01 to 20, default 5.0075
            "Up Max (dB)" input, control, 0 to 30, default 7.5
            "Down Cell number " input, control, 1 to 64, default 1, integer
            "Down speed (dB/s)" input, control, -20 to -0.01, default -5.0075
            "Down Max (dB)" input, control, -30 to 0, default -22.5


## Glame Lowpass Filter

    lowpass_iir

    Ports:  "Cutoff Frequency" input, control, 0.0001*srate to 0.45*srate, default 0.0549426*srate, logarithmic
            "Stages(2 poles per stage)" input, control, 1 to 10, default 1, integer

## Glame Bandpass Filter

    bandpass_iir

    Ports:  "Center Frequency (Hz)" input, control, 0.0001*srate to 0.45*srate, default 0.0067082*srate, logarithmic
            "Bandwidth (Hz)" input, control, 0.0001*srate to 0.45*srate, default 0.0067082*srate, logarithmic
            "Stages(2 poles per stage)" input, control, 1 to 10, default 1, integer


## Glame Highpass Filter

    highpass_iir

    Ports:  "Cutoff Frequency" input, control, 0.0001*srate to 0.45*srate, default 0.000819036*srate, logarithmic
            "Stages(2 poles per stage)" input, control, 1 to 10, default 1, integer


## SC4 Compressor

    Ports:  "RMS/peak" input, control, 0 to 1, default 0
            "Attack time (ms)" input, control, 1.5 to 400, default 101.125
            "Release time (ms)" input, control, 2 to 800, default 401
            "Threshold level (dB)" input, control, -30 to 0, default 0
            "Ratio (1:n)" input, control, 1 to 20, default 1
            "Knee radius (dB)" input, control, 1 to 10, default 3.25
            "Makeup gain (dB)" input, control, 0 to 24, default 0
            "Amplitude (dB)" output, control, -40 to 12
            "Gain reduction (dB)" output, control, -24 to 0

## Fast Lookahead limiter

    Ports:  "Input gain (dB)" input, control, -20 to 20, default 0
            "Limit (dB)" input, control, -20 to 0, default 0
            "Release time (s)" input, control, 0.01 to 2, default 0.5075


    Matrix Spatialiser
    matrixSpatialiser

    Ports:  "Width" input, control, -512 to 512, default 0, integer
