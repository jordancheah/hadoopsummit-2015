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
    narrow_avro;
    
SELECT
    COUNT(*)
FROM
    narrow_avro
WHERE
    user_name NOT LIKE 'a%'
AND ip LIKE '%65%'
AND url NOT LIKE '%biz%'
AND referer LIKE '%com%'
AND agent LIKE '%Firefox%';

SELECT
    COUNT(*)
FROM
    narrow_avro
WHERE
    ip NOT LIKE '%12%'
AND user_name LIKE 's%'
AND unix_time > 10000
AND time LIKE '%2%'
AND url LIKE '%com%'
AND domain NOT LIKE '%org%'
AND page NOT LIKE '%privacy%'
AND port > 5000
AND referer NOT LIKE '%biz%'
AND agent LIKE '%Safari%';
