/*PGR-GNU*****************************************************************
File: contractGraph.sql

Generated with Template by:
Copyright (c) 2015 pgRouting developers
Mail: project@pgrouting.org

Function's developer: 
Copyright (c) 2016 Rohith Reddy
Mail: 

------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

********************************************************************PGR-GNU*/

CREATE OR REPLACE FUNCTION pgr_contractGraph(
    edges_sql TEXT,
    contraction_order BIGINT[],
    forbidden_vertices BIGINT[] DEFAULT ARRAY[]::BIGINT[],
    max_cycles integer DEFAULT 1,
    directed BOOLEAN DEFAULT true,
    OUT seq integer,
    OUT id BIGINT,
    OUT type TEXT,
    OUT source BIGINT,
    OUT target BIGINT,
    OUT contracted_vertices TEXT)

  RETURNS SETOF RECORD AS
 '$libdir/${PGROUTING_LIBRARY_NAME}', 'contractGraph'
    LANGUAGE c IMMUTABLE STRICT;

