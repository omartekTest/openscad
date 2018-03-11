Modellazione di un cuscinetto
=============================

.. image:: ./images/cuscinetto_finito.png

Componenti del cuscinetto
-------------------------
Il cuscinetto è composto da due anelli cavi:

* uno esterno con gola rivolta verso l'interno

.. image:: ./images/anello_esterno.png

* uno interno con gola rivolta verso l'annello esterno

.. image:: ./images/anello_interno.png

* una serie di sfere

.. image:: ./images/sfere.png

Codice Openscad
---------------

Gli anelli
**********
Gli anelli sono ottenuti come sottrazione di due cilindri.

.. image:: ./images/anello.png

Le scanalature sono ottenute come sottrazione di due anelli.

.. image:: ./images/anello_Cscanalatura.png

Le sfere
********
E' una serie ottenuta mediante un ciclo for::

 for(i=[0:30:360]){
  rotate([0,0,i])
  translate ([37.8,0,0]) sphere(9.90);
 }
