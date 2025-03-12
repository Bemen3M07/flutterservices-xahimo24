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

1. Afegir dependència de Provider:
   Afegim la següent dependència al pubspec.yaml:
   ![alt text](image-5.png)

2.