package fr.diginamic.gestit_back.controller;

/*Ces méthodes statiques contiennent un ensemble de méthodes statiques permettant d'accéder aux assertions de différents éléments de réponse (status(), header(), content(), cookie(),...)*/
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.mockito.Mockito.times;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import com.fasterxml.jackson.databind.ObjectMapper;

import fr.diginamic.gestit_back.configuration.JWTConfig;
import fr.diginamic.gestit_back.controller.CovoiturageController;
import fr.diginamic.gestit_back.entites.Adresse;
import fr.diginamic.gestit_back.entites.Commune;
import fr.diginamic.gestit_back.entites.Covoiturage;
import fr.diginamic.gestit_back.entites.Marque;
import fr.diginamic.gestit_back.entites.Modele;
import fr.diginamic.gestit_back.entites.Utilisateur;
import fr.diginamic.gestit_back.entites.VehiculePerso;
import fr.diginamic.gestit_back.enumerations.Role;
import fr.diginamic.gestit_back.exceptions.CovoiturageNotFoundException;
import fr.diginamic.gestit_back.service.CovoiturageService;
import fr.diginamic.gestit_back.utils.JWTUtils;
import fr.diginamic.gestit_back.utils.RedisUtils;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

/**
 * Classe de tests unitaires dédiée au contrôleur REST CovoiturageController
 * de l'API.
 * Réalisés par Spring Boot l'aide de @WebMvcTest, les dépendances injectées
 * en provenance de couches différentes de celle de présentation (implémentée
 * sur le modèle MVC) sont donc simulées ici par des doublures Mokito.
 * Les requêtes et les vérification des réponses sont réalisées par un objet
 * MockMvc
 * Le processus de sérialisation/désérialisation (conversion Java<->Json) des
 * données pour le transport est réalisé par un ObjectMapper.
 * 
 * @author AtsuhikoMochizuki
 * 
 */
@WebMvcTest(CovoiturageController.class)
public class CovoiturageControllerTest {

    private static final String END_POINT_PATH = "/covoiturages";

    private MockMvc testeur;

    @MockBean
    private JWTUtils jwtUtils;

    @MockBean
    private JWTConfig jwtConfig;

    @MockBean
    private RedisUtils redisUtils;

    @Autowired
    private ObjectMapper convertisseurJavaJson;

    @MockBean
    private CovoiturageService doublureCovoiturageService;

    @MockBean
    private CovoiturageController cobaye;

    /***
     * Ce test envoie une demande de création d'un covoiturage avec un de ses
     * paramètres placés volontairement à null, alors que celui-ci possède la
     * contrainte NotNull.
     * L'objectif est de déclencher une erreur lors du traitement de la requête,
     * est de vérifier que le serveur renvoie bien un code 400 BadRequest.
     * Le service normalement appelé ici par le contrôlé est simulé par une
     * doublure Mokito.
     * 
     * @author AtsuhikoMochizuki
     * @throws Exception
     */
    @Test
    public void test_create_retourAttendu_erreur400BadRequest() throws Exception {

        Covoiturage covoiturageFauteurDeTroubles = new Covoiturage();
        covoiturageFauteurDeTroubles.setNombrePlacesRestantes(null);
        String corpsRequete = convertisseurJavaJson.writeValueAsString(covoiturageFauteurDeTroubles);

        testeur = MockMvcBuilders.standaloneSetup(cobaye).build();

        testeur.perform(post(END_POINT_PATH)
                .contentType(MediaType.APPLICATION_JSON)
                .content(corpsRequete))
                .andExpect(status().isBadRequest())
                .andDo(print());
    }
}