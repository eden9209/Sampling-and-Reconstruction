# Sampling-and-Reconstruction
**The goal of this task is reconstruction of the signal from given sampling data.**<br>
 <em>I use two method of reconstruction a signal:</em>.<br>
<ul>
<li>First Method : using fft algorithm to find the Frequency of the signal</li>
<li>Second Method: using shannon reconstruction formula </li>
</ul>
<br>
<em>First method ("reconstruction method 1" .matlab file ) <em>

#### w[n] sampling is :
![sampled](https://user-images.githubusercontent.com/73124928/99964739-74a43a00-2d9c-11eb-9d27-5772d463ced7.png)

#### the FFT of the sampling data :
![fft figute](https://user-images.githubusercontent.com/73124928/99965327-6571bc00-2d9d-11eb-859e-06b506f1c5cd.png)
<br>
<br>
<br>
<br>
#### In conclustuion our Frequency
f1: 1000 [hz] <br>
f2: 3000 [hz] <br>
the reconstruction is 1000*[sin(2pi f1 t)+sin(2pi f2 t)]
<br>
<br>
<br>
<br>
<em>Second method ("reconstruction method 2" .matlab file )<em> 
<br>
<br>
**the goal of this method is to check the correctness of shannon reconstruction formula**
<br>
<br>
#### the original signal and his sampling:
![original signal part 2](https://user-images.githubusercontent.com/73124928/99968751-3ad63200-2da2-11eb-9fa3-03b99d383309.png)
<br>
<br>
#### from the sampling of the original signal we can use shannon reconstruction formula to check his correctness :
![final](https://user-images.githubusercontent.com/73124928/99969785-9a810d00-2da3-11eb-9041-f3cfa2ddcfb4.png)



