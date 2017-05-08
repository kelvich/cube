/* contrib/cube/cube--1.2--1.3.sql */

-- complain if script is sourced in psql, rather than via ALTER EXTENSION
\echo Use "ALTER EXTENSION cube UPDATE TO '1.3'" to load this file. \quit

CREATE FUNCTION cube_to_array(cube)
RETURNS float8[]
AS 'MODULE_PATHNAME'
LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
