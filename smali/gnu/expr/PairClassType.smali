.class public Lgnu/expr/PairClassType;
.super Lgnu/bytecode/ClassType;
.source "PairClassType.java"


# instance fields
.field public instanceType:Lgnu/bytecode/ClassType;

.field staticLink:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PairClassType;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/ClassType;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PairClassType;
    move-object v1, p1

    .local v1, "reflectInterface":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "reflectInstanceClass":Ljava/lang/Class;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 38
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/PairClassType;->setExisting(Z)V

    .line 39
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/PairClassType;->reflectClass:Ljava/lang/Class;

    .line 40
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 41
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 42
    return-void
.end method

.method public static extractStaticLink(Lgnu/bytecode/ClassType;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/ClassType;
    move-object v1, v0

    check-cast v1, Lgnu/expr/PairClassType;

    iget-object v1, v1, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "type":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lgnu/expr/PairClassType;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "reflectInterface":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "reflectInstanceClass":Ljava/lang/Class;
    new-instance v2, Lgnu/expr/PairClassType;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v2

    .end local v0    # "reflectInterface":Ljava/lang/Class;
    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lgnu/expr/PairClassType;
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "reflectInterface":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "reflectInstanceClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "staticLink":Ljava/lang/Object;
    new-instance v4, Lgnu/expr/PairClassType;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v3, v4

    .line 56
    .local v3, "type":Lgnu/expr/PairClassType;
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    .line 57
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "reflectInterface":Ljava/lang/Class;
    return-object v0
.end method


# virtual methods
.method public getStaticLink()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PairClassType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/PairClassType;
    return-object v0
.end method
