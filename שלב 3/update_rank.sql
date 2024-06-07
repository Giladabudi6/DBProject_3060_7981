CREATE FUNCTION get_unit_with_most_staff RETURN INT IS
  max_unit INT;
BEGIN
  SELECT numofunitcom
  INTO max_unit
  FROM (
    SELECT numofunitcom, COUNT(*) AS staff_count
    FROM (
      SELECT numofunitcom FROM commander
      UNION ALL
      SELECT numofunitdri AS numofunitcom FROM driver
      UNION ALL
      SELECT numofuniteqi AS numofunitcom FROM equipment_manager
      UNION ALL
      SELECT numofunitmed AS numofunitcom FROM medic
      UNION ALL
      SELECT numofunitdoc AS numofunitcom FROM doctor
      UNION ALL
      SELECT numofunitpar AS numofunitcom FROM paramedic
    )
    GROUP BY numofunitcom
    ORDER BY staff_count DESC
  )
  WHERE ROWNUM = 1;

  RETURN max_unit;
END;
/





CREATE PROCEDURE update_commanders_rank AS
BEGIN
  FOR commander_rec IN (SELECT comID, rank FROM commander WHERE numofunitcom = get_unit_with_most_staff()) LOOP
    IF commander_rec.rank = 'segen' THEN
      UPDATE commander SET rank = 'seren' WHERE comID = commander_rec.comID;
    ELSIF commander_rec.rank = 'seren' THEN
      UPDATE commander SET rank = 'ravseren' WHERE comID = commander_rec.comID;
    END IF;
  END LOOP;
END;
/






DECLARE
    most_staff_unit INT;
BEGIN
    most_staff_unit := get_unit_with_most_staff();

    update_commanders_rank();
END;
/
