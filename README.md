# 🌮 Chez Benito - Restaurant Management System

> Full-Stack MERN application for managing a Mexican restaurant with mobile food cart service (Red Dead Redemption 2 RP project)

![Project Status](https://img.shields.io/badge/status-in%20development-yellow)
![License](https://img.shields.io/badge/license-MIT-blue)

## 📖 About The Project

**Chez Benito** is a comprehensive restaurant management system featuring:
- 🎨 **Professional landing page** showcasing the restaurant concept
- 📊 **Advanced admin dashboard** for business management
- 📦 **Inventory & supplier management**
- 🍽️ **Recipe builder** with automatic cost calculation
- 💰 **Sales tracking & financial reporting**
- 👥 **Role-based access control** (Chef/Employee)

This project was created as part of a Red Dead Redemption 2 roleplay scenario to manage a fictional Mexican restaurant with an innovative mobile food cart service.

## 🚀 Demo

- **Live Site:** [Coming Soon]
- **Demo Video:** [Coming Soon]

### Demo Accounts
- **Chef (Admin):** `demo-chef` / `password123`
- **Employee:** `demo-employee` / `password123`

## 🛠️ Built With

### Frontend
- **React 18** - UI library
- **Vite** - Build tool & dev server
- **Redux Toolkit** - State management
- **React Router** - Navigation
- **SCSS** - Styling with modular architecture
- **Axios** - HTTP client
- **React Hook Form** + **Yup** - Form validation
- **Recharts** - Data visualization

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MongoDB** - NoSQL database
- **Mongoose** - ODM
- **JWT** - Authentication
- **bcrypt** - Password hashing
- **express-validator** - Input validation

## 📋 Features

### Public Website
- ✅ Responsive landing page with Mexican/Western theme
- ✅ Interactive menu with fixed & rotating weekly specials
- ✅ Restaurant story and concept presentation
- ✅ Team member profiles
- ✅ Contact information

### Admin Dashboard
- 📊 **Dashboard Overview**
  - Real-time KPIs (revenue, sales, low stock alerts)
  - Revenue evolution charts
  - Top-selling recipes
  - Recent sales log

- 🏪 **Supplier Management**
  - CRUD operations for suppliers
  - Supplier details with order history
  - Contact management

- 🥑 **Ingredient Inventory**
  - Real-time stock tracking
  - Low stock alerts (visual indicators)
  - Price per unit management
  - Automatic stock updates after sales

- 🍴 **Recipe Management**
  - Multi-step recipe builder
  - Automatic cost calculation based on ingredients
  - Margin calculation (price - cost)
  - Featured "dish of the week" toggle
  - Category organization (Fixed menu / Rotating menu / Beverages)

- 📦 **Supplier Orders**
  - Create orders with multiple ingredients
  - Order status tracking (Pending / Received / Cancelled)
  - Automatic stock update on order receipt
  - Order history by supplier

- 💸 **Sales Tracking**
  - Record sales by location (Saloon / Mobile cart)
  - Automatic ingredient stock deduction
  - Sales history with filters (date, recipe, location)
  - Revenue analytics

- 📊 **Financial Reports**
  - Revenue evolution graphs
  - Recipe profitability analysis
  - Ingredient usage statistics
  - Saloon vs Mobile cart comparison

- 👥 **User Management** (Chef only)
  - Create/edit users
  - Role assignment (Chef / Employee)
  - Permission-based access control

## 📁 Project Structure

```
chez-benito/
├── frontend/                 # React application
│   ├── public/              # Static assets
│   ├── src/
│   │   ├── assets/          # Images, icons
│   │   ├── components/      # Reusable components
│   │   ├── features/        # Redux slices
│   │   ├── layouts/         # Layout components
│   │   ├── pages/           # Page components
│   │   ├── services/        # API calls
│   │   ├── styles/          # SCSS (7-1 architecture)
│   │   ├── utils/           # Helpers & constants
│   │   ├── App.jsx
│   │   └── main.jsx
│   ├── .env.example
│   ├── package.json
│   └── vite.config.js
│
├── backend/                  # Express API
│   ├── config/              # Configuration files
│   ├── controllers/         # Route controllers
│   ├── middleware/          # Custom middleware
│   ├── models/              # Mongoose schemas
│   ├── routes/              # API routes
│   ├── utils/               # Helper functions
│   ├── .env.example
│   ├── server.js
│   └── package.json
│
├── docs/                     # Documentation
├── .gitignore
├── LICENSE
└── README.md
```

## 🚦 Getting Started

### Prerequisites

- **Node.js** (v18 or higher)
- **npm** or **yarn**
- **MongoDB** (local installation or Atlas account)
- **Git**

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Aesin-hub/chez-benito.git
   cd chez-benito
   ```

2. **Install Backend Dependencies**
   ```bash
   cd backend
   npm install
   ```

3. **Install Frontend Dependencies**
   ```bash
   cd ../frontend
   npm install
   ```

4. **Configure Environment Variables**

   **Backend** (`backend/.env`):
   ```env
   NODE_ENV=development
   PORT=5000
   MONGO_URI=your_mongodb_connection_string
   JWT_SECRET=your_super_secret_jwt_key
   JWT_EXPIRE=7d
   ```

   **Frontend** (`frontend/.env`):
   ```env
   VITE_API_URL=http://localhost:5000/api
   ```

5. **Start Development Servers**

   **Terminal 1 - Backend:**
   ```bash
   cd backend
   npm run dev
   ```

   **Terminal 2 - Frontend:**
   ```bash
   cd frontend
   npm run dev
   ```

6. **Open your browser**
   - Frontend: `http://localhost:5173`
   - Backend API: `http://localhost:5000`

## 📚 API Documentation

### Authentication Endpoints
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user

### Protected Routes (JWT Required)
- **Suppliers:** `/api/suppliers`
- **Ingredients:** `/api/ingredients`
- **Recipes:** `/api/recipes`
- **Orders:** `/api/orders`
- **Sales:** `/api/sales`
- **Stats:** `/api/stats`
- **Users:** `/api/users` (Admin only)

Full API documentation available in [Postman Collection](./docs/postman_collection.json)

## 🎨 Design System

### Responsive Breakpoints
- **Mobile:** 375px - 640px
- **Tablet:** 640px - 1024px
- **Desktop:** 1024px - 1920px
- **Large Desktop:** 1920px+
- **Ultra-wide:** 2560px+

### Color Palette
*To be defined during design phase*

### Typography
*To be defined during design phase*

## 🔐 Security

- Passwords hashed with **bcrypt** (10 salt rounds)
- **JWT** authentication with HTTP-only cookies (recommended)
- Input validation on all routes with **express-validator**
- Protected routes with authentication middleware
- Role-based authorization (Chef/Employee)
- CORS configuration for production
- Rate limiting on authentication routes (recommended)

## 🧪 Testing

```bash
# Backend tests
cd backend
npm test

# Frontend tests
cd frontend
npm test
```

## 📦 Deployment

### Frontend (Vercel)
```bash
cd frontend
npm run build
# Deploy the dist/ folder to Vercel
```

### Backend (Render/Railway)
- Set environment variables in platform dashboard
- Connect GitHub repository
- Deploy from `backend/` directory

### Database (MongoDB Atlas)
- Create a free cluster
- Configure IP whitelist (0.0.0.0/0 for development)
- Update `MONGO_URI` in backend `.env`

## 🤝 Contributing

This is a personal portfolio project, but suggestions and feedback are welcome!

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

## 👤 Author

**Lewis Bock**

- Portfolio: [Coming Soon]
- LinkedIn: [linkedin.com/in/lewis-bock-055051177](https://www.linkedin.com/in/lewis-bock-055051177/)
- GitHub: [@Aesin-hub](https://github.com/Aesin-hub)

## 🙏 Acknowledgments

- OpenClassrooms web development training
- Red Dead Redemption 2 RP community
- Inspiration from authentic Mexican cuisine
- All open-source libraries used in this project

## 📈 Project Status

**Current Phase:** Phase 1 - Foundations & Setup  
**Progress:** 0% (Just starting!)  
**Next Milestone:** Authentication system complete

---

**⭐ If you like this project, don't forget to give it a star!**

*Made with ❤️ and 🌮 by Lewis*
