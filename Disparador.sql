-- Crear el trigger para actualizar el saldo del bolsillo después de cada inserción en venta
DELIMITER //
CREATE TRIGGER actualizar_saldo_bolsillo AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    DECLARE saldo_actual DECIMAL(10, 2);
    DECLARE nuevo_saldo DECIMAL(10, 2);
    
    -- Obtener el saldo actual del bolsillo del cliente
    SELECT saldo INTO saldo_actual FROM bolsillo WHERE id_cliente = NEW.id_cliente;
    
    -- Calcular el nuevo saldo
    SET nuevo_saldo = saldo_actual - NEW.costo;
    
    -- Actualizar el saldo del bolsillo del cliente
    UPDATE bolsillo SET saldo = nuevo_saldo WHERE id_cliente = NEW.id_cliente;
END;
//
DELIMITER ;