Un trigger, o disparador en español, es un tipo especial de procedimiento almacenado que se activa automáticamente cuando ocurre un evento específico en una tabla de una base de datos relacional, como INSERT, UPDATE o DELETE. Su función principal es ejecutar un conjunto de acciones definidas por el usuario en respuesta a ese evento.

La estructura básica de un trigger en SQL es la siguiente:
```sql
DELIMITER //

CREATE TRIGGER nombre_trigger
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON nombre_tabla
FOR EACH ROW
BEGIN
    -- Acciones a realizar
END;
//

DELIMITER ;
```
**DELIMITER**: Cambia el delimitador que usa sql para poder ejecutar acciones, en este caso como nuestro disparador tendra una serie de instrucciones en sql, estaremos usando el ';' de manera constante, por lo que debemos modificar el delimitador al principio y al final de la creacion de nuestro disparador.

**nombre_trigger**: Es el nombre que le das al trigger.

**{BEFORE | AFTER}**: Indica si el trigger se ejecutará antes o después del evento que lo activa.

**{INSERT | UPDATE | DELETE}**: Especifica el tipo de evento que activará el trigger.

**ON nombre_tabla**: Indica en qué tabla se creará el trigger.

**FOR EACH ROW**: Indica que el trigger se ejecutará una vez por cada fila afectada por el evento.

Los eventos a los que puede reaccionar un trigger son:

**INSERT**: Se activa cuando se inserta una nueva fila en la tabla.

**UPDATE**: Se activa cuando se actualiza una fila existente en la tabla.

**DELETE**: Se activa cuando se elimina una fila de la tabla.

>**Nota: En este repositorio se encuentran dos archivos, uno para crear una base de datos de ejemplo y otro mas donde se encuentra un disparador.**