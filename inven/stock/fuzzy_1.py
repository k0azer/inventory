def down( x, xmin, xmax ):
    return  (xmax - x ) / ( xmax - xmin )

def up( x, xmin, xmax ):
    return  (xmax - x ) / ( xmax - xmin )

#variable input
class Permintaan():
    minimum = 2100
    maximum = 3500

    def turun (self, x) :
        if x <= self.minimum:
            return 1
        elif x >= self.maximum:
            return 0
        else :
            return down (x, self.minimum, self.maximum)

        def naik(self):
            if x <= self.minimum:
            return 0
        elif x >= self.maximum:
            return 1
        else :
            return down (x, self.minimum, self.maximum)

class Persediaan():
    minimum = 100
    maximum = 250

    def sedikit (self) :
         if x <= self.minimum:
            return 1
        elif x >= self.maximum:
            return 0
        else :
            return down (x, self.minimum, self.maximum)

        def banyak(self):
             if x <= self.minimum:
            return 0
        elif x >= self.maximum:
            return 1
        else :
            return down (x, self.minimum, self.maximum)
            
class Peroduksi():
    minimum = 1000
    maximum = 5000

    def berkurang (self) :
        pass 

        def bertambah(self):
            pass