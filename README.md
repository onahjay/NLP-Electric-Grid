# Digital Assistant for Resilient Operation of the Power Grid Using a Natural Language Interface
## Jonah Davis, WSU Smart Environments REU, Summer 2020

**Project Abstract**

Physical damage to the electric grids we rely on is impossible to prevent, especially during extreme circumstances such as natural disasters. However, with rapid and well informed decisions, grid operators can lessen the negative impact. The team at SGDRIL has developed a real-time tool to process and visualize the data collected by the smart components of the grid. Here, we present an addition to this tool that is able to access specific pieces of information quickly and simply through the use of a natural language interface. Built around [NLPCraft](https://nlpcraft.apache.org), the tool uses model-based intent matching to parse a natural language user input, translate it into an SQL query, and return the result to the operator. While it is still in the early stages of development, the tool was shown to answer over 90% of simple questions correctly in an average time of 568 milliseconds. These results suggest the viability of this approach as we continue development and add support for a broader range of queries.

**Getting Started**

Before running the tool, follow these steps:

1. Create a PostgreSQL database from `src/main/scala/org/apache/nlpcraft/examples/sql/db/dump.sql`.
2. In `src/main/scala/org/apache/nlpcraft/examples/sql/db/SqlAccess.scala`, update line 48 to connect to the server created above. If you are using the JDBC driver, you should only need to change the function's arguments.

To run the tool, follow the steps from NLPCraft's documentation for starting the [REST server](https://nlpcraft.apache.org/examples/sql_model.html#start_server) and [Data Probe](https://nlpcraft.apache.org/examples/sql_model.html#start_probe). 

**Using the Interface**

For convenience, `nccurl.sh` is used to shorten user input. First, sign in as the default user with the following command:

`./nccurl.sh signin '{"email": "admin@admin.com", "passwd": "admin"}' | python -m json.tool`

Using the access token returned, use the following command to query the database:

`./nccurl.sh ask/sync '{"acsTok": "[ACCESS_TOKEN]", "txt": "[QUERY]", "mdlId": "sql.model.id"}' | python -m json.tool`
