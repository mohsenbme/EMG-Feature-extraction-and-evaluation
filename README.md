# EMG-Feature-extraction-and-evaluation
Electromyogram (EMG) is widely used in prosthesis control and neuromuscular analysis. 
Several features, depending on the desired application, can be extracted from raw EMG signals.
I put some of the most commonly used features in this repository: mean absolute value (mymav), root mean squares (myrms), 
zero crossings (myzc), number of turns (myssc), waveform length (mywl), cepstral coefficient (myceps), willison amplitude
(mywamp), higher order statistics (mycumulant2 and mucumulant4), mean power frequency (myfmean), median power frequency
(myfmed), and autoregressive model coefficients (myAR).
In addition, Davies-Bouldin Index (myDBI) and calinski-harabasz index (mySCAT) can be used to evaluate the discrimination
power of feature spaces. 
Please use the following paper for citations: http://ieeexplore.ieee.org/document/6519660/
