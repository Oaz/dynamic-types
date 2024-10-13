Object subclass: Program [
  Program class >> pgcd: p and: q [
    | a b temp |
    a := p.
    b := q.
    [b ~= 0] whileTrue: [
       temp := b.
      b := a \\ b.
      a := temp.
    ].
    ^a.
  ]

  Program class >> affichePgcd: p and: q [
    Transcript show: 'PGCD = ', (self pgcd: p and: q) asString; cr.
  ]

  Program class >> main [
    self affichePgcd: 48 and: 18.
    self affichePgcd: 48.0 and: 18.0.
    self affichePgcd: (48.0 + 0.3 - 0.1 - 0.2) and: 18.0.
  ]
].

Program main.