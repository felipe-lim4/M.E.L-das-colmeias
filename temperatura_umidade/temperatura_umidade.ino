
// BIBLIOTECA PARA O FUNCIONAMENTO DO SENSOR
#include "DHT.h"

// DEFINIÇÃO DOS PARAMETROS DE FUNCIONAMENTO 
//"DEFINE" ESTA DIZENZO QUAL O SENSOR
#define TIPO_SENSOR DHT11

// DEFINE A PORTA QUE SERÁ RECOLHIDO OS DADOS PARA ALOCAR NA VARIAVEL PINO_SENSOR_DHT11
const int PINO_SENSOR_DHT11 = A1;

// FUNÇÃO QUE ALINHA A PORTA DE ENTRADA NO ARDUINO COM BASE NO TIPO DE SENSOR DEFINIDO
DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR);

// CRIANDO UMA CONSTANTE INTEIRA CHAMADA PINO_SENSOR_TEMPERATURA E DEFININDO A PORTA A0 PARA ELA
// CRIANDO UMA VARIÁVEL QUE ACEITA NÚMERO DECIMAL CHAMADA temperaturaCelsius
const int PINO_SENSOR_TEMPERATURA = A0;
float temperaturaCelsius;

// FUNÇÃO QUE INICIA AS PORTAS // FUNÇÃO QUE LIGA O SENSOR E MANDA CAPTURAR COM A FUNÇÃO sensorDHT
void setup() {
  Serial.begin(9600);
  sensorDHT.begin();
}

// EXECUTANDO REPETIÇÕES (LOOPING) -> ARMAZENA A LEITURA ANALÓGICO DO PINO_SENSOR_TEMPERATURA NA VARIÁVEL valorLeitura
// REALIZA A CONVERSÃO DO valorLeitura em TemperaturaCelsius através de cálculos matemáticos
void loop() {
  int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA);
  temperaturaCelsius = (valorLeitura * 5.0/1023.0) / 0.01;

  float umidade = sensorDHT.readHumidity();
  
// CONDIÇÃO DE INTERRUPÇÃO CASO O RETORNO DA VARIAVEL NÃO SEJA UM NUMERO.
  if (isnan(umidade)) {
    Serial.println("Erro ao ler os dados do sensor");
    
    //PASSE PELA VALIDAÇÃO, ENTRA NO PRINT DOS RESULTADOS
  } else{
    Serial.println(umidade);
  }

// REALIZA PRINTS de forma seriada do texto "Temperatura: (valor da variável)C" a cada 2000ms
 
  Serial.println(temperaturaCelsius);
 
  delay(1000);
}
