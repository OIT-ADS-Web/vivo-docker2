# Cron backup

Files necessary to create an automated backup of Duke test vivo instance

## Usage

### jena2tools

    java -jar jena2tools [arguments] -d home_directory
    
    Arguments
    -d, --dir      REQUIRED. Specify the VIVO/Vitro home directory
    -i, --import   Import TriG format data to triple stores
    -e, --export   Export data from triple stores. Default format is TriG
    -h, --help     Display help text
    -f, --force    Force overwrite of previous exports
    -o, --output   Output format followed by one of nt, nq, trig, rdf, or ttl
    
## jena3tools

    java -jar jena3tools [arguments] -d home_directory
        
    Arguments
    -d, --dir      REQUIRED. Specify the VIVO/Vitro home directory
    -i, --import   Import TriG format data to triple stores
    -e, --export   Export data from triple stores. Default format is TriG
    -h, --help     Display help text
    -f, --force    Force overwrite of previous exports
    -o, --output   Output format followed by one of nt, nq, jsonld, trig, rdf, or ttl


## TODO:

1. run `java -jar jena3tools -e -d /usr/local/VIVO/home/config`
   this will put data dump in `config/dumps`
2. `tar -czvf archives/$(date).tar.gz /usr/local/VIVO/home/config/dumps`
   so there is a copy in `archives` folder
3. delete anything older than 7 days? from `archives` folder



