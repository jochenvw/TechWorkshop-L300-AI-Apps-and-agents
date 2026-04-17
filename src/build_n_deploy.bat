REM az acr build --registry kfnrynfw4y5lmcosureg --image chat-app:latest --platform linux/amd64 --file Dockerfile .

az containerapp registry set --name kfnrynfw4y5lm-cosu-cae --resource-group rg-nl-stu-jvw-mandatory-course --server kfnrynfw4y5lmcosureg.azurecr.io --identity system
az containerapp update --name kfnrynfw4y5lm-cosu-cae --resource-group rg-nl-stu-jvw-mandatory-course --image kfnrynfw4y5lmcosureg.azurecr.io/chat-app:latest


az containerapp update --name kfnrynfw4y5lm-cosu-cae --resource-group rg-nl-stu-jvw-mandatory-course --set-env-vars   FOUNDRY_ENDPOINT="https://aif-kfnrynfw4y5lm.services.ai.azure.com/api/projects/proj-kfnrynfw4y5lm"   gpt_endpoint="https://aif-kfnrynfw4y5lm.services.ai.azure.com"   embedding_endpoint="https://aif-kfnrynfw4y5lm.services.ai.azure.com"   phi_4_endpoint="https://aif-kfnrynfw4y5lm.services.ai.azure.com"
