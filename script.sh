#! /bin/bash/
echo "#PipeLinePrimeraPresencial" >> README.md
git init
git add README.md
git commit -m "realizando el primer commit"
git remote add origin git https://github.com/m4rc3l0sg/PipeLinePrimeraPresencial.git
git push -u origin master
