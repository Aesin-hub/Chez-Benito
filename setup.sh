#!/bin/bash

# ====================================
# Chez Benito - Project Setup Script
# ====================================

echo "🌮 Welcome to Chez Benito Setup!"
echo "=================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo -e "${RED}❌ Node.js is not installed!${NC}"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

echo -e "${GREEN}✅ Node.js detected: $(node --version)${NC}"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo -e "${RED}❌ npm is not installed!${NC}"
    exit 1
fi

echo -e "${GREEN}✅ npm detected: $(npm --version)${NC}"
echo ""

# Ask for MongoDB connection string
echo -e "${YELLOW}🗄️  MongoDB Configuration${NC}"
echo "Choose your MongoDB setup:"
echo "1) Local MongoDB (mongodb://localhost:27017/chez-benito)"
echo "2) MongoDB Atlas (I'll provide my connection string)"
read -p "Enter your choice (1 or 2): " mongo_choice

if [ "$mongo_choice" == "1" ]; then
    MONGO_URI="mongodb://localhost:27017/chez-benito"
    echo -e "${GREEN}✅ Using local MongoDB${NC}"
elif [ "$mongo_choice" == "2" ]; then
    read -p "Enter your MongoDB Atlas connection string: " MONGO_URI
    echo -e "${GREEN}✅ Using MongoDB Atlas${NC}"
else
    echo -e "${RED}❌ Invalid choice!${NC}"
    exit 1
fi

echo ""

# Generate JWT secret
echo -e "${YELLOW}🔐 Generating JWT secret...${NC}"
JWT_SECRET=$(openssl rand -base64 32)
echo -e "${GREEN}✅ JWT secret generated${NC}"
echo ""

# Setup Backend
echo -e "${YELLOW}📦 Setting up Backend...${NC}"
cd backend

if [ ! -d "node_modules" ]; then
    echo "Installing backend dependencies..."
    npm install
    echo -e "${GREEN}✅ Backend dependencies installed${NC}"
else
    echo -e "${GREEN}✅ Backend dependencies already installed${NC}"
fi

# Create backend .env file
echo "Creating backend .env file..."
cat > .env << EOF
NODE_ENV=development
PORT=5000
MONGO_URI=$MONGO_URI
JWT_SECRET=$JWT_SECRET
JWT_EXPIRE=7d
EOF

echo -e "${GREEN}✅ Backend .env created${NC}"
echo ""

# Setup Frontend
echo -e "${YELLOW}📦 Setting up Frontend...${NC}"
cd ../frontend

if [ ! -d "node_modules" ]; then
    echo "Installing frontend dependencies..."
    npm install
    echo -e "${GREEN}✅ Frontend dependencies installed${NC}"
else
    echo -e "${GREEN}✅ Frontend dependencies already installed${NC}"
fi

# Create frontend .env file
echo "Creating frontend .env file..."
cat > .env << EOF
VITE_API_URL=http://localhost:5000/api
EOF

echo -e "${GREEN}✅ Frontend .env created${NC}"
echo ""

cd ..

# Final instructions
echo -e "${GREEN}=================================="
echo "✅ Setup Complete!"
echo "==================================${NC}"
echo ""
echo "📝 Next steps:"
echo ""
echo "1. Start the backend (Terminal 1):"
echo -e "   ${YELLOW}cd backend${NC}"
echo -e "   ${YELLOW}npm run dev${NC}"
echo ""
echo "2. Start the frontend (Terminal 2):"
echo -e "   ${YELLOW}cd frontend${NC}"
echo -e "   ${YELLOW}npm run dev${NC}"
echo ""
echo "3. Open your browser:"
echo -e "   ${YELLOW}http://localhost:5173${NC}"
echo ""
echo "🌮 Happy coding!"
echo ""
