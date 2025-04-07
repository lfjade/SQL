-- Inserindo pacientes
INSERT INTO pacientes (idPacientes, nome) VALUES
(1, 'Jade Silva'),
(2, 'Carlos Moura'),
(3, 'Ana Paula');

-- Inserindo médicos
INSERT INTO medicos (idMedicos, nome, especialidade) VALUES
(1, 'Dra. Marina Lopes', 'Ginecologia'),
(2, 'Dr. João Pedro', 'Cardiologia'),
(3, 'Dra. Laura Nunes', 'Pediatria');

-- Inserindo consultas
INSERT INTO consultas (idConsultas, idPacientes, idMedicos, data_hora) VALUES
(1, 1, 1, '2024-03-01 10:30:00'),
(2, 1, 2, '2024-04-15 14:00:00'),
(3, 2, 3, '2024-05-10 09:00:00'),
(4, 1, 2, '2024-06-01 13:00:00');

-- Inserindo internações
INSERT INTO internacoes (idInternacoes, idPacientes, Medico_Responsavel, entrada, saida) VALUES
(1, 1, 2, '2024-04-01 12:00:00', NULL), -- internação em andamento
(2, 2, 3, '2024-02-20 09:00:00', '2024-03-01 10:00:00');

-- Inserindo tratamentos
INSERT INTO tratamentos (idTratamentos, nome) VALUES
(1, 'Fisioterapia Respiratória'),
(2, 'Antibióticos'),
(3, 'Hidratação Intravenosa');

-- Associando internações a tratamentos
INSERT INTO internacoes_tratamentos (idInternacoes, idTratamentos) VALUES
(1, 1),
(1, 2),
(2, 3);
