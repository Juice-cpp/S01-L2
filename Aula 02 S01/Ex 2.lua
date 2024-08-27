math.randomseed(os.time())

local tabela = {}


for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end


local contagem_pares = 0
for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contagem_pares = contagem_pares + 1
    end
end

print("A tabela contém " .. contagem_pares .. " números pares.")
