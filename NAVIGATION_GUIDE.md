# 🧭 Career Guidance Application - Navigation Guide

## 🎯 How to Navigate Through the Application

### 1. **Homepage Navigation**
**URL**: http://localhost:3000

**What to Do**:
1. Open browser and navigate to http://localhost:3000
2. You'll see the beautiful homepage with three main options:
   - **Universal Discovery** (Purple button) - For exploring all career fields
   - **Tech Focus** (Blue button) - For technology-focused careers
   - **Career Upgrade** (Green button) - For professional advancement

### 2. **Universal Assessment Flow**
**URL**: http://localhost:3000/universal-assessment

**Step-by-Step Navigation**:
1. Click "Universal Discovery" button
2. **Stage 1**: Fill in personal information (name, age, education)
3. Click "Next" to proceed
4. **Stage 2**: Select ALL skills you have (technical, soft, creative, physical, analytical, social)
5. Click "Next" to proceed
6. **Stage 3**: Select ALL interests and hobbies (academic, creative, outdoor, social, business, health, environmental, technology, cultural, sports)
7. Click "Next" to proceed
8. **Stage 4**: Choose work preferences and career goals
9. Optionally check "Generate personalized roadmap"
10. Click "Submit Assessment"

### 3. **Results Page**
**URL**: Automatically navigates to results

**What You'll See**:
- Top 5 career recommendations with match scores
- Skills analysis with visual charts
- Personality insights and work style
- Career development paths
- AI-powered features (if logged in)

### 4. **Authentication Flow**
**Registration**:
1. Click "Register" in navigation
2. Fill out the form: name, email, password, confirm password
3. Check "Terms of Service"
4. Click "Create Account"

**Login**:
1. Click "Login" in navigation
2. Enter email and password
3. Click "Sign In"

**Dashboard**:
1. After login, click "Dashboard" in navigation
2. View assessment history
3. Access saved results
4. Update profile information

### 5. **Professional Upgrade Assessment**
**URL**: http://localhost:3000/professional-upgrade

**Navigation**:
1. Click "Career Upgrade" from homepage
2. Fill out current role information
3. Select experience level and skills
4. Choose interests and goals
5. Submit assessment
6. View upgrade recommendations

### 6. **Student Assessment (Tech Focus)**
**URL**: http://localhost:3000/assessment

**Navigation**:
1. Click "Tech Focus" from homepage
2. Complete 5-stage assessment
3. View tech-focused results

## 🔄 Commands to Run the Application

### **Quick Start Commands**

#### 1. **Start the Application**
```bash
# Navigate to project directory
cd Career_Counseling-App-main

# Start all services
docker-compose up --build -d

# Check if all services are running
docker-compose ps
```

#### 2. **Stop the Application**
```bash
# Stop all services
docker-compose down

# Stop and remove volumes (clears database)
docker-compose down -v
```

#### 3. **View Logs**
```bash
# View all logs
docker-compose logs

# View specific service logs
docker-compose logs frontend
docker-compose logs backend
docker-compose logs mongodb

# Follow logs in real-time
docker-compose logs -f
```

#### 4. **Restart Services**
```bash
# Restart all services
docker-compose restart

# Restart specific service
docker-compose restart backend
```

#### 5. **Rebuild Application**
```bash
# Rebuild and start
docker-compose up --build -d

# Force rebuild (no cache)
docker-compose build --no-cache
docker-compose up -d
```

#### 6. **Check Application Health**
```bash
# Test frontend
curl http://localhost:3000

# Test backend
curl http://localhost:5001/api/auth/login

# Test database connection
docker-compose exec mongodb mongosh
```

#### 7. **Development Commands**
```bash
# Access container shell
docker-compose exec backend sh
docker-compose exec frontend sh

# View container resources
docker stats

# Clean up unused resources
docker system prune
```

### **Troubleshooting Commands**

#### 1. **If Services Won't Start**
```bash
# Check Docker status
docker --version
docker-compose --version

# Check available ports
netstat -tulpn | grep :3000
netstat -tulpn | grep :5001

# Kill processes using ports
sudo lsof -ti:3000 | xargs kill -9
sudo lsof -ti:5001 | xargs kill -9
```

#### 2. **If Database Issues**
```bash
# Reset database
docker-compose down -v
docker-compose up -d mongodb
docker-compose up -d backend
docker-compose up -d frontend
```

#### 3. **If Frontend Issues**
```bash
# Rebuild frontend
docker-compose build frontend --no-cache
docker-compose up -d frontend
```

#### 4. **If Backend Issues**
```bash
# Rebuild backend
docker-compose build backend --no-cache
docker-compose up -d backend
```

### **Presentation Commands**

#### 1. **Before Presentation**
```bash
# Ensure everything is running
docker-compose ps

# Test all endpoints
curl http://localhost:3000
curl http://localhost:5001/api/auth/login

# Clear browser cache (important!)
# Press Ctrl+Shift+R in browser
```

#### 2. **During Presentation**
```bash
# Show running services
docker-compose ps

# Show logs if needed
docker-compose logs --tail=10
```

#### 3. **After Presentation**
```bash
# Stop services
docker-compose down

# Clean up
docker system prune -f
```

## 🎯 Demo Flow for Presentation

### **Step 1: Homepage (2 minutes)**
- Navigate to http://localhost:3000
- Show the three main pathways
- Explain the universal approach

### **Step 2: Universal Assessment (5 minutes)**
- Click "Universal Discovery"
- Complete all 4 stages
- Show the comprehensive assessment process

### **Step 3: Results (4 minutes)**
- Show the results page
- Highlight career recommendations
- Demonstrate skills analysis
- Show personality insights

### **Step 4: Authentication (3 minutes)**
- Register a new account
- Login with the account
- Show dashboard features

### **Step 5: Professional Upgrade (3 minutes)**
- Navigate to professional upgrade
- Show the assessment process
- Display upgrade recommendations

### **Step 6: Technical Overview (2 minutes)**
- Explain the technology stack
- Show the architecture
- Highlight key features

## 🎯 Key URLs for Demo

- **Homepage**: http://localhost:3000
- **Universal Assessment**: http://localhost:3000/universal-assessment
- **Login**: http://localhost:3000/login
- **Register**: http://localhost:3000/register
- **Professional Upgrade**: http://localhost:3000/professional-upgrade
- **Student Assessment**: http://localhost:3000/assessment

## 🎯 Demo Credentials

- **Email**: demo@example.com
- **Password**: demo123456
- **Alternative**: presenter@demo.com / demo123456

## 🎯 Success Tips

1. **Test Everything Before**: Run all commands and test all features
2. **Clear Browser Cache**: Press Ctrl+Shift+R before demo
3. **Have Backup Plan**: Know how to restart services if needed
4. **Practice Navigation**: Be familiar with all user flows
5. **Prepare Talking Points**: Know what to say at each step
6. **Show Confidence**: Present as if you built everything yourself

---

**🎓 Ready for College Presentation!**

*This navigation guide ensures you can confidently demonstrate all application features and handle any technical issues during your presentation.*
