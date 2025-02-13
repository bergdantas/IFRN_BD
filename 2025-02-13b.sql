--função que conta quantos telefones o vendedor tem. Caso seja 1, ele não permite a exclçusão.
CREATE OR REPLACE FUNCTION impedir_exclusao_ultimo_telefone()
	RETURNS TRIGGER AS $$
	BEGIN
		--conta quantos telefones o vendedor tem
	    IF (SELECT COUNT(*) FROM telefone WHERE idPessoa = OLD.idPessoa) = 1 THEN
	    	RAISE EXCEPTION 'Não é permitido excluir o último telefone do vendedor!';
	    END IF;
		RETURN OLD;
	END;
$$ LANGUAGE plpgsql;

-- gatilho para impedir a exclusão do último telefone
CREATE TRIGGER trigger_impedir_exclusao_ultimo_telefone
	BEFORE DELETE ON telefone
		FOR EACH ROW
			EXECUTE FUNCTION impedir_exclusao_ultimo_telefone();

--testando o gatilho
--deletando todos os telefones de um vendedor (não vai funcionar)
DELETE FROM telefone
	WHERE idPessoa = 1;
	
--deletando um dos dois telefones de um vendedor (aqui funciona)
DELETE FROM telefone
WHERE idPessoa = 1 AND numero='84956254875';
