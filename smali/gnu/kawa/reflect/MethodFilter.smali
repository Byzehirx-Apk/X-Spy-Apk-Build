.class Lgnu/kawa/reflect/MethodFilter;
.super Ljava/lang/Object;
.source "ClassMethods.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# instance fields
.field caller:Lgnu/bytecode/ClassType;

.field modifiers:I

.field modmask:I

.field name:Ljava/lang/String;

.field nlen:I

.field receiver:Lgnu/bytecode/ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V
    .locals 8

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/MethodFilter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "modifiers":I
    move v3, p3

    .local v3, "modmask":I
    move-object v4, p4

    .local v4, "caller":Lgnu/bytecode/ClassType;
    move-object v5, p5

    .local v5, "receiver":Lgnu/bytecode/ObjectType;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 307
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    .line 308
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    .line 309
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    .line 310
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    .line 311
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    .line 312
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    .line 313
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 13

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/MethodFilter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v8, v1

    check-cast v8, Lgnu/bytecode/Method;

    move-object v2, v8

    .line 318
    .local v2, "method":Lgnu/bytecode/Method;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 319
    .local v3, "mname":Ljava/lang/String;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v8

    move v4, v8

    .line 320
    .local v4, "mmods":I
    move v8, v4

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    and-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    if-ne v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0x1000

    and-int/lit16 v8, v8, 0x1000

    if-nez v8, :cond_0

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 323
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 335
    .end local v0    # "this":Lgnu/kawa/reflect/MethodFilter;
    :goto_0
    return v0

    .line 324
    .restart local v0    # "this":Lgnu/kawa/reflect/MethodFilter;
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 326
    .local v5, "mlen":I
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    if-eq v8, v9, :cond_4

    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    if-ne v8, v9, :cond_2

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x24

    if-ne v8, v9, :cond_2

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v6, v9

    .local v6, "c":C
    const/16 v9, 0x56

    if-eq v8, v9, :cond_4

    move v8, v6

    const/16 v9, 0x58

    if-eq v8, v9, :cond_4

    .end local v6    # "c":C
    :cond_2
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    if-ne v8, v9, :cond_3

    move-object v8, v3

    const-string/jumbo v9, "$V$X"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 332
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 333
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    instance-of v8, v8, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    check-cast v8, Lgnu/bytecode/ClassType;

    :goto_1
    move-object v7, v8

    .line 335
    .local v7, "declaring":Lgnu/bytecode/ClassType;
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_5
    const/4 v8, 0x1

    :goto_2
    move v0, v8

    goto :goto_0

    .line 333
    .end local v7    # "declaring":Lgnu/bytecode/ClassType;
    :cond_6
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    goto :goto_1

    .line 335
    .restart local v7    # "declaring":Lgnu/bytecode/ClassType;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method
