
# addrs.awk --- simple mailing list program

# Records are separated by blank lines.
# Each line is one field.
BEGIN { RS = "Cell" }

{
      printf "Cell is: %s :: %s \n", $14, $10
}
