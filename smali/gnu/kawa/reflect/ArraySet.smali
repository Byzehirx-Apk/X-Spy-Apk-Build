.class public Lgnu/kawa/reflect/ArraySet;
.super Lgnu/mapping/Procedure3;
.source "ArraySet.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArraySet;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure3;-><init>()V

    .line 12
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 13
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.reflect.CompileArrays:validateArraySet"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/ArraySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget-object v2, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v3, v0

    const-string/jumbo v4, "*gnu.kawa.reflect.CompileArrays:getForArraySet"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArraySet;
    move-object v1, p1

    .local v1, "array":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "index":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 23
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/ArraySet;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArraySet;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 35
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
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArraySet;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
