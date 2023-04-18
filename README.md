# Vending Machine Automtation


This project has the goal to collect sales from a vending machine
and consolidate everything into a single database and turn this data into information
for the customer.

Besides the automation, this project is a [POC](https://www.techtarget.com/searchcio/definition/proof-of-concept-POChttps://www.techtarget.com/searchcio/definition/proof-of-concept-POC)
to confirm that is possible to build an entire workflow on top of existing platform as long as you connect and configure
them properly. 


## Tech Stack

- Workflow automation using [n8n](https://n8n.io/) open-source (docker images)
- Sales will be saved into a [postgres]() database and exposed as API using [supabase](https://supabase.com/)
- Reports will be generated using [superset](https://superset.apache.org/) and [preset-cli](https://github.com/preset-io/backend-sdk) to turn all assets as code
- Diagram as code using [C4 model](https://c4model.com/), written and rendered with [structurizr DSL](https://structurizr.com/)

## Premisses

- We prefer to reuse any infrastructure code rather than implement it  
- When possible, the code produced must run on top of an existing platform  
- The entire automation must be persisted as code to be reproducible in different environments