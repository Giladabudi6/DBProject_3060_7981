ALTER TABLE commander
ADD CONSTRAINT check_numofunitcom CHECK (numofunitcom BETWEEN 50 AND 100);

ALTER TABLE driver
ADD CONSTRAINT unique_license_number UNIQUE (license_number);

ALTER TABLE doctor
ADD CONSTRAINT check_doctor_seniority CHECK (seniority <= 41);

ALTER TABLE paramedic
ADD CONSTRAINT check_paramedic_seniority CHECK (seniority <= 41);

ALTER TABLE medic
ADD CONSTRAINT check_medic_seniority CHECK (seniority <= 41);
