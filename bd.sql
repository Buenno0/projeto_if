CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(65) NOT NULL,
    feedback VARCHAR(10) NOT NULL,
    conteudo TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    visible BOOLEAN DEFAULT TRUE,
    modificado_por VARCHAR (65), 
    ultima_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE sugestoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(65) NOT NULL,
    email VARCHAR(125) NOT NULL,
    conteudo TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

----teste----
UPDATE feedback
SET visible = FALSE,
modificado_por = 'teste'
WHERE id = 3;
