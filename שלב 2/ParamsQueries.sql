CREATE OR REPLACE PROCEDURE get_commander_info(p_comID IN commander.comID%TYPE) IS
  v_comID commander.comID%TYPE;
  v_rank commander.rank%TYPE;
  v_numofunitcom commander.numofunitcom%TYPE;
BEGIN
  SELECT comID, rank, numofunitcom
  INTO v_comID, v_rank, v_numofunitcom
  FROM commander
  WHERE comID = p_comID;
  
  DBMS_OUTPUT.PUT_LINE('comID: ' || v_comID || ', rank: ' || v_rank || ', numofunitcom: ' || v_numofunitcom);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No commander found with comID: ' || p_comID);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




CREATE OR REPLACE PROCEDURE get_equ_managers_expertise(p_expertise IN equipment_manager.expertise%TYPE) IS
BEGIN
  FOR r IN (SELECT equID, expertise, numofuniteqi, comID 
            FROM equipment_manager 
            WHERE expertise = p_expertise) 
  LOOP
    DBMS_OUTPUT.PUT_LINE('Equipment Manager ID: ' || r.equID || ', Expertise: ' || r.expertise || ', Number of Units: ' || r.numofuniteqi || ', Commander ID: ' || r.comID);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No equipment managers found with expertise: ' || p_expertise);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




CREATE OR REPLACE PROCEDURE get_doctors_by_seniority(p_seniority IN doctor.seniority%TYPE) IS
BEGIN
  FOR r IN (SELECT docID, license_number, seniority, numofunitdoc, comID, equID 
            FROM doctor 
            WHERE seniority > p_seniority) 
  LOOP
    DBMS_OUTPUT.PUT_LINE('Doctor ID: ' || r.docID || ', License Number: ' || r.license_number || ', Seniority: ' || r.seniority || ', Number of Units: ' || r.numofunitdoc || ', Commander ID: ' || r.comID || ', Equipment Manager ID: ' || r.equID);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No doctors found with seniority greater than: ' || p_seniority);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/



CREATE OR REPLACE PROCEDURE find_driver_by_license_number(
    p_license_number IN INT
) IS
    v_driver driver%ROWTYPE;
BEGIN
    SELECT *
    INTO v_driver
    FROM driver
    WHERE license_number = p_license_number;

    IF v_driver.drID IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Driver ID: ' || v_driver.drID || ', License Number: ' || v_driver.license_number || ', Number of Units: ' || v_driver.numofunitdri || ', Commander ID: ' || v_driver.comID);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Driver with license number ' || p_license_number || ' not found.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No driver found with license number: ' || p_license_number);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/