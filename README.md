# COMP4431: Artificial Intelligence Project

## Topic: Brainwave Classification

Given a matrix containing information about brainwave data when watching natural view pictures and human face pictures. Classify the data with a satisfactory approach.

## N170
When we watch human face pictures, our brainwave will have a special pattern called N170.

## Data format
We are given a matrix of 129x275x60. 129 means 129 sensors detecting our brainwave in different areas. 60 is 60 set of datas each of which containing brainwave data of watching a picture. 275 means when we were watching one of these 60 pictures, sensors (129) are detecting our wavelet with 250Hz. 1s watching the picture, 0.1 second before watching it. So, it detect 25+250 = 275 point of data.

## SVM
As  it is a binary classification, we will use SVM.

## Data Explaination
![data explaination](./dataexplain.png)
