-- Créations des données de test

-- Comptes et utilisateurs
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO COMPTE (idCompte) VALUES (id_compte.nextval);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root', 'root', 'ADMIN', 'Super', 'Anywhere', 1);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root2', 'root2', 'Bernard', 'Jacques', '14 chemin neuf Grenoble 38000', 2);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root3', 'root3', 'Tremblay', 'Etienne', '9 rue du loup Paris 75015', 3);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root4', 'root4', 'Senneville', 'Dorene ', '48, rue de la Mare aux Carats, Montreuil 93100', 4);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root5', 'root5', 'Lavallée', 'Baptiste ', '62, rue Reine Elisabeth, Menton 06500', 5);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root6', 'root6', 'Berie', 'Telford ', '3, rue Pierre De Coubertin, Toulouse 31000', 6);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root7', 'root7', 'DeGrasse', 'Grégoire', '66, place Maurice-Charretier, Charenton-le-Pont 94220', 7);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root8', 'root8', 'Alexandre', 'Narcisse', '56, rue Porte d Orange, Cayenne 97300', 8);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root9', 'root9', 'Laboissonnière', 'William', '73, boulevard d Alsace, Verdun 55100', 9);
INSERT INTO Utilisateur (mailUtil, mdpUtil, nomUtil, prenomUtil, adrUtil, idCompte) VALUES ('root10', 'root10', 'France', 'Sylvain', '98, rue Descartes, Strasbourg 67100', 10);

-- Catégories et liens
INSERT INTO Categorie (nomCategorie) VALUES ('High-Tech');
INSERT INTO Categorie (nomCategorie) VALUES ('Smartphones');
INSERT INTO Categorie (nomCategorie) VALUES ('Photo & Vidéo');
INSERT INTO Categorie (nomCategorie) VALUES ('Tablettes');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Smartphones', 'High-Tech');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Photo & Vidéo', 'High-Tech');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Tablettes', 'High-Tech');
INSERT INTO Categorie (nomCategorie) VALUES ('Accessoires de tablette');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Accessoires de tablette', 'Tablettes');
INSERT INTO Categorie (nomCategorie) VALUES ('Caméras de sport');
INSERT INTO Categorie (nomCategorie) VALUES ('Appareils photo numérique');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Caméras de sport', 'Photo & Vidéo');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Appareils photo numérique', 'Photo & Vidéo');
INSERT INTO Categorie (nomCategorie) VALUES ('Accessoires de smartphones');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Accessoires de smartphones', 'Smartphones');
INSERT INTO Categorie (nomCategorie) VALUES ('Chaussures');
INSERT INTO Categorie (nomCategorie) VALUES ('Chaussures de sport');
INSERT INTO Categorie (nomCategorie) VALUES ('Chaussures de ville');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Chaussures de sport', 'Chaussures');
INSERT INTO APOURMERE (filleCategorie, mereCategorie) VALUES ('Chaussures de ville', 'Chaussures');

-- Produits et caractéristiques
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Chaussures de sport NEXT', 39.99, 'Des chaussures qui conviennent à toute activité sportive.', '/chaussures_sport_next', 'Chaussures de sport');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (1, 'marque', 'NEXT');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (1, 'pointure', '44');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (1, 'couleur', 'Rouge et blanche') ;
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Chaussures de ville GEN', 69.99, 'La référence chaussure, GEN.', '/chaussures_ville_gen', 'Chaussures de ville');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (2, 'marque', 'GEN') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (2, 'pointure', '45') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (2, 'couleur', 'Bleue');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Chaussures GEN2+ City', 89.99, 'Les dernières chaussures GEN+ City', '/chaussures_ville_gen2p', 'Chaussures de ville');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (3, 'marque', 'GEN') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (3, 'modele', 'GEN2+ City') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (3, 'pointure', '42') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (3, 'couleur', 'Bleue et blanche');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Chaussures de ville GEN Limited Edition', 109.99, 'Première édition des chaussures GEN', '/chaussures_ville_gen_limited_edition', 'Chaussures de ville');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (4, 'marque', 'GEN') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (4, 'modele', 'GEN Limited Edition') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (4, 'pointure', '43') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (4, 'couleur', 'Bleue');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Chaussures de ville GEN2-', 69.99, 'Les dernières chaussures GEN2-', '/chaussures_ville_gen2m', 'Chaussures de ville');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (5, 'marque', 'GEN') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (5, 'modele', 'GEN2- City') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (5, 'pointure', '45') ;
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (5, 'couleur', 'Bleue');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'KODAX Pixel Pro', 229.99, 'Appareil Photo Compact 2.7K avec une résolution vidéo Full HD 2.7K', '/appareil_numerique_kodax_pix_pro', 'Appareils photo numérique');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (6, 'marque', 'KODAX');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (6, 'mémoire', '128 Go');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (6, 'zoom', 'Numérique 1-16x');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (6, 'couleur', 'Noir');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Xioaminx 10 Pro', 299.00, 'Le Xioaminx 10 Pro possède les dernières technologies de caméra, profitez de ses 2 caméras intégrés pour exprimer votre créativité.', '/smartphone_xioaminx_10_pro', 'Smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (7, 'marque', 'Xioaxminx');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (7, 'OS', 'Android 10.1');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (7, 'RAM', '6 Go');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (7, 'display', 'AMOLED DotDisplay 6.67 pouces');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (7, 'couleur', 'Gris');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'ProGo HERO8', 329.00, 'Cette caméra offre aux vlogueurs, cinéastes professionnels et créateurs en herbe des possibilités jusqu’alors inimaginables.', '/camera_sport_progo_hero8', 'Caméras de sport');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'marque', 'ProGo');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'modèle', 'HERO8');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'couleur', 'Noir');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'zoom', 'Numérique 1x');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'display', 'LCD 1.95 pouces');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (8, 'resolution', '12.1 MP');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'HEAWUI MediaPad T3', 529.98, 'Découvrez le tout nouveau HarmonyOS 2 sur un grand écran OLED FullView de 12.6 pouces.', '/tablette_heawui_mediapad_t3', 'Tablettes');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (9, 'marque', 'HEAWUI');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (9, 'couleur', 'Blanc chromé');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (9, 'display', 'OLED FullView 12.6 pouces');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (9, 'OS', 'HarmonyOS 2');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (9, 'batterie', '10 050 mAh avec Wireless Charging disponible');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'HEAWUI MediaPad T2', 429.98, 'Découvrez le tout nouveau HarmonyOS 1.5 sur un grand écran OLED FullView de 11 pouces.', '/tablette_heawui_mediapad_t2', 'Tablettes');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (10, 'marque', 'HEAWUI');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (10, 'couleur', 'Noir chromé');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (10, 'display', 'OLED FullView 11 pouces');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (10, 'OS', 'HarmonyOS 1.5');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (10, 'batterie', '9 050 mAh avec Wireless Charging disponible');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'HEAWUI MediaPad T1', 329.98, 'Découvrez le tout nouveau HarmonyOS 1 sur un grand écran OLED FullView de 10.8 pouces.', '/tablette_heawui_mediapad_t1', 'Tablettes');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (11, 'marque', 'HEAWUI');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (11, 'couleur', 'Blanc');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (11, 'display', 'OLED FullView 10.8 pouces');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (11, 'OS', 'HarmonyOS 1');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (11, 'batterie', '8 050 mAh');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'HEAWUI M-Pencil for MediaPad', 49.99, 'Stylet HEAWUI M-Pencil de deuxième génération, réalisez vos chefs-d œuvre sur tablette comme si vous dessiniez sur du papier.', '/accessoire_tablette_heawui_mpencil_mediapad', 'Accessoires de tablette');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (12, 'couleur', 'Blanc chromé');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (12, 'marque', 'HEAWUI');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (12, 'compatibilité', 'Conçu pour HEAWUI MediaPad T1+ et M1+');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque G4P pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque Premium G4P !', '/accessoire_tablette_xioaminx_10_coque_g4p', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (13, 'couleur', 'Rouge');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (13, 'marque', 'G4P');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (13, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque TAR+ pour Xioaminx 10 et 10 Pro', 15.99, 'Equipez votre nouveau smartphone Xioaminx d une coque TAR+ !', '/accessoire_tablette_xioaminx_10_coque_tarp', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (14, 'couleur', 'Bleue');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (14, 'marque', 'TAR+');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (14, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque L33T pour Xioaminx 10 et 10 Pro', 25.99, 'Equipez votre nouveau smartphone Xioaminx d une coque L33T !', '/accessoire_tablette_xioaminx_10_coque_l33t', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (15, 'couleur', 'Verte');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (15, 'marque', 'L33T');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (15, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque W8 pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque W8 !', '/accessoire_tablette_xioaminx_10_coque_w8', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (16, 'couleur', 'Rouge');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (16, 'marque', 'W8');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (16, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque 4U pour Xioaminx 10 et 10 Pro', 9.99, 'Equipez votre nouveau smartphone Xioaminx d une coque 4U !', '/accessoire_tablette_xioaminx_10_coque_4u', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (17, 'couleur', 'Rose');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (17, 'marque', '4U');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (17, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque L3D pour Xioaminx 10 et 10 Pro', 14.99, 'Equipez votre nouveau smartphone Xioaminx d une coque L3D !', '/accessoire_tablette_xioaminx_10_coque_l3d', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (18, 'couleur', 'Jaune fluo');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (18, 'marque', 'L3D');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (18, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque M4D pour Xioaminx 10 et 10 Pro', 11.99, 'Equipez votre nouveau smartphone Xioaminx d une coque M4D !', '/accessoire_tablette_xioaminx_10_coque_m4d', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (19, 'couleur', 'Orange');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (19, 'marque', 'M4D');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (19, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque M3D1 pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque M3D1 !', '/accessoire_tablette_xioaminx_10_coque_m3d1', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (20, 'couleur', 'Pourpre');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (20, 'marque', 'M3D1');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (20, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque G4N pour Xioaminx 10 et 10 Pro', 10.99, 'Equipez votre nouveau smartphone Xioaminx d une coque G4N !', '/accessoire_tablette_xioaminx_10_coque_g4n', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (21, 'couleur', 'Kaki');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (21, 'marque', 'G4N');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (21, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque 4LT pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque 4LT !', '/accessoire_tablette_xioaminx_10_coque_4lt', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (22, 'couleur', 'Bleue ciel');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (22, 'marque', '4LT');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (22, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque J4X pour Xioaminx 10 et 10 Pro', 23.99, 'Equipez votre nouveau smartphone Xioaminx d une coque J4X !', '/accessoire_tablette_xioaminx_10_coque_j4x', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (23, 'couleur', 'Violette');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (23, 'marque', 'J4X');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (23, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque P0W pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque P0W !', '/accessoire_tablette_xioaminx_10_coque_p0w', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (24, 'couleur', 'Noire');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (24, 'marque', 'P0W');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (24, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque 9S pour Xioaminx 10 et 10 Pro', 14.99, 'Equipez votre nouveau smartphone Xioaminx d une coque 9S !', '/accessoire_tablette_xioaminx_10_coque_9s', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (25, 'couleur', 'Blanche');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (25, 'marque', '9S');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (25, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque 2B pour Xioaminx 10 et 10 Pro', 14.99, 'Equipez votre nouveau smartphone Xioaminx d une coque 2B !', '/accessoire_tablette_xioaminx_10_coque_2b', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (26, 'couleur', 'Blanche');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (26, 'marque', '2B');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (26, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque FL0 pouér Xioaminx 10 et 10 Pro', 10.99, 'Equipez votre nouveau smartphone Xioaminx d une coque FL0 !', '/accessoire_tablette_xioaminx_10_coque_fl0', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (27, 'couleur', 'Orange');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (27, 'marque', 'FL0');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (27, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque FR3D pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque FR3D !', '/accessoire_tablette_xioaminx_10_coque_fr3d', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (28, 'couleur', 'Bleue, blanche et rouge');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (28, 'marque', 'FR3D');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (28, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');
INSERT INTO PRODUIT (idProd, nomProd, prixCProd, descProd, urlProd, nomCategorie) VALUES (id_produit.nextval, 'Coque L0L pour Xioaminx 10 et 10 Pro', 19.99, 'Equipez votre nouveau smartphone Xioaminx d une coque L0L !', '/accessoire_tablette_xioaminx_10_coque_l0l', 'Accessoires de smartphones');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (29, 'couleur', 'Jaune');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (29, 'marque', 'L0L');
INSERT INTO CARACPRODUIT (idProd, caracProd, valeurProd) VALUES (29, 'compatibilité', 'Conçu spécifiquement pour Xioaminx 10 ou 10 Pro');

-- ! Impossible de faire des offres par une simple insertion. Exécuter "DatabaseManagement" puis "Insérer un jeu de test"