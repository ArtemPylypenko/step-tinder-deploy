FROM openjdk

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["java","-jar","out/artifacts/stepTinder_jar/stepTinder.jar"]