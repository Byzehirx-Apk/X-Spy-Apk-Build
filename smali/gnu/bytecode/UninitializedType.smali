.class public Lgnu/bytecode/UninitializedType;
.super Lgnu/bytecode/ObjectType;
.source "UninitializedType.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field label:Lgnu/bytecode/Label;


# direct methods
.method constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/UninitializedType;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 17
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/UninitializedType;->setSignature(Ljava/lang/String;)V

    .line 18
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    .line 19
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/UninitializedType;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "label":Lgnu/bytecode/Label;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;)V

    .line 24
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 25
    return-void
.end method

.method static uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "ctype":Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/bytecode/UninitializedType;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v0, v1

    .end local v0    # "ctype":Lgnu/bytecode/ClassType;
    return-object v0
.end method


# virtual methods
.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/UninitializedType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/UninitializedType;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/UninitializedType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uninitialized<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/UninitializedType;
    return-object v0
.end method
