-- 1. Todas as consultas do paciente com ID 1
select * from consultas where idPacientes=1;

-- 2. Pacientes atualmente internados (sem data de saída)
select pacientes.nome, internacoes.saida from internacoes join pacientes on internacoes.idPacientes=pacientes.idPacientes 
where internacoes.saida IS NULL;

-- 3. Tratamentos relacionados à internação de ID 1
select tratamentos.nome from internacoes join internacoes_tratamentos on internacoes.idInternacoes=internacoes_tratamentos.idInternacoes
join tratamentos on internacoes_tratamentos.idTratamentos=tratamentos.idTratamentos
where internacoes.idInternacoes=1;

-- 4. Médicos ginecologistas
select nome from medicos where especialidade='Ginecologia';

-- 5. Consultas por médico entre janeiro e junho de 2024
select idMedicos, count(idConsultas) as numero_consultas from consultas where data_hora between '2024-01-01 00:00:00' and '2024-06-01 23:59:59'
group by idMedicos;

-- 6. Consultas do paciente 1 com nome do médico
select consultas.idConsultas, medicos.nome from consultas join medicos on consultas.idMedicos=medicos.idMedicos where idPacientes=1;

-- 7. Internações do paciente 1 com médico responsável
select internacoes.idInternacoes, medicos.nome from internacoes join medicos on internacoes.Medico_Responsavel=medicos.idMedicos
where internacoes.idPacientes=1;

