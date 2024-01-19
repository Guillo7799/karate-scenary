function fn(){
    /*var env= karate.env; //get system property 'karate.env'
    karate.log('karate.env system property was', env);
    if(!env){
        env='dev';
    }
    var config = {
        env: env,
        myVarName: 'someValue'
    }
    if (env == 'dev'){
        // customize
        // e.g. config.foo = 'bar'
    } else if (env == 'e2e') {
        //customize
    }
    karate.configure("logPrettyRequest",true)
    karate.configure("logPrettyResponse",true)*/
    karate.configure("continueOnStepFailure",{enabled: true, continueAfter: true, keywords: ['match','status']})
    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);
    /*
    const datafaker = Java.type('net.datafaker.Faker');
    config.faker = new datafaker();

    return config;*/
    return {
        api: {
            baseUrl: "https://petstore.swagger.io/user"
        },
        user: {
            name: 'GalesDev'
        }
    };
}