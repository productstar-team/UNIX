

mkdir Lst-hw
cd Lst-hw
mkdir -p com/company
touch Main.java
# открываем и редактируем файл с джава программой
cd ../..
javac com/company/Main.java
echo Main-class: com.company.Main > manifest.txt
jar cvfm Lst-hw.jar manifest.txt com/company/*.class
java -jar Lst-hw.jar
# Программа должна отработать
cp Lst-hw.jar ~/

# создаем alias в ~/.bashrc
echo "alias my-hw=\"java -jar ~/Lst-hw.jar\"" >> ~/.bashrc


# вызываем по алиасу:
my-hw
# Программа должна отработать
