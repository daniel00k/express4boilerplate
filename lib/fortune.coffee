fortune = ['asdf', 'qwer', 'acaca']
exports.getFortune = -> fortune[Math.floor(Math.random()*fortune.length)]