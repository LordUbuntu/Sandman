# Sandman

## Description

A very rudimentary linear regression model that assists in determining better sleeping patterns. This was done for a machine learning course. I was done in Octave (thought I would have preferred it were done in Python, Prof had a weird choice).

It is trained on incredibly simple and predictable data generated with a [python script]()

## Credits

### Original Contributors
* Jacobus Burger
* Jimmy Kha
* ~~Yiren Gu~~

### Original Code

Original Source code founded on lab exercises provided by Felix Lo.

## Details

The model utilized linear regression to predict the sleep pressure experienced by a user based on four features that represent the user's environment, and based on this data it will predict the expected physiological effect.

Example Data

| Time (x1) | Location (x2) | Light Temp (x3) | Light Brightness (x4) | sleep pressure (y) |
|------|----------|------------|------------------|--------------------|
| 17 | 49, -122 | -0.873 | 0.231 | 0.832 |

Where time is measured in 0-23 (mod 24) military time, location in gps coordinates, negative light temp is warm light (positive is cold), and light brightness is 0-1.

This is the ideal though, in practice our data is highly sanitized and generated with the aforementioned python script. Location is assumed to be fixed as a value of 1.

