CREATE TABLE onibus (
                        id BIGSERIAL PRIMARY KEY,
                        prefixo VARCHAR(20) NOT NULL UNIQUE,
                        linha VARCHAR(100) NOT NULL,
                        capacidade_maxima INTEGER NOT NULL,
                        passageiros_atuais INTEGER NOT NULL DEFAULT 0,
                        ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        CONSTRAINT chk_passageiros_nao_negativos CHECK (passageiros_atuais >= 0),
                        CONSTRAINT chk_capacidade_valida CHECK (capacidade_maxima > 0)
);

INSERT INTO onibus (prefixo, linha, capacidade_maxima, passageiros_atuais)
VALUES
    ('1042', 'T1 - Estação Canoas / Centro', 45, 12),
    ('2085', 'N161 - Mathias Velho / Niterói', 50, 28),
    ('3110', 'R500 - Guajuviras / Canoas Shopping', 60, 5),
    ('4019', 'L04 - São José / Ulbra', 45, 0);