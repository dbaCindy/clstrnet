
# addrs.awk --- simple mailing list program

# Records are separated by blank lines.
# Each line is one field.
BEGIN { RS = "          Cell" ; FS = "\n" }

{
      print "Cell is:", $1
      print "Sig  is:", $4
      print "Sig  is:", $6
}
