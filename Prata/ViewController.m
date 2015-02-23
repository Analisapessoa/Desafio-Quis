//
//  ViewController.m
//  Prata
//
//  Created by Ana Elisa Pessoa Aguiar on 23/02/15.
//  Copyright (c) 2015 Ana Elisa Pessoa Aguiar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize pergunta;
@synthesize resposta;

- (void)viewDidLoad {
    [super viewDidLoad];
    perguntas = [[NSArray alloc] init];
    perguntas = @[@"Quanto é 7+7??", @"Quanto é 7+8??", @"Quanto é 7+9??"];
    respostas = [[NSArray alloc] init];
    respostas = @[@"14", @"15", @"16"];
    imagens = [[NSArray alloc] init];
    imagens = @[@"14", @"15", @"16"];
    int indice = 0;
    
    self.view.backgroundColor = [UIColor blackColor];
    self.pergunta.textColor = [UIColor whiteColor];
    self.resposta.textColor = [UIColor whiteColor];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarPergunta:(id)sender
{
    [pergunta setText: [perguntas objectAtIndex:indice]];
    [resposta setText: @"??????"];
    [_imagemResposta setImage: nil];
}

- (IBAction)mostrarResposta:(id)sender
{
    [resposta setText: [respostas objectAtIndex:indice]];
    [self trocarImagem];
    if (indice <2)
        
        indice++;
    else indice = 0;
}

- (void)trocarImagem
{
    NSString *nomeDaImagem = [imagens objectAtIndex:indice];
    [_imagemResposta setImage: [UIImage imageNamed:nomeDaImagem]];
    
  
}

@end
