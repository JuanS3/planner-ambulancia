(define (problem L3) (:domain L3)
    (:objects 
        a - vehiculo
        p1 p2 - enfermo
        l1 l2 l3 l4 - localizacion
    )

    (:init
        (paciente p1 l3)
        (paciente p2 l4)
        (ambulancia a l1)

        (mov l1 l2)
        (mov l2 l4)
        (mov l4 l3)
        
        (mov l3 l4)
        (mov l4 l2)
        (mov l2 l1)
    )

    (:goal (and
        (paciente p1 l1)
        (paciente p2 l1)
    ))
)
