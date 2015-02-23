//
//  ViewController.h
//  Prata
//
//  Created by Ana Elisa Pessoa Aguiar on 23/02/15.
//  Copyright (c) 2015 Ana Elisa Pessoa Aguiar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *perguntas;
    NSArray *respostas;
    NSArray *imagens;
    int indice;
}


@property (weak, nonatomic) IBOutlet UILabel *pergunta;

@property (weak, nonatomic) IBOutlet UILabel *resposta;


- (IBAction)mostrarPergunta:(id)sender;
- (IBAction)mostrarResposta:(id)sender;
- (void)trocarImagem;
@property (weak, nonatomic) IBOutlet UIImageView *imagemResposta;

@end

