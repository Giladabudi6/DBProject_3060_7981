CREATE FUNCTION count_entities RETURN INT IS
    total_count INT := 0;
    temp_count INT;
BEGIN
    SELECT COUNT(*) INTO temp_count FROM commander;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM driver;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM equipment_manager;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM medic;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM doctor;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM paramedic;
    total_count := total_count + temp_count;

    RETURN total_count;
END count_entities;




CREATE OR REPLACE PROCEDURE update_paramedics IS
BEGIN
    UPDATE paramedic
    SET seniority = seniority + 1;

    DELETE FROM paramedic
    WHERE seniority = 41;
END update_paramedics;




SELECT count_entities() AS total_entities_before_update FROM dual;

CALL update_paramedics();

SELECT count_entities() AS total_entities_after_update FROM dual;


















































































































