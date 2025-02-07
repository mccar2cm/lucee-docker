<cfscript>
    variables.sqliteFilepath = "/var/www-databases/websitejoy.db";

    variables.datasource = {
    class: "org.sqlite.JDBC",
    connectionString: "jdbc:sqlite:#sqliteFilepath#"
};

```
<cftry>
    <cfcatch type="any">
        <cfquery name="createUserTable" datasource="#datasource#">
            CREATE TABLE users (
                username varchar(200) NOT NULL
            )
        </cfquery>
    </cfcatch>
</cftry>

```

variables.start = getTickCount();

for (i = 1; i <= 1; i++){



variables.username = randRange(0,10000);
variables.newUserName = randRange(0,10000);
```

<cfquery name="local.q1" result="local.q1Results" datasource="#datasource#">
    INSERT INTO users (username) VALUES ('#variables.username#');
</cfquery>

<cfquery name="local.q2" result="local.q2Results" datasource="#datasource#">
    update users set username = '#newUserName#' where username = '#username#'
</cfquery>

<cfquery name="local.results" result="local.q3Results" datasource="#datasource#">
    select rowid, * from users where username = '#newUserName#'
</cfquery>

<cfquery name="local.q4" result="local.q4" datasource="#datasource#">
    select rowid, * from users
</cfquery>

```
}
variables.end = getTickCount();
</cfscript>

<cfoutput>#end-start# ms to run</cfoutput>
<cfdump var="#local#">