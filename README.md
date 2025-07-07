# Warehouse Database Scripts

This repository contains three SQL scripts that create the core databases used in the warehouse environment. All scripts are saved in **UTF-16 Little Endian** encoding and include a byte-order mark so that tools like SQL Server Management Studio (SSMS) and `sqlcmd` can correctly process the Unicode characters.

## Scripts

| File | Database | Purpose |
| ---- | -------- | ------- |
| `aacs_db_scripts.sql` | `aacs_PROD` | Creates the AACS schema including tables for facilities, residents and related lookups. |
| `anacc_db_scripts.sql` | `ANACC` | Sets up ANACC tables that store aged care facility data and related classifications. |
| `medicare_db_script.sql` | `MedicareData_V1` | Builds the Medicare data warehouse schema used to hold classification and claim information. |

## Executing the scripts

The scripts can be run using SQL Server tools. Because the files are encoded in UTF‑16 with a BOM, no special parameters are required. The examples below assume Windows authentication. Specify `-U` and `-P` for SQL authentication if needed.

```cmd
sqlcmd -S <SERVER> -d master -E -i aacs_db_scripts.sql
sqlcmd -S <SERVER> -d master -E -i anacc_db_scripts.sql
sqlcmd -S <SERVER> -d master -E -i medicare_db_script.sql
```

Alternatively, open each file in SSMS and execute the contents.

## Building the reporting layer

After the three source databases have been created, create a new database for reporting (for example, `WarehouseReporting`). In this database, create views that reference the source tables using three-part names.

```sql
CREATE VIEW dbo.ResidentSummary AS
SELECT r.Id,
       r.FirstName,
       r.LastName,
       f.FacilityName
FROM aacs_PROD.dbo.Residents r
JOIN ANACC.dbo.AgedCareFacility f ON r.FacilityId = f.ServiceNapsId;

CREATE VIEW dbo.AnaccClaims AS
SELECT c.*
FROM MedicareData_V1.dbo.AnaccClassifications c;
```

These views expose the operational data in a single schema that can be queried by downstream BI tools without needing direct access to each source database.
