.class Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
.super Ljava/lang/Object;
.source "SyntaxForms.java"

# interfaces
.implements Lkawa/lang/SyntaxForm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lang/SyntaxForms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleSyntaxForm"
.end annotation


# static fields
.field static counter:I


# instance fields
.field private datum:Ljava/lang/Object;

.field id:I

.field private scope:Lkawa/lang/TemplateScope;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkawa/lang/TemplateScope;)V
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    move-object v1, p1

    .local v1, "datum":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "scope":Lkawa/lang/TemplateScope;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 122
    move-object v3, v0

    sget v4, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->counter:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v6

    move v5, v6

    sput v5, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->counter:I

    iput v4, v3, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->id:I

    .line 126
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->datum:Ljava/lang/Object;

    .line 127
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    .line 128
    return-void
.end method


# virtual methods
.method public getDatum()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->datum:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    return-object v0
.end method

.method public getScope()Lkawa/lang/TemplateScope;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    move-object v2, v0

    iget v2, v2, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 143
    .local v1, "sid":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    return-object v0
.end method
