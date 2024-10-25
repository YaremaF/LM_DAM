drop database gabinete;
create database gabinete;
use gabinete;

create table Paciente(
DNI varchar(9) primary key,
Nombre varchar (100),
N_Teléfono varchar (20),
E_mail  varchar (200),
Edad tinyint

);
create table Psicologo(
Id_Psicologo varchar (9) primary key,
Especialidad varchar (100),
Tlf varchar (20)

);


CREATE TABLE Cita (
    Id_cita VARCHAR(6) PRIMARY KEY,
    DNI_Cita VARCHAR(9),
    Nombre_Paciente varchar (100),
    Fecha date,
    Hora time,
    Id_Psicologo VARCHAR(9),
    Lugar VARCHAR(150),
    Modalidad set ('presencial', 'teléfono', 'videollamada'),
    foreign key (DNI_Cita) references Paciente(DNI),
    foreign key (Id_Psicologo) references Psicologo(Id_Psicologo)
);
    
INSERT INTO Psicologo (Id_Psicologo, Especialidad, Tlf) VALUES
('PSI001', 'Psicología Clínica', '600123456'),
('PSI002', 'Psicología Infantil', '600654321'),
('PSI003', 'Psicología del Trabajo', '600789123');

INSERT INTO Paciente (DNI, Nombre, N_Teléfono, E_mail, Edad) VALUES
('DNI001', 'Ana López', '650111222', 'ana.lopez@example.com', 30),
('DNI002', 'Carlos Pérez', '650333444', 'carlos.perez@example.com', 45),
('DNI003', 'Laura García', '650555666', 'laura.garcia@example.com', 25),
('DNI004', 'Juan Rodríguez', '650777888', 'juan.rodriguez@example.com', 34),
('DNI005', 'Marta Sánchez', '650999000', 'marta.sanchez@example.com', 29),
('DNI006', 'Pedro Fernández', '651111333', 'pedro.fernandez@example.com', 50),
('DNI007', 'Lucía Jiménez', '651444555', 'lucia.jimenez@example.com', 40),
('DNI008', 'José Gómez', '651666777', 'jose.gomez@example.com', 28),
('DNI009', 'Elena Martín', '651888999', 'elena.martin@example.com', 32),
('DNI010', 'David Ruiz', '652000111', 'david.ruiz@example.com', 22);


INSERT INTO Cita (Id_cita, Nombre_Paciente, DNI_Cita, Fecha, Hora, Id_Psicologo, Lugar, Modalidad) VALUES
('CIT001', 'Ana López', 'DNI001', '2024-10-15', '09:00:00', 'PSI001', 'Consulta 1', 'presencial'),
('CIT002', 'Carlos Pérez', 'DNI002', '2024-10-15', '10:00:00', 'PSI001', 'Consulta 1', 'teléfono'),
('CIT003', 'Laura García', 'DNI003', '2024-10-15', '11:00:00', 'PSI001', 'Consulta 1', 'videollamada'),
('CIT004', 'Juan Rodríguez', 'DNI004', '2024-10-16', '09:00:00', 'PSI001', 'Consulta 2', 'presencial'),
('CIT005', 'Marta Sánchez', 'DNI005', '2024-10-16', '10:00:00', 'PSI002', 'Consulta 2', 'teléfono'),
('CIT006', 'Pedro Fernández', 'DNI006', '2024-10-16', '11:00:00', 'PSI002', 'Consulta 2', 'videollamada'),
('CIT007', 'Lucía Jiménez', 'DNI007', '2024-10-17', '09:00:00', 'PSI002', 'Consulta 3', 'presencial'),
('CIT008', 'José Gómez', 'DNI008', '2024-10-17', '10:00:00', 'PSI002', 'Consulta 3', 'teléfono'),
('CIT009', 'Elena Martín', 'DNI009', '2024-10-17', '11:00:00', 'PSI003', 'Consulta 3', 'videollamada'),
('CIT010', 'David Ruiz', 'DNI010', '2024-10-18', '09:00:00', 'PSI003', 'Consulta 4', 'presencial'),
-- Repetir patrones para las siguientes 20 citas
('CIT011', 'Ana López', 'DNI001', '2024-10-18', '10:00:00', 'PSI001', 'Consulta 4', 'teléfono'),
('CIT012', 'Carlos Pérez', 'DNI002', '2024-10-18', '11:00:00', 'PSI001', 'Consulta 4', 'videollamada'),
('CIT013', 'Laura García', 'DNI003', '2024-10-19', '09:00:00', 'PSI002', 'Consulta 5', 'presencial'),
('CIT014', 'Juan Rodríguez', 'DNI004', '2024-10-19', '10:00:00', 'PSI002', 'Consulta 5', 'teléfono'),
('CIT015', 'Marta Sánchez', 'DNI005', '2024-10-19', '11:00:00', 'PSI003', 'Consulta 5', 'videollamada'),
('CIT016', 'Pedro Fernández', 'DNI006', '2024-10-20', '09:00:00', 'PSI003', 'Consulta 6', 'presencial'),
('CIT017', 'Lucía Jiménez', 'DNI007', '2024-10-20', '10:00:00', 'PSI001', 'Consulta 6', 'teléfono'),
('CIT018', 'José Gómez', 'DNI008', '2024-10-20', '11:00:00', 'PSI001', 'Consulta 6', 'videollamada'),
('CIT019', 'Elena Martín', 'DNI009', '2024-10-21', '09:00:00', 'PSI002', 'Consulta 7', 'presencial'),
('CIT020', 'David Ruiz', 'DNI010', '2024-10-21', '10:00:00', 'PSI002', 'Consulta 7', 'teléfono'),
('CIT021', 'Ana López', 'DNI001', '2024-10-21', '11:00:00', 'PSI003', 'Consulta 7', 'videollamada'),
('CIT022', 'Carlos Pérez', 'DNI002', '2024-10-22', '09:00:00', 'PSI003', 'Consulta 8', 'presencial'),
('CIT023', 'Laura García', 'DNI003', '2024-10-22', '10:00:00', 'PSI001', 'Consulta 8', 'teléfono'),
('CIT024', 'Juan Rodríguez', 'DNI004', '2024-10-22', '11:00:00', 'PSI001', 'Consulta 8', 'videollamada'),
('CIT025', 'Marta Sánchez', 'DNI005', '2024-10-23', '09:00:00', 'PSI002', 'Consulta 9', 'presencial'),
('CIT026', 'Pedro Fernández', 'DNI006', '2024-10-23', '10:00:00', 'PSI002', 'Consulta 9', 'teléfono'),
('CIT027', 'Lucía Jiménez', 'DNI007', '2024-10-23', '11:00:00', 'PSI003', 'Consulta 9', 'videollamada'),
('CIT028', 'José Gómez', 'DNI008', '2024-10-24', '09:00:00', 'PSI003', 'Consulta 10', 'presencial'),
('CIT029', 'Elena Martín', 'DNI009', '2024-10-24', '10:00:00', 'PSI001', 'Consulta 10', 'teléfono'),
('CIT030', 'David Ruiz', 'DNI010', '2024-10-24', '11:00:00', 'PSI001', 'Consulta 10', 'videollamada');

select * from paciente order by Nombre

select * from cita 
where  Fecha = '2024-10-15'
order by Nombre_Paciente

select * from (cita

inner join paciente on cita.Nombre = paciente.Nombre);


select * from cita
where modalidad = 'videollamada'





