.class public Lgnu/kawa/reflect/SingletonType;
.super Lgnu/bytecode/ObjectType;
.source "SingletonType.java"


# static fields
.field static final instance:Lgnu/kawa/reflect/SingletonType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/reflect/SingletonType;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "singleton"

    invoke-direct {v1, v2}, Lgnu/kawa/reflect/SingletonType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    .line 48
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 49
    :cond_0
    move-object v1, v0

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_2

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "value is not a singleton"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_2
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static final getInstance()Lgnu/kawa/reflect/SingletonType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/reflect/SingletonType;->coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v6, v1

    invoke-static {v6}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v6

    move v2, v6

    .line 33
    .local v2, "otherRange":I
    move v6, v2

    const/16 v7, 0xfff

    and-int/lit16 v6, v6, 0xfff

    move v3, v6

    .line 34
    .local v3, "otherMin":I
    move v6, v2

    const/16 v7, 0xc

    shr-int/lit8 v6, v6, 0xc

    move v4, v6

    .line 35
    .local v4, "otherMax":I
    move v6, v4

    if-eqz v6, :cond_0

    move v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 36
    :cond_0
    const/4 v6, -0x3

    move v0, v6

    .line 42
    .end local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    :goto_0
    return v0

    .line 37
    .restart local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    :cond_1
    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 38
    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 39
    :cond_2
    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v6

    move v5, v6

    .line 40
    .local v5, "cmp":I
    move v6, v5

    if-eqz v6, :cond_3

    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 41
    :cond_3
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 42
    :cond_4
    const/4 v6, -0x2

    move v0, v6

    goto :goto_0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    const-string/jumbo v3, "gnu.kawa.reflect.SingletonType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string/jumbo v4, "coerceToSingleton"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/reflect/SingletonType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SingletonType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Values;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/SingletonType;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
