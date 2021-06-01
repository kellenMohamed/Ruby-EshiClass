require 'json'
require 'yaml'
require 'ostruct'

class UserData
    @data = JSON.parse(YAML.load(File.read('features/support/data/user_info.yml')).to_json, object_class: OpenStruct)

    #Método para expor o @data e pegar os dados:
    #O método já passa a chave que quer e ele devolve o valor da chave, sem precisar de um array para varrer a classe:
    def self.get(info)
        @data.send(info)
    end        
end    