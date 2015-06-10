-- Copyright 2015 Silicon Valley Data Science.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

USE hadoopsummit2015;

SELECT
    COUNT(*)
FROM
    wide_parquet;

SELECT
    COUNT(*)
FROM
    wide_parquet
WHERE
    first_name NOT LIKE 'a%'
AND phone_number LIKE '%5%'
AND letter_43 NOT LIKE 'b'
AND number_102 > 60
AND bool_200 = false;

SELECT
    COUNT(*)
FROM
    wide_parquet
WHERE
    last_name NOT LIKE 'w%'
AND email LIKE '%com%'
AND letter_77 LIKE 'r'
AND number_106 < 300
AND bool_143 = true
AND letter_252 NOT LIKE 'o'
AND number_311 > 400
AND bool_323 = false
AND letter_326 NOT LIKE 's'
AND number_326 < 200;

SELECT
    COUNT(*)
FROM
    wide_parquet
WHERE
    url NOT LIKE '%biz%'
AND user_name LIKE 't%'
AND letter_93 LIKE 'q'
AND number_102 < 350
AND bool_117 = true
AND letter_138 NOT LIKE 'd'
AND number_174 > 460
AND bool_215 = false
AND letter_238 NOT LIKE 'i'
AND number_269 < 250
AND user_agent NOT LIKE '%Chrome%'
AND zipcode_plus4  LIKE '%44%'
AND letter_247 LIKE 'j'
AND number_253 > 400
AND bool_256 = true
AND letter_314 NOT LIKE 'f'
AND number_316 < 110
AND bool_319 = false
AND letter_320 NOT LIKE 'c'
AND number_320 > 200;
