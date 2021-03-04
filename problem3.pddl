(define (problem L3_2_Ambulancias_3_pacientes_5_lugares)
        (:domain L3)
    (:objects 
        a1 a2 - vehiculo
        p1 p2 p3 - enfermo
        l1 l2 l3 l4 l5 - localizacion
    )

    (:init
        (paciente p1 l3)
        (paciente p2 l4)
        (paciente p3 l4)
        (ambulancia a1 l1)
        (ambulancia a2 l1)

        (mov l1 l2)
        (mov l2 l3)
        (mov l2 l5)
        (mov l3 l4)

        
        (mov l3 l4)
        (mov l4 l2)
        (mov l5 l1)
    )

    (:goal (and
        (paciente p1 l1)
        (paciente p2 l1)
        (paciente p3 l1)
    ))
)
