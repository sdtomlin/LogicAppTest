FROM mcr.microsoft.com/azure-functions/node:4.0
ENV AzureWebJobsStorage DefaultEndpointsProtocol=AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;DefaultEndpointsProtocol=http;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1;QueueEndpoint=http://127.0.0.1:10001/devstoreaccount1;TableEndpoint=http://127.0.0.1:10002/devstoreaccount1;
ENV AzureWebJobsScriptRoot=/home/site/wwwroot AzureFunctionsJobHost__Logging__Console__IsEnabled=true FUNCTIONS_V2_COMPATIBILITY_MODE=true
ENV WEBSITE_HOSTNAME localhost
ENV WEBSITE_SITE_NAME test
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
COPY . /home/site/wwwroot

RUN cd /home/site/wwwroot