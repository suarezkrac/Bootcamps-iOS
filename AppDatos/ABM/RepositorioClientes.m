#import "RepositorioClientes.h"
#import "Cliente.h"

@implementation RepositorioClientes

@synthesize clientes;

static RepositorioClientes * instancia;

-(id)init {
    if (self=[super init]) {
        [self leer];
        if (self.clientes==nil) {
            self.clientes = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void)leer {
    NSArray * clientesLeidos = [[NSArray alloc] initWithContentsOfFile:[self ruta]];
    if (clientesLeidos!=nil) {
        self.clientes = [[NSMutableArray alloc] init];
        
        for (NSDictionary * diccionario in clientesLeidos) {
            Cliente * cliente = [[Cliente alloc] init];
            cliente.nombre = [diccionario objectForKey:@"nombre"];
            cliente.debeDinero = [[diccionario objectForKey:@"debe"] boolValue];
            
            [self.clientes addObject:cliente];
        }
        
    }
}

-(void)guardar {
    NSMutableArray * clientesAGuardar = [[NSMutableArray alloc] init];
    for (Cliente * cliente in self.clientes) {
        NSDictionary * diccionario = [[NSDictionary alloc] initWithObjectsAndKeys: cliente.nombre, @"nombre", [NSNumber numberWithBool:cliente.debeDinero], @"debe", nil];
        [clientesAGuardar addObject:diccionario];
    }
    [clientesAGuardar writeToFile:[self ruta] atomically:YES];
}

-(NSString *)ruta {
    NSString * pathFolder = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [pathFolder stringByAppendingPathComponent:@"clientes.plist"];
}

+(RepositorioClientes *)sharedInstance {
    if (instancia==nil) {
        instancia = [[RepositorioClientes alloc] init];        
    }
    return instancia;
}

@end
