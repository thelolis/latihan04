FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]


#6. Buat file HelloWorld.java di dalam folder src
vim src/HelloWorld.java

public class HelloWorld {
  public static void main (String [] args) {
    System.out.println("Hello World again");
    System.out.println("Hai!");
  }
}
