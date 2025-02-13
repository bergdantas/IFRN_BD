--crio um procedimento para criar um registo de Vendedor, Telefone e Endereço
CREATE OR REPLACE PROCEDURE inserir_vendedor(
    IN p_nome VARCHAR(30),
    IN p_numero CHAR(11),
    IN p_cidade VARCHAR(15),
    IN p_rua VARCHAR(15),
    IN p_numero_endereco VARCHAR(5)
)
LANGUAGE plpgsql --linguagem procedural para o PostgreSQL
	AS $$
	DECLARE
	    v_idPessoa INT; --Variável para armazenar o ID do novo vendedor
		BEGIN
	    	-- Insere o vendedor e obtém o ID gerado automaticamente
    		INSERT INTO vendedor (nome) 
    		VALUES (p_nome) 
		    RETURNING idPessoa INTO v_idPessoa;
		    -- Insere o telefone do vendedor
		    INSERT INTO telefone (idPessoa, numero) 
		    VALUES (v_idPessoa, p_numero);	
		    -- Insere o endereço do vendedor
		    INSERT INTO endereco (cidade, rua, numero, idPessoa) 
		    VALUES (p_cidade, p_rua, p_numero_endereco, v_idPessoa);
			-- Mensagem de sucesso
    		RAISE NOTICE 'Vendedor %, ID = % inserido com sucesso com telefone % e endereço %, % - %', 
        	p_nome, v_idPessoa, p_numero, p_rua, p_cidade, p_numero_endereco;
		END;
	$$;
--testando o procedimento inserir_vendedor
CALL inserir_vendedor(
    'Carlos Souza', 
    '84912345678', 
    'Natal', 
    'Av. Paulista', 
    '123'
);
