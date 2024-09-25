Table Ügyfél {
  ugyfelID integer [primary key]
  ugyfelVezetekNev varchar
  ugyfelKeresztNev varchar
  ugyfelTelefon varchar
  ugyfelEmail varchar
  ugyfelPontok integer
}

Table Dolgozó {
  dolgozoID integer [primary key]
  dolgozoVezetekNev varchar
  dolgozoKeresztNev varchar
  dolgozoTelefon varchar
  dolgozoEmail varchar
  dolgozoStatusz boolean
  dolgozoSzolgáltatása integer
}

Table Szolgáltatás {
  szolgaltatasID integer [primary key]
  szolgaltatasKategoria varchar
  szolgaltatasIdotartam datetime
  szolgaltatasAr integer
}

Table Foglalás{
  foglalasID integer [primary key]
  szolgaltatasID integer
  dolgozoID varchar
  ugyfelID integer
  foglalasKezdes datetime
  foglalasBefejezesk datetime
}



Ref: "Ügyfél"."ugyfelID" < "Foglalás"."ugyfelID"

Ref: "Szolgáltatás"."szolgaltatasID" < "Foglalás"."szolgaltatasID"

Ref: "Dolgozó"."dolgozoID" < "Foglalás"."dolgozoID"
