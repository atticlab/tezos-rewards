TEZOS REWARDS PAYMENT SCRIPT

Simple bash script for rewards payments

Work with simple text file as input:

KTxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx1 0.055673
KTxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx2 0.043812
KTxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxN 0.043812

and procceed payment for each line in file, you just needed to enter password from your wallet manually and log all actions to payments.log file.


Usage:
  $./rewards.sh

Configuration:
  - just edit ./rewards.sh
      file="./payments";  
      log="./payments.log";
      
      where file - text file with payments strings and log - log file.



