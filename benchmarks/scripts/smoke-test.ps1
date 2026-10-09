$body = @{ model = "Qwen/Qwen3-8B"; messages = @(@{ role = "user"; content = "Explain the KV cache in two sentences." }) } | ConvertTo-Json -Depth 5
(Invoke-RestMethod http://localhost:8000/v1/chat/completions -Method Post -ContentType "application/json" -Body $body).choices[0].message.content
