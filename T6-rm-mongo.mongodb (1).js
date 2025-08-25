// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-rm-mongo.mongodb.js

// Student ID: 34091904
// Student Name: Nashmia Shakeel

// Comments for your marker:

// ===================================================================================
// DO NOT modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("nsha0095");

// (b)
// Create a new collection named teamCollection and insert all documents
// generated in 6(a) into MongoDB. Then list them.

// Drop collection
db.teamCollection.drop();

// Insert the JSON documents from Task 6(a)
db.teamCollection.insertMany([
  {
    "_id": 1,
    "carn_name": "RM Spring Series Clayton 2024",
    "carn_date": "22-Sep-2024",
    "team_name": "TrailBlazers",
    "team_leader": {
      "name": "Smith Alice",
      "phone": "0411111101",
      "email": "alice1@student.monash.edu"
    },
    "team_no_of_members": 3,
    "team_members": [
      {
        "competitor_name": "Smith Alice",
        "competitor_phone": "0411111101",
        "event_type": "5 Km Run",
        "entry_no": 1,
        "starttime": "09:30:00",
        "finishtime": "10:30:00",
        "elapsedtime": "01:00:00"
      },
      {
        "competitor_name": "Jones Bob",
        "competitor_phone": "0411111102",
        "event_type": "5 Km Run",
        "entry_no": 2,
        "starttime": "09:30:00",
        "finishtime": "10:40:00",
        "elapsedtime": "01:10:00"
      },
      {
        "competitor_name": "Yan Charlie",
        "competitor_phone": "0411111103",
        "event_type": "5 Km Run",
        "entry_no": 3,
        "starttime": "09:30:00",
        "finishtime": "10:20:00",
        "elapsedtime": "00:50:00"
      }
    ]
  },
  {
    "_id": 2,
    "carn_name": "RM Spring Series Clayton 2024",
    "carn_date": "22-Sep-2024",
    "team_name": "SpeedHunters",
    "team_leader": {
      "name": "Smith Alice",
      "phone": "0411111101",
      "email": "alice1@student.monash.edu"
    },
    "team_no_of_members": 3,
    "team_members": [
      {
        "competitor_name": "Smith Alice",
        "competitor_phone": "0411111101",
        "event_type": "10 Km Run",
        "entry_no": 1,
        "starttime": "08:30:00",
        "finishtime": "09:45:00",
        "elapsedtime": "01:15:00"
      },
      {
        "competitor_name": "Brown Daisy",
        "competitor_phone": "0411111104",
        "event_type": "10 Km Run",
        "entry_no": 2,
        "starttime": "08:30:00",
        "finishtime": "09:50:00",
        "elapsedtime": "01:20:00"
      },
      {
        "competitor_name": "Wang Ethan",
        "competitor_phone": "0411111105",
        "event_type": "10 Km Run",
        "entry_no": 3,
        "starttime": "08:30:00",
        "finishtime": "09:35:00",
        "elapsedtime": "01:05:00"
      }
    ]
  },
  {
    "_id": 3,
    "carn_name": "RM Spring Series Caulfield 2024",
    "carn_date": "05-Oct-2024",
    "team_name": "FlashRun",
    "team_leader": {
      "name": "Jones Bob",
      "phone": "0411111102",
      "email": "bob2@student.monash.edu"
    },
    "team_no_of_members": 2,
    "team_members": [
      {
        "competitor_name": "Jones Bob",
        "competitor_phone": "0411111102",
        "event_type": "5 Km Run",
        "entry_no": 1,
        "starttime": "09:00:00",
        "finishtime": "10:15:00",
        "elapsedtime": "01:15:00"
      },
      {
        "competitor_name": "Lee Fiona",
        "competitor_phone": "0411111106",
        "event_type": "5 Km Run",
        "entry_no": 2,
        "starttime": "09:00:00",
        "finishtime": "10:00:00",
        "elapsedtime": "01:00:00"
      }
    ]
  },
  {
    "_id": 4,
    "carn_name": "RM Spring Series Caulfield 2024",
    "carn_date": "05-Oct-2024",
    "team_name": "ThunderCrew",
    "team_leader": {
      "name": "Yan Charlie",
      "phone": "0411111103",
      "email": "charlie3@student.monash.edu"
    },
    "team_no_of_members": 1,
    "team_members": [
      {
        "competitor_name": "Yan Charlie",
        "competitor_phone": "0411111103",
        "event_type": "10 Km Run",
        "entry_no": 1,
        "starttime": "08:30:00",
        "finishtime": "10:00:00",
        "elapsedtime": "01:30:00"
      }
    ]
  },
  {
    "_id": 5,
    "carn_name": "RM Autumn Series Clayton 2025",
    "carn_date": "15-Mar-2025",
    "team_name": "TrailBlazers",
    "team_leader": {
      "name": "Lee Fiona",
      "phone": "0411111106",
      "email": "fiona.lee@gmail.com"
    },
    "team_no_of_members": 1,
    "team_members": [
      {
        "competitor_name": "Lee Fiona",
        "competitor_phone": "0411111106",
        "event_type": "3 Km Community Run/Walk",
        "entry_no": 1,
        "starttime": "08:00:00",
        "finishtime": "08:50:00",
        "elapsedtime": "00:50:00"
      }
    ]
  }
]);

// List all documents you added
db.teamCollection.find();

// (c)
// List carnival date, carnival name, competitor name, competitor phone
// for all competitors who competed in either 5 Km Run or 10 Km Run
db.teamCollection.find(
  {
    $or: [
      { "team_members.event_type": { $eq: "5 Km Run" } },
      { "team_members.event_type": { $eq: "10 Km Run" } }
    ]
  },
  {
    _id:           0,
    carn_date:     1,
    carn_name:     1,
    team_name:     1,
    "team_leader.name": 1
  }
);


// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer


// (i) Add new team

db.teamCollection.insertOne({
  _id: 6,  
  carn_name: "RM WINTER SERIES CAULFIELD 2025",
  carn_date: "29-Jun-2025",
  team_name: "The Great Runners",
  team_leader: {
    name: "Jackson Bull",
    phone: "0422412524",
    email: "jackson.bull@student.monash.edu"
  },
  team_no_of_members: 1,
  team_members: [
    {
      competitor_name: "Jackson Bull",
      competitor_phone: "0422412524",
      event_type: "5 Km Run",
      entry_no: 1,       
      starttime: "-",    
      finishtime: "-",
      elapsedtime: "-"
    }
  ]
});


// Illustrate/confirm changes made

db.teamCollection.find(
  { team_name: "The Great Runners", carn_date: "29-Jun-2025" },
  {
    _id: 0,
    carn_name: 1,
    carn_date: 1,
    team_name: 1,
    team_leader: 1,
    team_no_of_members: 1,
    team_members: 1
  }
);



// (ii) Add new team member

db.teamCollection.updateOne(
  { 
    team_name: "The Great Runners", 
    carn_date: "29-Jun-2025" 
  },
  {

    $push: {
      team_members: {
        competitor_name:  "Steve Mona",
        competitor_phone: "0411222333",
        event_type:       "10 Km Run",
        entry_no:         2,
        starttime:        "-",
        finishtime:       "-",
        elapsedtime:      "-"
      }
    },
   
    $set: {
      team_no_of_members: 2
    }
  }
);



// Illustrate/confirm changes made
db.teamCollection.find(
  { team_name: "The Great Runners", carn_date: "29-Jun-2025" },
  {
    _id:               0,
    carn_name:         1,
    carn_date:         1,
    team_name:         1,
    team_leader:       1,
    team_no_of_members:1,
    team_members:      1
  }
);
