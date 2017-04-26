-- the erth shrank? but only ofr some people"
UPDATE patients
SET weight = weight * .95
WHERE height is < 76
;
