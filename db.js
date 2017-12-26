var mongoose = require('mongoose');
// @mongo is the name of the server we are connecting to within the container & not @localhost
var DB_URL = 'mongodb://@mongo:27017/usermanager';

mongoose.connect(DB_URL, { useMongoClient: true });
