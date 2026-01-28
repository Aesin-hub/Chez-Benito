# 🚀 Quick Start Guide - Chez Benito

This guide will get you up and running with the Chez Benito project in under 10 minutes.

## ⚡ Prerequisites

Ensure you have installed:
- [Node.js](https://nodejs.org/) (v18 or higher)
- [MongoDB](https://www.mongodb.com/try/download/community) or [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) account
- [Git](https://git-scm.com/)
- Code editor (VS Code recommended)

## 📥 Installation Steps

### 1. Clone & Navigate
```bash
git clone https://github.com/Aesin-hub/chez-benito.git
cd chez-benito
```

### 2. Backend Setup
```bash
cd backend
npm install
```

Create `backend/.env`:
```env
NODE_ENV=development
PORT=5000
MONGO_URI=mongodb://localhost:27017/chez-benito
# OR for MongoDB Atlas:
# MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/chez-benito

JWT_SECRET=your_super_secret_key_change_this_in_production
JWT_EXPIRE=7d
```

Start the backend:
```bash
npm run dev
```

You should see: `✅ Server running on port 5000`

### 3. Frontend Setup (New Terminal)
```bash
cd frontend
npm install
```

Create `frontend/.env`:
```env
VITE_API_URL=http://localhost:5000/api
```

Start the frontend:
```bash
npm run dev
```

You should see: `✅ Local: http://localhost:5173/`

### 4. Open Browser
Navigate to `http://localhost:5173`

## 🎯 First Steps

### Create Admin Account
1. Navigate to the Register page
2. Create your first account (will be Chef role by default)
3. Login with your credentials
4. Access the admin dashboard

### Test the Features
- Add a supplier (e.g., "Leroy's Farm")
- Add ingredients (e.g., "Tomatoes", "Beef", "Corn")
- Create a recipe and watch the cost calculate automatically
- Record a sale and see inventory update

## 📁 Project Structure Overview

```
chez-benito/
├── frontend/           # React app (Vite)
│   ├── src/
│   │   ├── pages/     # Route components
│   │   ├── components/ # Reusable UI components
│   │   ├── features/  # Redux slices
│   │   └── styles/    # SCSS files
│   └── package.json
│
└── backend/           # Express API
    ├── models/        # Mongoose schemas
    ├── routes/        # API endpoints
    ├── controllers/   # Route logic
    ├── middleware/    # Auth, validation
    └── server.js
```

## 🔧 Development Workflow

### Running Both Servers
**Terminal 1 (Backend):**
```bash
cd backend
npm run dev
```

**Terminal 2 (Frontend):**
```bash
cd frontend
npm run dev
```

### Available Scripts

**Backend:**
```bash
npm run dev      # Start with nodemon (auto-reload)
npm start        # Production start
npm test         # Run tests
```

**Frontend:**
```bash
npm run dev      # Development server
npm run build    # Production build
npm run preview  # Preview production build
npm run lint     # Run ESLint
```

## 🛠️ Useful Tools

### Testing API Endpoints
Use [Postman](https://www.postman.com/) or [Thunder Client](https://www.thunderclient.com/) (VS Code extension)

Import the Postman collection from `/docs/postman_collection.json` (coming soon)

### Database Inspection
Use [MongoDB Compass](https://www.mongodb.com/products/compass) to visualize your data:
```
Connection string: mongodb://localhost:27017
Database: chez-benito
```

### VS Code Extensions (Recommended)
- **ES7+ React/Redux/React-Native snippets** - Code snippets
- **Prettier** - Code formatting
- **ESLint** - Linting
- **Thunder Client** - API testing
- **MongoDB for VS Code** - Database management
- **SCSS IntelliSense** - SCSS autocomplete

## 🐛 Troubleshooting

### Port Already in Use
```bash
# Kill process on port 5000 (backend)
lsof -ti:5000 | xargs kill -9

# Kill process on port 5173 (frontend)
lsof -ti:5173 | xargs kill -9
```

### MongoDB Connection Error
- Check if MongoDB is running: `mongod --version`
- Verify connection string in `.env`
- For Atlas: check IP whitelist and credentials

### Frontend Can't Reach API
- Verify backend is running on port 5000
- Check `VITE_API_URL` in `frontend/.env`
- Check browser console for CORS errors

### Module Not Found
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

## 📚 Next Steps

1. **Read the README:** Full project documentation
2. **Check Notion Board:** See the development roadmap
3. **Explore the Code:** Start with `frontend/src/App.jsx` and `backend/server.js`
4. **Join Development:** Pick a task from Phase 1 in Notion

## 🆘 Need Help?

- **Issues:** Open a GitHub issue
- **Questions:** Check [CONTRIBUTING.md](./CONTRIBUTING.md)
- **Contact:** LinkedIn or GitHub profile

---

Happy coding! 🌮 Let's build something amazing!
