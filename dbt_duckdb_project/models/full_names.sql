SELECT
  id,
  first_name,
  last_name,
  email,
  first_name || ' ' || last_name AS full_name
FROM {{ ref('people') }}

