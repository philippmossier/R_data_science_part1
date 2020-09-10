# ------------------------------------------ BEISPIEL 1 -------------------------------------------
# ANGABE: 
#   1.1 Erstellen Sie zwei Objekte, wobei einem der Wert 8, dem zweiten der Wert 3 zugewiesen wird.
#   1.2 Fragen Sie in beiden Fällen ab, ob das Objekt gleich der Zahl 3 ist.
# -------------------------------------------------------------------------------------------------

# ________________ 1.1 LÖSUNG: __________________

a <- 8
b <- 3

# ________________ 1.2 LÖSUNG: __________________

print(a == 3)
print(b == 3)


# ------------------------------------------ BEISPIEL 2 -------------------------------------------
# ANGABE: 
#   2.1 Erstellen Sie einen Vektor, dessen Elemente die Ziffern Ihrer Studienkennzahl sind. 
#   2.2 Berechnen Sie von diesem Vektor folgende Werte:
#       Maximum, Minimum, Spannweite, arithmetisches Mittel, Median, Modus
# -------------------------------------------------------------------------------------------------

# ________________ 2.1 LÖSUNG: __________________

matrNr <- c(5,1,9,0,5,4,8,1) 

# ________________ 2.2 LÖSUNG: __________________

maxResult <- max(matrNr)
minResult <- min(matrNr)
spannweiteResult <- max(matrNr) - min(matrNr)
arithMittelResult <- mean(matrNr)
medianResult <- median(matrNr)

Mode <- function(input) {
  u <- unique(input)
  u[which.max(tabulate(match(input, u)))]
}
modusResult <- Mode(matrNr)

print(maxResult)
print(minResult)
print(spannweiteResult)
print(arithMittelResult)
print(medianResult)
print(modusResult)


# ------------------------------------------ BEISPIEL 3 -------------------------------------------
# ANGABE: 
#   3.1 Erstellen Sie einen zweiten Vektor, dessen Elemente Ihr Geburtsdatum in der Form TTMMJJ ist.
#   3.2 Addieren Sie die beiden Vektoren. Was fällt Ihnen auf?
# -------------------------------------------------------------------------------------------------

# ________________ 3.1 LÖSUNG: __________________

geburtsdatum <- c(0, 3, 0, 7, 8, 8)
print(geburtsdatum)

# ________________ 3.2 LÖSUNG: __________________

bothVectorResult <- geburtsdatum + matrNr

print(matrNr)
print(geburtsdatum)
print(bothVectorResult)

# _____________ Antwort Beispiel 3 : ____________
# Die Vektoren werden nach ihrer index Reihenfolge addiert. Wenn jedoch ein 
# Vektor länger ist als der andere dann fängt der kürzere Vektor wieder vom ersten idex an. 
# Kurzer Vektor iteriert so lange bis das Ende des langen Vektors erreicht ist.


# ------------------------------------------ BEISPIEL 4 -------------------------------------------
# ANGABE: 
#  4.1 Erstellen Sie eine 5x5-Matrix mymat mit Nullen als Einträgen. 
#  4.2 Befüllen Sie die Matrix mit Einträgen. Die Einträge sollen folgendermaßen beschaffen sein:
#  - der Eintrag in der ersten Zeile und ersten Spalte ist 3*3
#  - der Eintrag in der ersten Zeile und zweiten Spalte ist 3*4
#  - der Eintrag in der ersten Zeile und dritten Spalte ist 3*5
#  - der Eintrag in der zweiten Zeile und ersten Spalte ist 4*3
#  - der Eintrag in der zweiten Zeile und zweiten Spalte ist 4*4 etc.
#  Befüllen Sie die Matrix unter Zuhilfenahme zweier Schleifen.
#  4.3 Erstellen Sie eine eine Matrix mymat2, indem Sie mymat transponieren.
#  4.4 Berechnen Sie die Determinanten der beiden Matrizen. Was fällt Ihnen auf?
# -------------------------------------------------------------------------------------------------

# ________________ 4.1 LÖSUNG: __________________

zeromat <-matrix(0L,nrow=5,ncol=5,byrow=TRUE)
print(zeromat)

# ________________ 4.2 LÖSUNG: __________________

#  Globally scoped for loop:

#    for (r in 1:nrow(matr)){
#      for (c in 1:ncol(matr)){
#        inp[r, c] <-  (r + 2) * (c + 2)  
#      }
#    }

#  Locally scoped for loop:

MatrLoop <- function(matr){
  for (r in 1:nrow(matr)){
    for (c in 1:ncol(matr)){
    matr[r, c] <-  (r + 2) * (c + 2)  
    }
  } 
  return(matr)
}

mymat <- MatrLoop(zeromat)
print(mymat)


# ________________ 4.3 LÖSUNG: __________________

mymat2 <- t(mymat)
print(mymat2)

detMyMat <- det(mymat)
print(detMyMat)

detMyMat2 <- det(mymat2)
print(detMyMat2)

# _____________ Antwort Beispiel 4 : _____________
#    Durch das transponieren erhaltet man eine Kopie von obj1.
#    Das dass Ergebnis der Determinanten 0 ist liegt warscheinlich daran das dass
#    Inkrement pro zeile (zeile1 = 3, zeile2 = 4 usw.) immer ein restloser modulus ist 
#    Laut wikipedia gibt der determinant die volumensaenderung an welche hier jedoch gleich null
#    ist da alles linear verlaeuft.


# ------------------------------------------ BEISPIEL 5 -------------------------------------------
# ANGABE: 
#  5.1 Erstellen Sie einen Vektor, der die Elemente 1 bis 10 in Schritten von 0.1 enthält. 
#  5.2 Erstellen Sie ein zweites Objekt, dessen Einträge gleich dem Sinus der Elemente des ersten 
#      Vektors sind.
#  5.3 Erstellen Sie einen Plot dieser Daten. Die Darstellung soll mittels einer grünen 
#      Linie erfolgen, die Überschrift des Plots soll "Die Sinusfunktion" lauten, 
#      beschriften Sie die Achsen mit x bzw. sin(x).
# -------------------------------------------------------------------------------------------------

# ________________ 5.1 LÖSUNG: __________________

obj1 <- seq(0, 10, by=0.1)
print(obj1)

# ________________ 5.2 LÖSUNG: __________________

obj2 <- sin(obj1[0:101])
print(obj2)

# ________________ 5.3 LÖSUNG: __________________

obj2plot <- plot(obj2, 
                 main="Die Sinusfunktion", 
                 xlab="x", 
                 ylab="sin(x)",
                 type="l", 
                 lty=1, 
                 col="green", 
                 lwd=3)


# --------------------------------------------- ENDE ----------------------------------------------

