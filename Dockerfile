FROM bellsoft/liberica-openjdk-alpine:17

WORKDIR /app

COPY hello.java .

RUN javac hello.java

CMD ["java", "hello"]
