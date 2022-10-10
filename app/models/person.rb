class Person < ApplicationRecord
    validates :name, presence: true
    validates :first_name, presence: true
    validates :last_name, presence:true
    validates :phone, presence: true
    validates :gender, presence: true

    #has_many :appointments   
    #has_many :materials, through: :appointments
    has_many :appoints   
    has_many :materials, through: :appoints
    
    #attr_accessor :appointment_elements #Permite crear propiedad que puedo leer y escribir, es agregar una propiedad al objeto

    # def save_appointments
        #appointments_elements 1,2,3,4 => [1,2,3]
        #Convertirlo en arreglo
            #appointments_array = appointment_elements.split(",")
        #Iterar el arreglo
        #Por cada elemento que hay en el arreglo , crear un registro de la tabla asociativa appointments para que se establezca la relación
            #appointments<material_id: 1, person_id:2>
            #appointments_array.each do |material_id|
            #material = Material.find(material_id)
            #if material.nil? == false
             #Appointment.find_or_create_by(person: self,material: material)
            #end
        
        #end
    #end

end
