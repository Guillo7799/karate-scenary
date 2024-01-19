plugins {
    id("java")
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation("com.intuit.karate:karate-junit5:1.2.0.RC4")
    testImplementation(platform("org.junit:junit-bom:5.9.1"))
    testImplementation("org.junit.jupiter:junit-jupiter")
}

tasks.test {
    useJUnitPlatform()
}

sourceSets{
    test{
        resources{
            srcDir("src/test/java")
            exclude("**/*.java")
        }
    }
}

