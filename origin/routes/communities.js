var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.json({
    id: 42,
    title: "The coder community",
    users: [{ username: "asuka" }, { username: "shinji" }, { username: "rei" }],
    posts: [{ title: "latest release of Node.js" }, { title: "text editors" }, { title: "gigs" }],
  });
});

module.exports = router;

