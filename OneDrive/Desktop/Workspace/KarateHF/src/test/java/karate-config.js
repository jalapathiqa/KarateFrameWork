function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 
myVarName: 'hello karate', 
baseUrl: 'https://gorest.co.in',
tokenID: '307b6db496670674b37deff801ae45fe13f43a7358d0c444ee13e4e5e93b4ffd'
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}
