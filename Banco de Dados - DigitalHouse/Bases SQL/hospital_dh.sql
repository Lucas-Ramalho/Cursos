USE consultorio_dh;

CREATE TABLE pacientes(
	paciente_id INT(11) PRIMARY KEY,
    paciente_idsaude INT(11),
    paciente_nome VARCHAR(50),
    paciente_sobrenome VARCHAR(100)
);

CREATE TABLE consultas (
consulta_id INT(11),
paciente INT(11),
medico INT(11),
data_consulta DATE,
hora_consulta TIME,
PRIMARY KEY (consulta_id),
FOREIGN KEY (medico) REFERENCES medicos(medico_id),
FOREIGN KEY (paciente) REFERENCES pacientes(paciente_id)
);

CREATE TABLE medicos(
	medico_id INT(11),
    medico_nome VARCHAR(40),
    medico_sobrenome VARCHAR(100),
    medico_especialidade INT(11),
    PRIMARY KEY (medico_id),
	FOREIGN KEY (medico_especialidade) REFERENCES especialidades(especialidade_id)
);

CREATE TABLE especialidades(
	especialidade_id INT(11),
    especialidade_nome VARCHAR(100),
    PRIMARY KEY (especialidade_id)
);