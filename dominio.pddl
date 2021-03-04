(define (domain L3)

    (:requirements :negative-preconditions :strips :typing :equality)

    (:types 
        vehiculo enfermo localizacion - object
    )

    (:predicates 
        (ambulancia ?v - vehiculo ?l - localizacion)
        (paciente ?e - enfermo ?l - localizacion)
        (cargar ?v - vehiculo ?e - enfermo)
        (mov ?l1 ?l2 - localizacion)
    )


    (:action Mover-Ambulancia
        :parameters (?v - vehiculo ?l1 ?l2 - localizacion)
        :precondition (and 
            (not (= ?l1 ?l2))
            (ambulancia ?v ?l1)
            (mov ?l1 ?l2)
        )
        :effect (and 
            (ambulancia ?v ?l2)
            (not (ambulancia ?v ?l1))
        )
    )

    (:action Cargar-Paciente
        :parameters (?v - vehiculo ?e - enfermo ?l - localizacion)
        :precondition (and 
            (ambulancia ?v ?l)
            (paciente ?e ?l)
            (not (cargar ?v ?e))
        )
        :effect (and 
            (cargar ?v ?e)
            (not (paciente ?e ?l))
        )
    )

    (:action Descargar-Paciente
        :parameters (?v - vehiculo ?e - enfermo ?l - localizacion)
        :precondition (and 
            (ambulancia ?v ?l)
            (cargar ?v ?e)
        )
        :effect (and 
            (paciente ?e ?l)
            (not (cargar ?v ?e))
        )
    )

)
