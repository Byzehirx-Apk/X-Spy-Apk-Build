.class public Lkawa/lang/SyntaxRule;
.super Lkawa/lang/SyntaxTemplate;
.source "SyntaxRule.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field pattern:Lkawa/lang/SyntaxPattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRule;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/SyntaxTemplate;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 9

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRule;
    move-object v1, p1

    .local v1, "pattern":Lkawa/lang/SyntaxPattern;
    move-object v2, p2

    .local v2, "template":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "template_syntax":Lkawa/lang/SyntaxForm;
    move-object v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    .line 31
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 32
    return-void
.end method

.method public constructor <init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRule;
    move-object v1, p1

    .local v1, "pattern":Lkawa/lang/SyntaxPattern;
    move-object v2, p2

    .local v2, "pattern_nesting":Ljava/lang/String;
    move-object v3, p3

    .local v3, "template_program":Ljava/lang/String;
    move-object v4, p4

    .local v4, "literal_values":[Ljava/lang/Object;
    move/from16 v5, p5

    .local v5, "max_nesting":I
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 22
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 23
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRule;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkawa/lang/SyntaxPattern;

    iput-object v3, v2, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkawa/lang/SyntaxTemplate;->readExternal(Ljava/io/ObjectInput;)V

    .line 45
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRule;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkawa/lang/SyntaxTemplate;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 38
    return-void
.end method
