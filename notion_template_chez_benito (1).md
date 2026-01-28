# 🌮 CHEZ BENITO - Gestion de Restaurant RP

> **Projet Full-Stack MERN** - Site vitrine + Dashboard admin pour la gestion d'un restaurant mexicain fictif (Red Dead Redemption 2 RP)

---

## 📊 Vue d'ensemble du projet

### Objectifs
- ✅ Créer un site professionnel pour le portfolio
- ✅ Développer une application full-stack complète (MERN)
- ✅ Apprendre le backend (Node.js, Express, MongoDB)
- ✅ Faciliter la gestion RP en jeu

### Stack Technique
**Frontend:** React 18, Vite, Redux Toolkit, SCSS, React Router  
**Backend:** Node.js, Express.js, MongoDB, Mongoose, JWT  
**DevOps:** Git/GitHub, Postman, MongoDB Atlas

### Durée estimée
**10 semaines** (ajustable selon disponibilité)

---

## 🎯 PHASE 1 : Fondations & Setup
**Durée : Semaines 1-2**

### 📦 Setup Initial

#### To Do
- [ ] Initialiser le repository GitHub avec README
- [ ] Créer la structure du monorepo (frontend/ et backend/)
- [ ] Setup React + Vite + SCSS
- [ ] Installer les dépendances frontend (React Router, Redux Toolkit, Axios, etc.)
- [ ] Configurer l'architecture SCSS (7-1 pattern : base, components, layout, etc.)
- [ ] Définir les breakpoints responsive (375px, 640px, 768px, 1024px, 1920px, 2560px)

#### In Progress

#### Done

---

### 🔧 Backend - Configuration

#### To Do
- [ ] Initialiser le serveur Node.js + Express
- [ ] Configurer la structure des dossiers backend (routes, controllers, models, middleware)
- [ ] Installer les dépendances (express, mongoose, bcrypt, jsonwebtoken, dotenv, cors, express-validator)
- [ ] Créer le fichier .env pour les variables d'environnement
- [ ] Setup MongoDB (local ou Atlas) et tester la connexion
- [ ] Créer le fichier server.js de base avec middleware

#### In Progress

#### Done

---

### 🔐 Système d'Authentification

#### To Do
- [ ] **Backend:** Créer le modèle User (username, password, role, timestamps)
- [ ] **Backend:** Implémenter le hashing bcrypt pour les mots de passe
- [ ] **Backend:** Route POST /api/auth/register avec validation
- [ ] **Backend:** Route POST /api/auth/login + génération JWT
- [ ] **Backend:** Middleware de vérification JWT (protect routes)
- [ ] **Backend:** Route GET /api/auth/me (récupérer user connecté)
- [ ] **Postman:** Tester tous les endpoints auth
- [ ] **Frontend:** Créer les pages Login et Register (UI)
- [ ] **Frontend:** Redux slice authSlice (actions: login, register, logout, getMe)
- [ ] **Frontend:** Configurer Axios avec interceptor pour JWT
- [ ] **Frontend:** Implémenter ProtectedRoute component
- [ ] **Frontend:** Formulaires avec validation (React Hook Form + Yup)
- [ ] **Test E2E:** Scénario complet inscription → connexion → accès dashboard

#### In Progress

#### Done

---

## 🎨 PHASE 2 : Site Public & Landing Page
**Durée : Semaines 3-4**

### 🎭 Design & Maquettage

#### To Do
- [ ] Recherche d'inspiration (thème Western/Mexicain)
- [ ] Définir la charte graphique (couleurs, typographies)
- [ ] Maquette Figma : Homepage
- [ ] Maquette Figma : Page Menu/Carte
- [ ] Maquette Figma : Page Concept/Histoire
- [ ] Maquette Figma : Page Équipe
- [ ] Valider le design responsive sur tous breakpoints

#### In Progress

#### Done

---

### 🏠 Homepage - Landing Page

#### To Do
- [ ] Header/Navbar responsive avec logo "Chez Benito"
- [ ] Hero section avec image d'ambiance + CTA
- [ ] Section "Notre Histoire" (basée sur le PDF - vision de Benito)
- [ ] Section "Concept Mobile" (charette itinérante)
- [ ] Section "Nos Spécialités" (aperçu des plats)
- [ ] Section "Contact" avec localisation (Las Hermanas)
- [ ] Footer avec liens sociaux et infos
- [ ] Animations au scroll (AOS ou Framer Motion)
- [ ] Optimisation performance (lazy loading images)

#### In Progress

#### Done

---

### 📜 Page Menu/Carte

#### To Do
- [ ] Layout de la carte avec catégories (Carte fixe / Carte évolutive / Boissons)
- [ ] Affichage des spécialités mexicaines
- [ ] Section "Plat de la semaine"
- [ ] Pricing et descriptions
- [ ] Filtres par catégorie
- [ ] Design thématique (parchemin, motifs mexicains)
- [ ] Animations hover sur les plats

#### In Progress

#### Done

---

### 📖 Pages Additionnelles

#### To Do
- [ ] **Page "Notre Concept":** Gastronomie itinérante, valeurs, approvisionnement local
- [ ] **Page "L'Équipe":** Benito (chef), Malina (aide cuisine), Donny (chanteur), Samson (chasseur)
- [ ] **Page "Contact":** Formulaire de contact (ou simple info RP)
- [ ] Optimiser toutes les pages pour le SEO (meta tags, alt text)
- [ ] Test responsive complet sur tous les breakpoints
- [ ] Lighthouse score : viser 100/100 sur toutes les métriques

#### In Progress

#### Done

---

## 🔌 PHASE 3 : Backend API & Base de Données
**Durée : Semaines 5-6**

### 🗄️ Modèles de Données

#### To Do
- [ ] Modèle **Supplier** (name, type, contact, products[], createdAt)
- [ ] Modèle **Ingredient** (name, unit, stockQuantity, minStock, pricePerUnit, supplierId)
- [ ] Modèle **Recipe** (name, category, ingredients[{ingredientId, quantity}], cost, price, margin, image)
- [ ] Modèle **Order** (supplierId, items[], totalAmount, status, orderDate)
- [ ] Modèle **Sale** (recipeId, quantity, totalPrice, date, location)
- [ ] Ajouter les relations (populate) entre les modèles

#### In Progress

#### Done

---

### 🔧 API - Fournisseurs (Suppliers)

#### To Do
- [ ] Route GET /api/suppliers (liste tous les fournisseurs)
- [ ] Route GET /api/suppliers/:id (détail d'un fournisseur)
- [ ] Route POST /api/suppliers (créer un fournisseur) - Protected
- [ ] Route PUT /api/suppliers/:id (modifier) - Protected
- [ ] Route DELETE /api/suppliers/:id (supprimer) - Protected
- [ ] Validation des données avec express-validator
- [ ] Tests complets dans Postman
- [ ] Gestion des erreurs appropriées

#### In Progress

#### Done

---

### 🥑 API - Ingrédients (Ingredients)

#### To Do
- [ ] Route GET /api/ingredients (liste + filtres)
- [ ] Route GET /api/ingredients/:id (détail)
- [ ] Route POST /api/ingredients (créer) - Protected
- [ ] Route PUT /api/ingredients/:id (modifier stock, prix) - Protected
- [ ] Route DELETE /api/ingredients/:id - Protected
- [ ] Route GET /api/ingredients/low-stock (alerte stock minimum)
- [ ] Logique automatique de calcul du stock après ventes
- [ ] Tests Postman complets

#### In Progress

#### Done

---

### 🍽️ API - Recettes (Recipes)

#### To Do
- [ ] Route GET /api/recipes (toutes les recettes)
- [ ] Route GET /api/recipes/:id (détail avec ingrédients populate)
- [ ] Route POST /api/recipes (créer) - Protected
- [ ] Route PUT /api/recipes/:id (modifier) - Protected
- [ ] Route DELETE /api/recipes/:id - Protected
- [ ] **Logique métier:** Calcul automatique du coût (somme des ingrédients)
- [ ] **Logique métier:** Calcul de la marge (price - cost)
- [ ] Route PATCH /api/recipes/:id/toggle-featured (plat de la semaine)
- [ ] Tests Postman avec calculs vérifiés

#### In Progress

#### Done

---

### 📦 API - Commandes Fournisseurs (Orders)

#### To Do
- [ ] Route GET /api/orders (historique des commandes)
- [ ] Route GET /api/orders/:id (détail commande)
- [ ] Route POST /api/orders (créer une commande) - Protected
- [ ] Route PATCH /api/orders/:id/status (changer status: pending, received, cancelled)
- [ ] **Logique:** Mise à jour automatique du stock après réception
- [ ] Calcul du montant total de la commande
- [ ] Tests Postman

#### In Progress

#### Done

---

### 💰 API - Ventes (Sales)

#### To Do
- [ ] Route GET /api/sales (historique + filtres par date/location)
- [ ] Route POST /api/sales (enregistrer une vente) - Protected
- [ ] **Logique:** Déduction automatique du stock des ingrédients utilisés
- [ ] Route GET /api/sales/stats (CA total, ventes par recette, par période)
- [ ] Route GET /api/sales/popular (recettes les plus vendues)
- [ ] Tests Postman avec vérification du stock

#### In Progress

#### Done

---

### 📊 API - Statistiques & Rapports

#### To Do
- [ ] Route GET /api/stats/dashboard (KPIs : CA du mois, stock bas, top ventes)
- [ ] Route GET /api/stats/revenue (évolution CA par jour/semaine/mois)
- [ ] Route GET /api/stats/recipes/profitability (recettes les plus rentables)
- [ ] Route GET /api/stats/ingredients/usage (ingrédients les plus utilisés)
- [ ] Aggregation MongoDB pour les calculs complexes
- [ ] Tests Postman

#### In Progress

#### Done

---

## 🎛️ PHASE 4 : Dashboard Admin
**Durée : Semaines 7-9**

### 🏗️ Layout & Navigation

#### To Do
- [ ] Créer le layout admin avec Sidebar + TopBar
- [ ] Menu de navigation (Dashboard, Fournisseurs, Ingrédients, Recettes, Commandes, Ventes, Utilisateurs)
- [ ] Design responsive du dashboard (collapse sidebar sur mobile)
- [ ] Breadcrumbs de navigation
- [ ] Thème cohérent avec le site public (Western/Mexicain)
- [ ] Bouton de déconnexion
- [ ] Affichage du rôle utilisateur (Chef / Employé)

#### In Progress

#### Done

---

### 📈 Page Dashboard (Accueil Admin)

#### To Do
- [ ] Widgets de statistiques (Cards) : CA du mois, Nb ventes, Stock bas, Recettes actives
- [ ] Graphique d'évolution du CA (Line chart avec Recharts)
- [ ] Top 5 des recettes les plus vendues (Bar chart)
- [ ] Liste des alertes de stock bas
- [ ] Dernières ventes (tableau)
- [ ] Connexion à l'API /api/stats/dashboard
- [ ] Loader/skeleton pendant le chargement des données

#### In Progress

#### Done

---

### 🏪 Gestion des Fournisseurs

#### To Do
- [ ] Page liste des fournisseurs (tableau avec recherche/filtres)
- [ ] Bouton "Ajouter un fournisseur" (modal ou page dédiée)
- [ ] Formulaire de création avec validation
- [ ] Formulaire d'édition
- [ ] Bouton de suppression avec confirmation
- [ ] Page détail fournisseur avec historique des commandes
- [ ] Connexion à l'API suppliers
- [ ] Gestion des états de chargement et erreurs
- [ ] Toast notifications (succès/erreur)

#### In Progress

#### Done

---

### 🥕 Gestion des Ingrédients (Inventaire)

#### To Do
- [ ] Page inventaire avec tableau des ingrédients
- [ ] Filtres : par fournisseur, stock bas, catégorie
- [ ] Indicateurs visuels : stock OK (vert), stock bas (orange), rupture (rouge)
- [ ] Formulaire d'ajout d'ingrédient
- [ ] Formulaire d'édition (modifier prix, quantité, seuil min)
- [ ] Interface de réapprovisionnement rapide
- [ ] Connexion à l'API ingredients
- [ ] Alertes automatiques pour stock < minStock
- [ ] Export CSV de l'inventaire (bonus)

#### In Progress

#### Done

---

### 🍴 Gestion des Recettes

#### To Do
- [ ] Page catalogue de recettes (cards avec image, nom, prix, marge)
- [ ] Filtres : par catégorie (Carte fixe / Évolutive / Boissons)
- [ ] Bouton "Créer une recette"
- [ ] **Recipe Builder:** Formulaire multi-étapes
  - Étape 1 : Informations de base (nom, catégorie, description, image)
  - Étape 2 : Sélection des ingrédients avec quantités (dropdown + input)
  - Étape 3 : Calcul automatique du coût (lecture seule)
  - Étape 4 : Définir le prix de vente
  - Étape 5 : Affichage de la marge calculée + validation
- [ ] Calcul en temps réel du coût total pendant la création
- [ ] Page détail recette (ingrédients, coût, prix, marge, historique ventes)
- [ ] Formulaire d'édition de recette
- [ ] Toggle "Plat de la semaine" (featured)
- [ ] Connexion à l'API recipes
- [ ] Gestion des images (upload ou URL)

#### In Progress

#### Done

---

### 📦 Gestion des Commandes Fournisseurs

#### To Do
- [ ] Page liste des commandes (tableau avec statut, fournisseur, date, montant)
- [ ] Filtres : par statut (En attente / Reçue / Annulée), par fournisseur, par date
- [ ] Formulaire de création de commande
  - Sélection du fournisseur
  - Sélection des ingrédients avec quantités
  - Calcul automatique du montant total
- [ ] Page détail commande
- [ ] Changer le statut d'une commande (dropdown)
- [ ] **Logique:** Mise à jour automatique du stock quand statut = "Reçue"
- [ ] Connexion à l'API orders
- [ ] Historique des commandes par fournisseur

#### In Progress

#### Done

---

### 💸 Gestion des Ventes

#### To Do
- [ ] Page historique des ventes (tableau : recette, quantité, montant, date, lieu)
- [ ] Filtres : par date (aujourd'hui, cette semaine, ce mois), par recette, par location
- [ ] Formulaire d'enregistrement d'une vente
  - Sélection de la recette
  - Quantité vendue
  - Lieu (Saloon / Mobile)
- [ ] **Logique:** Déduction automatique du stock des ingrédients
- [ ] Affichage du total des ventes de la période sélectionnée
- [ ] Connexion à l'API sales
- [ ] Graphiques de ventes (évolution dans le temps)

#### In Progress

#### Done

---

### 📊 Comptabilité & Rapports

#### To Do
- [ ] Page "Tableau de bord financier"
- [ ] Graphique d'évolution du CA (par jour/semaine/mois)
- [ ] Tableau des recettes avec leur rentabilité (prix, coût, marge, % marge)
- [ ] Top recettes les plus rentables
- [ ] Analyse des coûts par catégorie d'ingrédients
- [ ] Comparaison CA Saloon vs Mobile
- [ ] Export PDF des rapports (bonus avec jsPDF)
- [ ] Connexion à l'API stats
- [ ] Filtres de période personnalisés (date picker)

#### In Progress

#### Done

---

### 👥 Gestion des Utilisateurs (Admin only)

#### To Do
- [ ] Page liste des utilisateurs (tableau : username, rôle, date création)
- [ ] Vérification du rôle : seul le Chef (admin) peut accéder
- [ ] Formulaire de création d'utilisateur
- [ ] Modification du rôle d'un utilisateur (Chef / Employé)
- [ ] Suppression d'un utilisateur (avec confirmation)
- [ ] Middleware frontend : cacher les sections selon le rôle
- [ ] Middleware backend : protéger les routes sensibles
- [ ] Tests des permissions (Employé ne doit pas accéder à la gestion users)

#### In Progress

#### Done

---

### 🔒 Système de Permissions

#### To Do
- [ ] Définir les permissions par rôle :
  - **Chef (admin):** Accès total
  - **Employé:** Lecture seule sur fournisseurs/recettes, peut enregistrer ventes
- [ ] Implémenter HOC `withRole(['chef'])` pour protéger les composants
- [ ] Masquer les boutons selon les permissions (ex: "Supprimer" uniquement pour Chef)
- [ ] Backend : Middleware `authorizeRoles('chef')` sur les routes sensibles
- [ ] Tests de permissions (essayer d'accéder avec un compte Employé)

#### In Progress

#### Done

---

## ✨ PHASE 5 : Polish & Déploiement
**Durée : Semaine 10**

### 🧹 Refactoring & Optimisation

#### To Do
- [ ] Refactoriser le code (éliminer les duplications)
- [ ] Optimiser les requêtes API (pagination, lazy loading)
- [ ] Optimiser les images (compression, formats modernes webp)
- [ ] Code splitting React (React.lazy + Suspense)
- [ ] Améliorer les performances (React DevTools Profiler)
- [ ] Nettoyer les console.log et commentaires inutiles
- [ ] Vérifier les dépendances inutilisées

#### In Progress

#### Done

---

### 🧪 Tests & Qualité

#### To Do
- [ ] Tests E2E complets : parcours utilisateur du site public au dashboard
- [ ] Tester tous les CRUD (Create, Read, Update, Delete)
- [ ] Tester les calculs automatiques (coût, marge, stock)
- [ ] Tester les permissions (Chef vs Employé)
- [ ] Tester la responsivité sur tous les breakpoints
- [ ] Fixer tous les bugs identifiés
- [ ] Tests de charge basiques (Postman avec collections)

#### In Progress

#### Done

---

### ♿ Accessibilité & SEO

#### To Do
- [ ] Audit Lighthouse (viser 100 sur Performance, Accessibility, Best Practices, SEO)
- [ ] Ajouter les attributs ARIA nécessaires
- [ ] Vérifier la navigation au clavier (Tab, Enter, Esc)
- [ ] Optimiser les balises meta (title, description, OG tags)
- [ ] Ajouter un sitemap.xml
- [ ] Tester avec un screen reader (NVDA ou VoiceOver)
- [ ] Contraste des couleurs (WCAG AA minimum)

#### In Progress

#### Done

---

### 📝 Documentation

#### To Do
- [ ] README.md complet :
  - Description du projet
  - Screenshots/GIFs de l'application
  - Stack technique détaillée
  - Installation (frontend + backend)
  - Variables d'environnement requises
  - Scripts disponibles
  - Structure du projet
  - Fonctionnalités principales
- [ ] Documentation de l'API (Swagger ou fichier Postman exporté)
- [ ] Guide d'utilisation pour les rôles Chef/Employé
- [ ] Commentaires JSDoc dans le code complexe

#### In Progress

#### Done

---

### 🚀 Déploiement

#### To Do
- [ ] **Frontend:** Déployer sur Vercel ou Netlify
  - Configurer les variables d'environnement (API URL)
  - Tester en production
- [ ] **Backend:** Déployer sur Render, Railway ou Heroku
  - Configurer les variables d'environnement (DB, JWT secret)
  - Tester les endpoints en prod
- [ ] **Database:** MongoDB Atlas (cluster gratuit)
  - Configurer les IP autorisées
  - Backup initial
- [ ] Configurer le CORS en production
- [ ] Tester le flow complet en production
- [ ] Créer un compte de démo (Chef + Employé) avec données fictives

#### In Progress

#### Done

---

### 🎁 Présentation Portfolio

#### To Do
- [ ] Créer une section dédiée dans le portfolio
- [ ] Screenshots professionnels de l'application
- [ ] Vidéo de démonstration (30-60 secondes)
- [ ] Rédiger un case study :
  - Problématique
  - Solutions techniques apportées
  - Challenges rencontrés
  - Technologies utilisées
  - Résultats obtenus
- [ ] Liens vers GitHub + Live demo
- [ ] Mettre à jour le CV avec ce projet

#### In Progress

#### Done

---

## 🎯 BONUS - Fonctionnalités Avancées
**Si temps disponible**

### 🌙 Mode Sombre

#### To Do
- [ ] Implémenter un toggle dark mode (Context API ou Redux)
- [ ] Créer des variables SCSS pour les thèmes (light/dark)
- [ ] Adapter tous les composants au mode sombre
- [ ] Sauvegarder la préférence dans localStorage
- [ ] Transitions fluides entre les thèmes

#### In Progress

#### Done

---

### 🔔 Notifications en Temps Réel

#### To Do
- [ ] Setup Socket.io (backend + frontend)
- [ ] Notification automatique quand stock < minStock
- [ ] Notification lors d'une nouvelle commande
- [ ] Badge de notification dans le menu
- [ ] Centre de notifications dans le dashboard

#### In Progress

#### Done

---

### 📄 Export PDF

#### To Do
- [ ] Installer jsPDF ou react-pdf
- [ ] Export des rapports de comptabilité en PDF
- [ ] Export de la liste d'inventaire
- [ ] Design professionnel du PDF avec logo

#### In Progress

#### Done

---

### 🌍 Multi-langue

#### To Do
- [ ] Setup i18next
- [ ] Traductions : Français (par défaut), Espagnol, Anglais
- [ ] Sélecteur de langue dans le header
- [ ] Traductions du dashboard admin

#### In Progress

#### Done

---

### 📱 Progressive Web App (PWA)

#### To Do
- [ ] Configurer Vite PWA plugin
- [ ] Créer un manifest.json
- [ ] Ajouter un Service Worker
- [ ] Test d'installation sur mobile
- [ ] Mode offline basique

#### In Progress

#### Done

---

## 📚 Ressources & Liens

### Documentation
- [React Documentation](https://react.dev/)
- [Vite Guide](https://vitejs.dev/guide/)
- [Express.js](https://expressjs.com/)
- [MongoDB Docs](https://www.mongodb.com/docs/)
- [Mongoose](https://mongoosejs.com/)
- [Redux Toolkit](https://redux-toolkit.js.org/)

### Design
- [Figma](https://www.figma.com/)
- [Coolors](https://coolors.co/) - Palettes de couleurs
- [Unsplash](https://unsplash.com/) - Images gratuites

### Outils
- [Postman](https://www.postman.com/)
- [MongoDB Compass](https://www.mongodb.com/products/compass)

---

## 📌 Notes & Idées

### Idées de Fonctionnalités
- [ ] Calendrier pour planifier les tournées en charette
- [ ] Module de gestion des employés (planning, absences)
- [ ] Système de fidélité client (bonus RP)
- [ ] QR Code menu pour la charette mobile

### Challenges Techniques à Anticiper
- Calcul automatique des stocks après ventes multiples
- Gestion des relations entre collections MongoDB
- Optimisation des requêtes avec populate
- Sécurité JWT et refresh tokens
- Upload d'images (Cloudinary ou local)

### Améliorations UX
- Toasts de confirmation pour chaque action
- Loaders élégants (skeletons)
- Messages d'erreur clairs et utiles
- Undo pour les suppressions importantes

---

## 🏆 Objectifs de Qualité

- ✅ **Lighthouse Score:** 100/100 sur toutes les métriques
- ✅ **Code Quality:** ESLint + Prettier configurés
- ✅ **Responsive:** Fonctionne parfaitement sur tous les breakpoints
- ✅ **Accessibilité:** WCAG AA minimum
- ✅ **Performance:** Temps de chargement < 3s
- ✅ **Security:** Pas de vulnérabilités (npm audit)

---

## 📅 Suivi Hebdomadaire

### Semaine 1
**Objectif:** Setup complet du projet  
**Réalisé:**  
**Blocages:**  
**Prochaine étape:**

### Semaine 2
**Objectif:** Authentification fonctionnelle  
**Réalisé:**  
**Blocages:**  
**Prochaine étape:**

### Semaine 3
**Objectif:** Landing page complète  
**Réalisé:**  
**Blocages:**  
**Prochaine étape:**

*(Répéter pour les 10 semaines)*

---

## 🎨 Charte Graphique (à définir)

### Couleurs Principales
- **Primary:** `#[TBD]` (couleur chaude mexicaine)
- **Secondary:** `#[TBD]` (couleur complémentaire)
- **Accent:** `#[TBD]` (pour les CTA)
- **Background:** `#[TBD]`
- **Text:** `#[TBD]`

### Typographies
- **Headings:** [Police à définir - style Western/rustique]
- **Body:** [Police lisible et moderne]

### Éléments Visuels
- Style parchemin/vieux papier pour certains éléments
- Motifs mexicains (cactus, piments, sombreros)
- Ambiance chaleureuse et conviviale

---

## 🎯 KPIs du Projet

### Objectifs Portfolio
- [x] Projet full-stack MERN complet
- [ ] Plus de 3000 lignes de code
- [ ] Interface professionnelle et polish
- [ ] Fonctionnalités métier complexes
- [ ] Documentation complète

### Apprentissages Visés
- [x] Maîtrise de MongoDB et Mongoose
- [x] Architecture REST API complète
- [x] Gestion avancée d'état avec Redux Toolkit
- [x] Logique métier complexe (calculs, stocks)
- [x] Déploiement full-stack

---

**🌮 Bon courage pour ce beau projet, Lewis ! Let's make "Chez Benito" shine! 🤠**
