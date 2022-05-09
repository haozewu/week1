pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals

template A(){
   signal input a;  
   signal input b;
   signal output outA; //We do not declare it as output.
   outA <== a * b;
}

template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;  
   component comp = A();
   comp.a <== a;
   comp.b <== b;
   // Constraints.  
   d <== comp.outA * c;  
}

component main = Multiplier3();