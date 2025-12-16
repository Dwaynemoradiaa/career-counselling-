# Career Counseling App

A modern, comprehensive career counseling platform designed for college students. Users can explore career options, take assessments, and get personalized recommendations without requiring immediate signup.

## Features

### 🎯 **Core Features**
- **No Forced Signup**: Users can explore and take assessments without registering
- **Multi-Stage Assessment**: Comprehensive career assessment with skills verification
- **AI-Powered Recommendations**: Personalized career suggestions based on assessment results
- **Modern UI**: Sleek, responsive design with Tailwind CSS
- **Skills Verification**: Interactive tests to verify user skills
- **Career Paths**: Detailed career progression recommendations

### 🏗️ **Technical Stack**
- **Frontend**: React.js with Tailwind CSS
- **Backend**: Node.js with Express.js
- **Database**: MongoDB
- **Containerization**: Docker with Docker Compose
- **Authentication**: JWT-based authentication

## Quick Start with Docker

### Prerequisites
- Docker
- Docker Compose

### 1. Clone the Repository
```bash
git clone <repository-url>
cd Career_Counseling-App-main
```

### 2. Start the Application
```bash
# Build and start all services
docker-compose up --build

# Or run in detached mode
docker-compose up -d --build
```

### 3. Access the Application
- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5001
- **MongoDB**: localhost:27017

### 4. Stop the Application
```bash
docker-compose down
```

## Development Setup

### Backend Development
```bash
cd backend
npm install
npm run dev
```

### Frontend Development
```bash
cd frontend
npm install
npm start
```

## API Endpoints

### Public Endpoints
- `POST /api/assessment/submit` - Submit career assessment
- `POST /api/auth/login` - User login
- `POST /api/auth/register` - User registration

### Protected Endpoints
- `GET /api/user/dashboard` - Get user dashboard data
- `GET /api/assessment/history` - Get assessment history
- `POST /api/assessment/save-to-account` - Save anonymous assessment

## Assessment Flow

1. **Home Page**: Users can start assessment or sign in
2. **Assessment**: Multi-stage form covering:
   - Personal information
   - Technical and soft skills
   - Interests and preferences
   - Career goals
   - Skills verification test
3. **Results**: Detailed career recommendations with:
   - Match scores
   - Salary ranges
   - Growth potential
   - Required skills
   - Career paths

## Docker Services

### Frontend (React)
- **Port**: 3000
- **Image**: nginx:alpine
- **Features**: Static file serving, API proxy, gzip compression

### Backend (Node.js)
- **Port**: 5000
- **Image**: node:18-alpine
- **Features**: Express API, JWT authentication, MongoDB connection

### MongoDB
- **Port**: 27017
- **Image**: mongo:6.0
- **Features**: Persistent data storage, authentication

## Environment Variables

### Backend (.env)
```env
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb://admin:password123@mongodb:27017/career_counseling?authSource=admin
JWT_SECRET=your-super-secret-jwt-key-change-in-production
JWT_EXPIRE=30d
```

## Database Schema

### Users Collection
```javascript
{
  name: String,
  email: String,
  password: String,
  profile: {
    age: Number,
    education: String,
    interests: [String]
  },
  skills: [{
    name: String,
    level: String
  }],
  assessmentHistory: [{
    name: String,
    date: String,
    score: String
  }]
}
```

### Assessments Collection
```javascript
{
  userId: ObjectId,
  name: String,
  age: Number,
  education: String,
  technicalSkills: [String],
  softSkills: [String],
  interests: [String],
  recommendations: [{
    title: String,
    matchScore: Number,
    salaryRange: String
  }],
  isAnonymous: Boolean
}
```

## Career Database

The application includes a comprehensive career database with:
- **10+ Career Options**: Software Engineer, Data Scientist, UX/UI Designer, etc.
- **Match Scoring**: Algorithm-based career matching
- **Salary Information**: Current market salary ranges
- **Growth Potential**: Career advancement opportunities
- **Required Skills**: Skills needed for each career path

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support, email support@careercounseling.com or create an issue in the repository.