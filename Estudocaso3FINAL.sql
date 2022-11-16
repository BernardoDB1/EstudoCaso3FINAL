create table pagamentos(
	pagamentos_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    forma_pagamento CHAR NOT NULL,
    pagamento_data DATETIME NOT NULL,
    reembolso DATETIME NOT NULL
);
create table jogos(
	jogos_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PRIMARY KEY (jogos_id),
    faixa_etaria INT NOT NULL,
    avaliacao INT NOT NULL,
    preco FLOAT NOT NULL,
	FOREIGN KEY (usuarios_usuario_id) REFERENCES usuarios(usuarios_usuario_id),
    FOREIGN KEY (pagamento_pagamento_id) REFERENCES pagamento(pagamento_pagamento_id)
);
create table desenvolvedora(
	desenvolvedora_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	biblioteca_jogos INT NOT NULL,
    desenvolvedora_nome CHAR(999) NOT NULL,
    desenvolvedora_regiao CHAR(999) NOT NULL,
    premiacoes VARCHAR(45) NOT NULL
);
create table usuarios(
	usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(45),
    senha VARCHAR(45),
    apelido CHAR
);
create table forum(
	forum_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    envio_comentario LONGTEXT,
    avalia_comentario INT
);