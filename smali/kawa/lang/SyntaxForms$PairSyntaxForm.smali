.class Lkawa/lang/SyntaxForms$PairSyntaxForm;
.super Lgnu/lists/ImmutablePair;
.source "SyntaxForms.java"

# interfaces
.implements Lkawa/lang/SyntaxForm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lang/SyntaxForms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PairSyntaxForm"
.end annotation


# instance fields
.field private datum:Lgnu/lists/Pair;

.field private scope:Lkawa/lang/TemplateScope;


# direct methods
.method public constructor <init>(Lgnu/lists/Pair;Lkawa/lang/TemplateScope;)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, p1

    .local v1, "datum":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "scope":Lkawa/lang/TemplateScope;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/lists/ImmutablePair;-><init>()V

    .line 154
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    .line 155
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    .line 156
    return-void
.end method


# virtual methods
.method public getCar()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 171
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    .line 172
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 177
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    .line 178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    return-object v0
.end method

.method public getDatum()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    return-object v0
.end method

.method public getScope()Lkawa/lang/TemplateScope;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lang/SyntaxForms;->toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$PairSyntaxForm;
    return-object v0
.end method
