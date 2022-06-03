.class public Lgnu/kawa/reflect/ArrayGet;
.super Lgnu/mapping/Procedure2;
.source "ArrayGet.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArrayGet;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure2;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 14
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.reflect.CompileArrays:validateArrayGet"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/ArrayGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v2, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v3, v0

    const-string/jumbo v4, "*gnu.kawa.reflect.CompileArrays:getForArrayGet"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArrayGet;
    move-object v1, p1

    .local v1, "array":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "index":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 22
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/ArrayGet;
    return-object v0
.end method

.method public isSideEffectFree()Z
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArrayGet;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/ArrayGet;
    return v0
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
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArrayGet;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 39
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
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ArrayGet;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
