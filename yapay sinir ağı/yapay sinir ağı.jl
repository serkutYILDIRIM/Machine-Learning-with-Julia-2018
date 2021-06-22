using Plots
a= -0.1
  b= -0.5
  c= 0.2
  n= -0.1

  y=a*5+b.*c+7*c+n

  I=[a; b; c]
    O=y
    R=[0 1; 0 1 ; 0 1]
    S=[5 1]
      # net = ([0 1;0 1 ;0 1],S)
      net=(net,I,O)
      O1=(net,I)
# plot(1:1000,O,1:1000,O1)
