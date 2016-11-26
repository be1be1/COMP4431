Each file has two variables: ‘instance’ and ‘label’.

1. ‘instance’

The size of ‘instance’ is 129*275*60. 129 means the EEG cap totally has 129 electrodes (channels). 275 means each data contains 275 temporal samples (with rate of 250Hz). 60 means you have 60 data. First 30 of them belong to class 1, and the other 30 belong to class 2.

2. ‘label’

The size of variable ’label’ is 60*1. The value of first 30 labels is ‘1’, which means class 1. The value of the other 30 labels is ‘-1’, which means class 2.