.class public Lgnu/kawa/xml/XInteger;
.super Lgnu/math/IntNum;
.source "XInteger.java"


# instance fields
.field private type:Lgnu/kawa/xml/XIntegerType;


# direct methods
.method constructor <init>(Lgnu/math/IntNum;Lgnu/kawa/xml/XIntegerType;)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XInteger;
    move-object v1, p1

    .local v1, "value":Lgnu/math/IntNum;
    move-object v2, p2

    .local v2, "type":Lgnu/kawa/xml/XIntegerType;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/IntNum;-><init>()V

    .line 23
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    iput-object v4, v3, Lgnu/kawa/xml/XInteger;->words:[I

    .line 24
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    iput v4, v3, Lgnu/kawa/xml/XInteger;->ival:I

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/xml/XInteger;->type:Lgnu/kawa/xml/XIntegerType;

    .line 26
    return-void
.end method


# virtual methods
.method public getIntegerType()Lgnu/kawa/xml/XIntegerType;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XInteger;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XInteger;->type:Lgnu/kawa/xml/XIntegerType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XInteger;
    return-object v0
.end method
