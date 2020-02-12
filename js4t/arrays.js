var avengers = ['Homem de ferro', 'Capitão América', 'Thor']
 console.log(avengers)
 avengers.push('Hulk')

 console.log(avengers)
 avengers.push('Homem Aranha')
//  avengers.pop(); //pop remove o último registro do meu array
//  avengers.shift(); //shift remove o primeiro registro do seu array

var indice = avengers.indexOf('Homem Aranha')
avengers.splice(indice)

avengers.push('Viuva Negra')
avengers.push('Gaviao Arqueiro')
 console.log(avengers)

 var newAvengers = ['Homem aranha', 'Capitâ Marvel', 'Pantera Negra']

 var result = avengers.concat(newAvengers)
 console.log(result)