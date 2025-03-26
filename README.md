# 2.1.-BaseDades_N2
A serie of SQL queries linked to a university and a store databases. 

In order to get: 
- **Specific data from a table:** Using simple SELECT and advanced filtering with WHERE, GROUP BY, and HAVING.
- **Table relationships:** Using inner and outer JOIN to explore and combine data from multiple tables.
- **Calculations:** Using COUNT(), SUM(), and other functions to summarize and analyze data.
- **Filtering and Sorting:** Use of WHERE, GROUP BY, HAVING, ORDER BY, and LIMIT clauses for precise filtering and presentation of results.
- **String and Date Manipulation:** Functions like UPPER(), LOWER(), etc., for text and date operations.


## Databases
### Store:
A database that models a store with products and manufacturers.\
**- Tables:**
  - producto (codigo, nombre, precio, codigo_fabricante)
  - fabricante (codigo, nombre)
**Relationships:** producto.codigo_fabricante relates to fabricante.codigo.

### University:
A database modeling a university with students, professors, departments, degrees, and courses.\
**- Tables:**
    - departamento
    - persona (students and professors)
    - profesor
    - grado
    - asignatura
    - curso_escolar
    - alumno_se_matricula_asignatura

**Relationships:**
This database includes various one-to-many and many-to-many relationships between tables.

