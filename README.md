[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/wk1TK3JR)

# P3b Serveis

## Exercici1: Accés a un servei

1. Afegir dependències:
   Obrim el fitxer pubspec.yaml i afegim la dependència d'http.
    ![alt text](image.png)

2. Creem la classe CarModel:
   Creem un nou fitxer anomenat car_model.dart dins de la carpeta lib.
   Defineixerem la classe CarModel amb els mètodes per convertir de/ a JSON:
   ![alt text](image-1.png)

3. Crear la funció per obtenir dades de l'API:
   Creem un nou fitxer anomenat car_service.dart.
   Implementem la funció per obtenir les dades de l'API:
   ![alt text](image-2.png)

4. Fer el test unitari
   Per permetre la connexió a internet, afegim a android-> app-> src-> main-> AndroidManifest.xml:
   ![alt text](image-3.png)
   Fem un joc de proves que executi el mètode getCars del servei i amb el que comprovem que la connexió funciona i les dades obtingudes són les que esperem.
   ![alt text](image-4.png)
   Executem la prove per veure si la fa correctament.
   ![alt text](image-6.png)

## Exercici 2: Provider

Respon les següents preguntes amb les mateixes paraules exactament tal i com les diuen al vídeo:
1. Qué és el que aprendrem a aquest vídeo? 
   "En este vídeo aprenderemos a manejar Un estado global de la aplicación en este paquete poderosísimo que se llama Provider"
   
2. Quina comanda es fa servir al vídeo per a crear una nova aplicació flutter?
   Al vídeo, la comanda que es fa servir per crear una nova aplicació Flutter és:
   flutter create --org com.codigocorrecto provider_counter
   
3. Com es treu el debugger banner? Afegeix la línia de codi que fan servir al vídeo per treure’l
    Al vídeo, es mostra la següent línia de codi per treure el debug banner:
    debugShowCheckedModeBanner: false,

    Aquesta línia s'afegeix dins del MaterialApp al fitxer main.dart:
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
    );


1. Afegir dependència de Provider:
   Afegim la següent dependència al pubspec.yaml:
   ![alt text](image-5.png)

2. Crear un Provider per a la llista de cotxes:
   Creem un nou fitxer anomenat car_provider.dart.
   Implementem el Provider:
   ![alt text](image-7.png)

## Exercici 3: Integrar vista i model

1. Creem la carpeta views i l'arxiu view_car.dart.
   ![alt text](image-8.png)

2. Configurem l'arxiu per a que es vegi el cotxes.
   ![alt text](image-9.png)

3. Un cop fet i configurat hem de configurar l'arxiu main.dart per a que crei l'aplicació i declare les variables del views_car.dart per a que es vegi.
   ![alt text](image-10.png)

4. Comprobem que funciona i es veu bé executant-el.
   ![alt text](image-11.png)

## Exercici 4: Acudits

1. Creem un arxiu nou anomenat joke_service.dart en la carpeta data:
   ![alt text](image-12.png)

2. Creem un Provider per a l'acudit:
   ![alt text](image-13.png)

3. Creem la vista per a l'acudit:
   ![alt text](image-14.png)

4. Creem el main per a l'acudit:
   ![alt text](image-15.png)
