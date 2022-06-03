.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lgnu/mapping/Table2D;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    new-instance v3, Ljava/util/IdentityHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v3, v2, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 82
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 83
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 48
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    .line 49
    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .locals 8

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "literal":Lgnu/expr/Literal;
    move v2, p2

    .local v2, "ignore":Z
    move-object v3, p3

    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v4, :cond_1

    .line 530
    move v4, v2

    if-nez v4, :cond_0

    .line 531
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 532
    :cond_0
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 534
    :cond_1
    move-object v4, v1

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/expr/Literal;->flags:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lgnu/expr/Literal;->flags:I

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public emit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    move-object v1, v2

    .local v1, "init":Lgnu/expr/Literal;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 67
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 65
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    move-object v1, v2

    goto :goto_0

    .line 71
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    move-object v1, v2

    :goto_1
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 74
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 72
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    move-object v1, v2

    goto :goto_1

    .line 78
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 79
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/expr/LitTable;->literalsCount:I

    .line 80
    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .locals 15

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object/from16 v1, p1

    .local v1, "literal":Lgnu/expr/Literal;
    move/from16 v2, p2

    .local v2, "ignore":Z
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v3, v9

    .line 540
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v9, :cond_1

    .line 542
    move v9, v2

    if-nez v9, :cond_0

    .line 543
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 547
    move v9, v2

    if-nez v9, :cond_0

    .line 548
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_2
    move-object v9, v1

    iget v9, v9, Lgnu/expr/Literal;->flags:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_3

    .line 552
    move v9, v2

    if-nez v9, :cond_0

    .line 553
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 555
    :cond_3
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, [Ljava/lang/Object;

    if-eqz v9, :cond_6

    .line 557
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    array-length v9, v9

    move v4, v9

    .line 558
    .local v4, "len":I
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v9, Lgnu/bytecode/ArrayType;

    invoke-virtual {v9}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    move-object v5, v9

    .line 559
    .local v5, "elementType":Lgnu/bytecode/Type;
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 560
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 561
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 562
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_5

    .line 564
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move v10, v6

    aget-object v9, v9, v10

    check-cast v9, Lgnu/expr/Literal;

    move-object v7, v9

    .line 565
    .local v7, "el":Lgnu/expr/Literal;
    move-object v9, v7

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v9, :cond_4

    .line 566
    .line 562
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 567
    :cond_4
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 568
    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 569
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 570
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 572
    .end local v7    # "el":Lgnu/expr/Literal;
    :cond_5
    goto :goto_0

    .line 573
    .end local v4    # "len":I
    .end local v5    # "elementType":Lgnu/bytecode/Type;
    .end local v6    # "i":I
    :cond_6
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v9, v9, Lgnu/bytecode/ArrayType;

    if-eqz v9, :cond_7

    .line 575
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v11, Lgnu/bytecode/ArrayType;

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 576
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 578
    :cond_7
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Class;

    if-eqz v9, :cond_a

    .line 580
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Class;

    move-object v4, v9

    .line 581
    .local v4, "clas":Ljava/lang/Class;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 583
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 584
    .local v5, "cname":Ljava/lang/String;
    move-object v9, v5

    const-string/jumbo v10, "int"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 585
    const-string/jumbo v9, "integer"

    move-object v5, v9

    .line 586
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "java.lang."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 589
    move-object v9, v3

    move-object v10, v5

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v10

    const-string/jumbo v11, "TYPE"

    invoke-virtual {v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 590
    .line 593
    .end local v5    # "cname":Ljava/lang/String;
    :goto_3
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 594
    goto/16 :goto_0

    .line 592
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object v10, v4

    invoke-static {v10}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/ObjectType;

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_3

    .line 595
    .end local v4    # "clas":Ljava/lang/Class;
    :cond_a
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_c

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v9

    if-nez v9, :cond_c

    .line 601
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v10, Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 602
    sget-object v9, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v10, "valueOf"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v4, v9

    .line 603
    .local v4, "meth":Lgnu/bytecode/Method;
    move-object v9, v4

    if-nez v9, :cond_b

    .line 604
    sget-object v9, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v10, "make"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v4, v9

    .line 605
    :cond_b
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 606
    move-object v9, v3

    sget-object v10, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 607
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 608
    goto/16 :goto_0

    .line 611
    .end local v4    # "meth":Lgnu/bytecode/Method;
    :cond_c
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v9, Lgnu/bytecode/ClassType;

    move-object v4, v9

    .line 612
    .local v4, "type":Lgnu/bytecode/ClassType;
    move-object v9, v1

    iget v9, v9, Lgnu/expr/Literal;->flags:I

    const/4 v10, 0x4

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    :goto_4
    move v5, v9

    .line 613
    .local v5, "useDefaultInit":Z
    const/4 v9, 0x0

    move-object v6, v9

    .line 614
    .local v6, "method":Lgnu/bytecode/Method;
    const/4 v9, 0x0

    move v7, v9

    .line 615
    .local v7, "makeStatic":Z
    move v9, v5

    if-nez v9, :cond_11

    .line 620
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-nez v9, :cond_d

    .line 621
    move-object v9, v0

    move-object v10, v4

    const-string/jumbo v11, "valueOf"

    move-object v12, v1

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v6, v9

    .line 622
    :cond_d
    move-object v9, v6

    if-nez v9, :cond_f

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Values;

    if-nez v9, :cond_f

    .line 626
    const-string/jumbo v9, "make"

    move-object v8, v9

    .line 628
    .local v8, "mname":Ljava/lang/String;
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/util/regex/Pattern;

    if-eqz v9, :cond_e

    .line 629
    const-string/jumbo v9, "compile"

    move-object v8, v9

    .line 631
    :cond_e
    move-object v9, v0

    move-object v10, v4

    move-object v11, v8

    move-object v12, v1

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v6, v9

    .line 634
    .end local v8    # "mname":Ljava/lang/String;
    :cond_f
    move-object v9, v6

    if-eqz v9, :cond_19

    .line 635
    const/4 v9, 0x1

    move v7, v9

    .line 639
    :cond_10
    :goto_5
    move-object v9, v6

    if-nez v9, :cond_11

    .line 640
    const/4 v9, 0x1

    move v5, v9

    .line 642
    :cond_11
    move v9, v5

    if-eqz v9, :cond_12

    .line 644
    move-object v9, v0

    move-object v10, v4

    const-string/jumbo v11, "set"

    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v6, v9

    .line 647
    :cond_12
    move-object v9, v6

    if-nez v9, :cond_13

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    if-lez v9, :cond_13

    .line 648
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no method to construct "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 649
    :cond_13
    move v9, v7

    if-eqz v9, :cond_1a

    .line 651
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 652
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 668
    :goto_6
    move v9, v7

    if-nez v9, :cond_14

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Values;

    if-eqz v9, :cond_1c

    :cond_14
    const/4 v9, 0x0

    :goto_7
    move-object v8, v9

    .line 671
    .local v8, "resolveMethod":Lgnu/bytecode/Method;
    move-object v9, v8

    if-eqz v9, :cond_15

    .line 673
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 674
    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 676
    :cond_15
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    if-eqz v11, :cond_1d

    move v11, v5

    if-eqz v11, :cond_16

    move-object v11, v6

    if-nez v11, :cond_1d

    :cond_16
    const/4 v11, 0x1

    :goto_8
    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 677
    move v9, v5

    if-eqz v9, :cond_0

    move-object v9, v6

    if-eqz v9, :cond_0

    .line 679
    move v9, v2

    if-nez v9, :cond_17

    .line 680
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 681
    :cond_17
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 682
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_0

    .line 612
    .end local v5    # "useDefaultInit":Z
    .end local v6    # "method":Lgnu/bytecode/Method;
    .end local v7    # "makeStatic":Z
    .end local v8    # "resolveMethod":Lgnu/bytecode/Method;
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 636
    .restart local v5    # "useDefaultInit":Z
    .restart local v6    # "method":Lgnu/bytecode/Method;
    .restart local v7    # "makeStatic":Z
    :cond_19
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    if-lez v9, :cond_10

    .line 637
    move-object v9, v0

    move-object v10, v4

    const-string/jumbo v11, "<init>"

    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v6, v9

    goto/16 :goto_5

    .line 654
    :cond_1a
    move v9, v5

    if-eqz v9, :cond_1b

    .line 656
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 657
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 658
    move-object v9, v4

    const-string/jumbo v10, "<init>"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v8, v9

    .line 659
    .local v8, "init0":Lgnu/bytecode/Method;
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 660
    goto :goto_6

    .line 663
    .end local v8    # "init0":Lgnu/bytecode/Method;
    :cond_1b
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 664
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 665
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 666
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_6

    .line 668
    :cond_1c
    move-object v9, v4

    const-string/jumbo v10, "readResolve"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    goto/16 :goto_7

    .line 676
    .local v8, "resolveMethod":Lgnu/bytecode/Method;
    :cond_1d
    const/4 v11, 0x0

    goto :goto_8
.end method

.method error(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .locals 20

    .prologue
    .line 294
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object/from16 v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v14, v1

    if-nez v14, :cond_0

    .line 295
    sget-object v14, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    move-object v0, v14

    .line 353
    .end local v0    # "this":Lgnu/expr/LitTable;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "this":Lgnu/expr/LitTable;
    :cond_0
    move-object v14, v0

    iget-object v14, v14, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Literal;

    move-object v2, v14

    .line 297
    .local v2, "literal":Lgnu/expr/Literal;
    move-object v14, v2

    if-eqz v14, :cond_1

    .line 298
    move-object v14, v2

    move-object v0, v14

    goto :goto_0

    .line 299
    :cond_1
    move-object v14, v0

    iget-object v14, v14, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v14, v14, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v14, :cond_2

    .line 300
    new-instance v14, Lgnu/expr/Literal;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    move-object v0, v14

    goto :goto_0

    .line 301
    :cond_2
    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object v3, v14

    .line 302
    .local v3, "valueClass":Ljava/lang/Class;
    move-object v14, v3

    invoke-static {v14}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v14

    move-object v4, v14

    .line 304
    .local v4, "valueType":Lgnu/bytecode/Type;
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v5, v15

    monitor-enter v14

    .line 306
    :try_start_0
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    move-object v15, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Literal;

    move-object v2, v14

    .line 307
    move-object v14, v2

    if-eqz v14, :cond_3

    move-object v14, v2

    iget-object v14, v14, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v15, v1

    if-eq v14, v15, :cond_8

    :cond_3
    move-object v14, v4

    instance-of v14, v14, Lgnu/bytecode/ClassType;

    if-eqz v14, :cond_8

    .line 311
    const/16 v14, 0x19

    move v6, v14

    .line 312
    .local v6, "needed_mod":I
    move-object v14, v3

    move-object v7, v14

    .line 313
    .local v7, "fldClass":Ljava/lang/Class;
    move-object v14, v4

    check-cast v14, Lgnu/bytecode/ClassType;

    move-object v8, v14

    .line 314
    .local v8, "fldType":Lgnu/bytecode/ClassType;
    :goto_1
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    move-object v15, v7

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_8

    .line 317
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    move-object v15, v7

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v7

    invoke-virtual/range {v14 .. v17}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 318
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v14

    move-object v9, v14

    .line 319
    .local v9, "fld":Lgnu/bytecode/Field;
    :goto_2
    move-object v14, v9

    if-eqz v14, :cond_7

    .line 321
    move-object v14, v9

    invoke-virtual {v14}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    move v15, v6

    and-int/2addr v14, v15

    move v15, v6

    if-ne v14, v15, :cond_4

    .line 325
    move-object v14, v9

    :try_start_1
    invoke-virtual {v14}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v14

    move-object v10, v14

    .line 326
    .local v10, "rfld":Ljava/lang/reflect/Field;
    move-object v14, v10

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 327
    .local v11, "litValue":Ljava/lang/Object;
    move-object v14, v11

    if-eqz v14, :cond_4

    move-object v14, v7

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-nez v14, :cond_5

    .line 329
    .line 319
    .end local v10    # "rfld":Ljava/lang/reflect/Field;
    .end local v11    # "litValue":Ljava/lang/Object;
    :cond_4
    :goto_3
    move-object v14, v9

    :try_start_2
    invoke-virtual {v14}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    move-object v9, v14

    goto :goto_2

    .line 330
    .restart local v10    # "rfld":Ljava/lang/reflect/Field;
    .restart local v11    # "litValue":Ljava/lang/Object;
    :cond_5
    :try_start_3
    new-instance v14, Lgnu/expr/Literal;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    move-object v12, v14

    .line 331
    .local v12, "lit":Lgnu/expr/Literal;
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    move-object v15, v11

    const/16 v16, 0x0

    move-object/from16 v17, v12

    invoke-virtual/range {v14 .. v17}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 332
    move-object v14, v1

    move-object v15, v11

    if-ne v14, v15, :cond_6

    .line 333
    move-object v14, v12

    move-object v2, v14

    .line 338
    :cond_6
    goto :goto_3

    .line 335
    .end local v10    # "rfld":Ljava/lang/reflect/Field;
    .end local v11    # "litValue":Ljava/lang/Object;
    .end local v12    # "lit":Lgnu/expr/Literal;
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 337
    .local v10, "ex":Ljava/lang/Throwable;
    move-object v14, v0

    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "caught "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " getting static field "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    .end local v6    # "needed_mod":I
    .end local v7    # "fldClass":Ljava/lang/Class;
    .end local v8    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "fld":Lgnu/bytecode/Field;
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v5

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v13

    throw v14

    .line 341
    .restart local v6    # "needed_mod":I
    .restart local v7    # "fldClass":Ljava/lang/Class;
    .restart local v8    # "fldType":Lgnu/bytecode/ClassType;
    .restart local v9    # "fld":Lgnu/bytecode/Field;
    :cond_7
    move-object v14, v7

    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    move-object v7, v14

    .line 342
    move-object v14, v7

    if-nez v14, :cond_9

    .line 343
    .line 347
    .end local v6    # "needed_mod":I
    .end local v7    # "fldClass":Ljava/lang/Class;
    .end local v8    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "fld":Lgnu/bytecode/Field;
    :cond_8
    move-object v14, v5

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    move-object v14, v2

    if-eqz v14, :cond_a

    .line 350
    move-object v14, v0

    iget-object v14, v14, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 353
    :goto_4
    move-object v14, v2

    move-object v0, v14

    goto/16 :goto_0

    .line 344
    .restart local v6    # "needed_mod":I
    .restart local v7    # "fldClass":Ljava/lang/Class;
    .restart local v8    # "fldType":Lgnu/bytecode/ClassType;
    .restart local v9    # "fld":Lgnu/bytecode/Field;
    :cond_9
    move-object v14, v7

    :try_start_6
    invoke-static {v14}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v14

    check-cast v14, Lgnu/bytecode/ClassType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v8, v14

    goto/16 :goto_1

    .line 352
    .end local v6    # "needed_mod":I
    .end local v7    # "fldClass":Ljava/lang/Class;
    .end local v8    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "fld":Lgnu/bytecode/Field;
    :cond_a
    new-instance v14, Lgnu/expr/Literal;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    move-object v2, v14

    goto :goto_4
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .locals 34

    .prologue
    .line 359
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/expr/LitTable;
    move-object/from16 v4, p1

    .local v4, "type":Lgnu/bytecode/ClassType;
    move-object/from16 v5, p2

    .local v5, "name":Ljava/lang/String;
    move-object/from16 v6, p3

    .local v6, "literal":Lgnu/expr/Literal;
    move/from16 v7, p4

    .local v7, "isStatic":Z
    move-object/from16 v28, v6

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    move-object/from16 v8, v28

    .line 360
    .local v8, "argTypes":[Lgnu/bytecode/Type;
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v28

    move-object/from16 v9, v28

    .line 361
    .local v9, "method":Lgnu/bytecode/Method;
    move-object/from16 v28, v8

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v10, v28

    .line 362
    .local v10, "argLength":I
    const/16 v28, 0x0

    move-object/from16 v11, v28

    .line 363
    .local v11, "best":Lgnu/bytecode/Method;
    const-wide/16 v28, 0x0

    move-wide/from16 v12, v28

    .line 364
    .local v12, "bestArrayArgs":J
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 365
    .local v14, "ambiguous":Z
    const/16 v28, 0x0

    move-object/from16 v15, v28

    .line 367
    .local v15, "bParameters":[Lgnu/bytecode/Type;
    :goto_0
    move-object/from16 v28, v9

    if-eqz v28, :cond_13

    .line 369
    move-object/from16 v28, v5

    move-object/from16 v29, v9

    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 370
    .line 367
    :cond_0
    :goto_1
    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v28

    move-object/from16 v9, v28

    goto :goto_0

    .line 371
    :cond_1
    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v28

    move/from16 v16, v28

    .line 372
    .local v16, "mstatic":Z
    move/from16 v28, v7

    move/from16 v29, v16

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 373
    goto :goto_1

    .line 375
    :cond_2
    const-wide/16 v28, 0x0

    move-wide/from16 v17, v28

    .line 376
    .local v17, "arrayArgs":J
    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v28

    move-object/from16 v19, v28

    .line 377
    .local v19, "mParameters":[Lgnu/bytecode/Type;
    const/16 v28, 0x0

    move/from16 v20, v28

    .local v20, "iarg":I
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 380
    .local v21, "iparam":I
    :goto_2
    move/from16 v28, v20

    move/from16 v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    move/from16 v28, v21

    move-object/from16 v29, v19

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 382
    move-object/from16 v28, v11

    if-eqz v28, :cond_3

    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_4

    move-wide/from16 v28, v17

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_4

    .line 384
    :cond_3
    move-object/from16 v28, v9

    move-object/from16 v11, v28

    .line 385
    move-object/from16 v28, v19

    move-object/from16 v15, v28

    .line 386
    move-wide/from16 v28, v17

    move-wide/from16 v12, v28

    goto :goto_1

    .line 388
    :cond_4
    move-wide/from16 v28, v17

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_0

    .line 393
    const/16 v28, 0x0

    move/from16 v22, v28

    .line 395
    .local v22, "not1":Z
    const/16 v28, 0x0

    move/from16 v23, v28

    .line 396
    .local v23, "not2":Z
    move/from16 v28, v10

    move/from16 v24, v28

    .local v24, "j":I
    :goto_3
    add-int/lit8 v24, v24, -0x1

    move/from16 v28, v24

    if-ltz v28, :cond_5

    .line 398
    move-object/from16 v28, v15

    move/from16 v29, v24

    aget-object v28, v28, v29

    move-object/from16 v29, v19

    move/from16 v30, v24

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v28

    move/from16 v25, v28

    .line 399
    .local v25, "c":I
    move/from16 v28, v25

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 401
    const/16 v28, 0x1

    move/from16 v23, v28

    .line 402
    move/from16 v28, v22

    if-eqz v28, :cond_7

    .line 403
    .line 412
    .end local v25    # "c":I
    :cond_5
    :goto_4
    move/from16 v28, v22

    if-eqz v28, :cond_6

    .line 414
    move-object/from16 v28, v9

    move-object/from16 v11, v28

    .line 415
    move-object/from16 v28, v19

    move-object/from16 v15, v28

    .line 417
    :cond_6
    move/from16 v28, v22

    if-eqz v28, :cond_9

    move/from16 v28, v23

    if-eqz v28, :cond_9

    const/16 v28, 0x1

    :goto_5
    move/from16 v14, v28

    .line 418
    goto/16 :goto_1

    .line 405
    .restart local v25    # "c":I
    :cond_7
    move/from16 v28, v25

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 407
    const/16 v28, 0x1

    move/from16 v22, v28

    .line 408
    move/from16 v28, v23

    if-eqz v28, :cond_8

    .line 409
    goto :goto_4

    .line 411
    :cond_8
    goto :goto_3

    .line 417
    .end local v25    # "c":I
    :cond_9
    const/16 v28, 0x0

    goto :goto_5

    .line 421
    .end local v22    # "not1":Z
    .end local v23    # "not2":Z
    .end local v24    # "j":I
    :cond_a
    move/from16 v28, v20

    move/from16 v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move/from16 v28, v21

    move-object/from16 v29, v19

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 422
    goto/16 :goto_1

    .line 423
    :cond_b
    move-object/from16 v28, v8

    move/from16 v29, v20

    aget-object v28, v28, v29

    move-object/from16 v22, v28

    .line 424
    .local v22, "aType":Lgnu/bytecode/Type;
    move-object/from16 v28, v19

    move/from16 v29, v21

    aget-object v28, v28, v29

    move-object/from16 v23, v28

    .line 425
    .local v23, "pType":Lgnu/bytecode/Type;
    move-object/from16 v28, v22

    move-object/from16 v29, v23

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 426
    .line 378
    :goto_6
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 427
    :cond_c
    move-object/from16 v28, v23

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move/from16 v28, v21

    const/16 v29, 0x40

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    move-object/from16 v28, v22

    sget-object v29, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_d

    move-object/from16 v28, v22

    sget-object v29, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 430
    :cond_d
    move-object/from16 v28, v6

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v28, v0

    move/from16 v29, v20

    aget-object v28, v28, v29

    check-cast v28, Ljava/lang/Number;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I

    move-result v28

    move/from16 v24, v28

    .line 431
    .local v24, "count":I
    move/from16 v28, v24

    if-gez v28, :cond_e

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "gnu.math.IntNum"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 432
    move/from16 v28, v24

    const/high16 v29, -0x80000000

    sub-int v28, v28, v29

    move/from16 v24, v28

    .line 433
    :cond_e
    move-object/from16 v28, v23

    check-cast v28, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v28

    move-object/from16 v25, v28

    .line 434
    .local v25, "elementType":Lgnu/bytecode/Type;
    move/from16 v28, v24

    if-ltz v28, :cond_0

    move/from16 v28, v20

    move/from16 v29, v24

    add-int v28, v28, v29

    move/from16 v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_f

    .line 435
    goto/16 :goto_1

    .line 438
    :cond_f
    move/from16 v28, v24

    move/from16 v26, v28

    .local v26, "j":I
    :goto_7
    add-int/lit8 v26, v26, -0x1

    move/from16 v28, v26

    if-ltz v28, :cond_12

    .line 440
    move-object/from16 v28, v8

    move/from16 v29, v20

    move/from16 v30, v26

    add-int v29, v29, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-object v28, v28, v29

    move-object/from16 v27, v28

    .line 441
    .local v27, "t":Lgnu/bytecode/Type;
    move-object/from16 v28, v25

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v28, v0

    if-eqz v28, :cond_10

    move-object/from16 v28, v25

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v27

    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_11

    goto/16 :goto_1

    :cond_10
    move-object/from16 v28, v27

    move-object/from16 v29, v25

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 444
    goto/16 :goto_1

    .line 445
    :cond_11
    goto :goto_7

    .line 446
    .end local v27    # "t":Lgnu/bytecode/Type;
    :cond_12
    move/from16 v28, v20

    move/from16 v29, v24

    add-int v28, v28, v29

    move/from16 v20, v28

    .line 447
    move-wide/from16 v28, v17

    const/16 v30, 0x1

    move/from16 v31, v21

    shl-int v30, v30, v31

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    or-long v28, v28, v30

    move-wide/from16 v17, v28

    goto/16 :goto_6

    .line 456
    .end local v16    # "mstatic":Z
    .end local v17    # "arrayArgs":J
    .end local v19    # "mParameters":[Lgnu/bytecode/Type;
    .end local v20    # "iarg":I
    .end local v21    # "iparam":I
    .end local v22    # "aType":Lgnu/bytecode/Type;
    .end local v23    # "pType":Lgnu/bytecode/Type;
    .end local v24    # "count":I
    .end local v25    # "elementType":Lgnu/bytecode/Type;
    .end local v26    # "j":I
    :cond_13
    move/from16 v28, v14

    if-eqz v28, :cond_14

    .line 457
    const/16 v28, 0x0

    move-object/from16 v3, v28

    .line 509
    .end local v3    # "this":Lgnu/expr/LitTable;
    :goto_8
    return-object v3

    .line 458
    .restart local v3    # "this":Lgnu/expr/LitTable;
    :cond_14
    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_15

    .line 460
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v16, v28

    .line 461
    .local v16, "args":[Ljava/lang/Object;
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    move-object/from16 v17, v28

    .line 462
    .local v17, "types":[Lgnu/bytecode/Type;
    const/16 v28, 0x0

    move/from16 v18, v28

    .local v18, "iarg":I
    const/16 v28, 0x0

    move/from16 v19, v28

    .line 465
    .local v19, "iparam":I
    :goto_9
    move/from16 v28, v18

    move/from16 v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 466
    .line 506
    move-object/from16 v28, v6

    move-object/from16 v29, v16

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 507
    move-object/from16 v28, v6

    move-object/from16 v29, v17

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 509
    .end local v16    # "args":[Ljava/lang/Object;
    .end local v17    # "types":[Lgnu/bytecode/Type;
    .end local v18    # "iarg":I
    .end local v19    # "iparam":I
    :cond_15
    move-object/from16 v28, v11

    move-object/from16 v3, v28

    goto :goto_8

    .line 467
    .restart local v16    # "args":[Ljava/lang/Object;
    .restart local v17    # "types":[Lgnu/bytecode/Type;
    .restart local v18    # "iarg":I
    .restart local v19    # "iparam":I
    :cond_16
    move-object/from16 v28, v15

    move/from16 v29, v19

    aget-object v28, v28, v29

    move-object/from16 v20, v28

    .line 468
    .local v20, "pType":Lgnu/bytecode/Type;
    move-wide/from16 v28, v12

    const/16 v30, 0x1

    move/from16 v31, v19

    shl-int v30, v30, v31

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    and-long v28, v28, v30

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_17

    .line 470
    move-object/from16 v28, v16

    move/from16 v29, v19

    move-object/from16 v30, v6

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v30, v0

    move/from16 v31, v18

    aget-object v30, v30, v31

    aput-object v30, v28, v29

    .line 471
    move-object/from16 v28, v17

    move/from16 v29, v19

    move-object/from16 v30, v6

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v30, v0

    move/from16 v31, v18

    aget-object v30, v30, v31

    aput-object v30, v28, v29

    .line 463
    :goto_a
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 475
    :cond_17
    move-object/from16 v28, v6

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v28, v0

    move/from16 v29, v18

    aget-object v28, v28, v29

    check-cast v28, Ljava/lang/Number;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I

    move-result v28

    move/from16 v21, v28

    .line 476
    .local v21, "count":I
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "gnu.math.IntNum"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v22, v28

    .line 477
    .local v22, "isIntNum":Z
    move/from16 v28, v22

    if-eqz v28, :cond_18

    .line 478
    move/from16 v28, v21

    const/high16 v29, -0x80000000

    sub-int v28, v28, v29

    move/from16 v21, v28

    .line 479
    :cond_18
    move-object/from16 v28, v20

    check-cast v28, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v28

    move-object/from16 v23, v28

    .line 480
    .local v23, "elementType":Lgnu/bytecode/Type;
    move-object/from16 v28, v17

    move/from16 v29, v19

    move-object/from16 v30, v20

    aput-object v30, v28, v29

    .line 481
    move-object/from16 v28, v16

    move/from16 v29, v19

    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v30

    move/from16 v31, v21

    invoke-static/range {v30 .. v31}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v30

    aput-object v30, v28, v29

    .line 483
    move-object/from16 v28, v6

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v24, v28

    .line 484
    .local v24, "argValues":[Ljava/lang/Object;
    move/from16 v28, v22

    if-eqz v28, :cond_1b

    .line 489
    move-object/from16 v28, v16

    move/from16 v29, v19

    aget-object v28, v28, v29

    check-cast v28, [I

    check-cast v28, [I

    move-object/from16 v25, v28

    .line 490
    .local v25, "arr":[I
    move/from16 v28, v21

    move/from16 v26, v28

    .restart local v26    # "j":I
    :goto_b
    move/from16 v28, v26

    if-lez v28, :cond_19

    .line 491
    move-object/from16 v28, v25

    move/from16 v29, v21

    move/from16 v30, v26

    sub-int v29, v29, v30

    move-object/from16 v30, v24

    move/from16 v31, v18

    move/from16 v32, v26

    add-int v31, v31, v32

    aget-object v30, v30, v31

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aput v30, v28, v29

    .line 490
    add-int/lit8 v26, v26, -0x1

    goto :goto_b

    .line 493
    .line 499
    .end local v25    # "arr":[I
    .end local v26    # "j":I
    :cond_19
    new-instance v28, Lgnu/expr/Literal;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v16

    move/from16 v31, v19

    aget-object v30, v30, v31

    move-object/from16 v31, v20

    invoke-direct/range {v29 .. v31}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object/from16 v25, v28

    .line 500
    .local v25, "arrayLiteral":Lgnu/expr/Literal;
    move-object/from16 v28, v23

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v28, v0

    if-eqz v28, :cond_1a

    .line 501
    move-object/from16 v28, v25

    move-object/from16 v29, v16

    move/from16 v30, v19

    aget-object v29, v29, v30

    check-cast v29, [Ljava/lang/Object;

    check-cast v29, [Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 502
    :cond_1a
    move-object/from16 v28, v16

    move/from16 v29, v19

    move-object/from16 v30, v25

    aput-object v30, v28, v29

    .line 503
    move/from16 v28, v18

    move/from16 v29, v21

    add-int v28, v28, v29

    move/from16 v18, v28

    goto/16 :goto_a

    .line 496
    .end local v25    # "arrayLiteral":Lgnu/expr/Literal;
    :cond_1b
    move/from16 v28, v21

    move/from16 v25, v28

    .local v25, "j":I
    :goto_c
    add-int/lit8 v25, v25, -0x1

    move/from16 v28, v25

    if-ltz v28, :cond_19

    .line 497
    move-object/from16 v28, v16

    move/from16 v29, v19

    aget-object v28, v28, v29

    move/from16 v29, v25

    move-object/from16 v30, v24

    move/from16 v31, v18

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    move/from16 v32, v25

    add-int v31, v31, v32

    aget-object v30, v30, v31

    invoke-static/range {v28 .. v30}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_c
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v5, v0

    iget v5, v5, Lgnu/expr/LitTable;->stackPointer:I

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 90
    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v6, v6

    mul-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 91
    .local v3, "newValues":[Ljava/lang/Object;
    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v6, v6

    mul-int/2addr v5, v6

    new-array v5, v5, [Lgnu/bytecode/Type;

    move-object v4, v5

    .line 92
    .local v4, "newTypes":[Lgnu/bytecode/Type;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 95
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 97
    .end local v3    # "newValues":[Ljava/lang/Object;
    .end local v4    # "newTypes":[Lgnu/bytecode/Type;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lgnu/expr/LitTable;->stackPointer:I

    move-object v7, v1

    aput-object v7, v5, v6

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    move-object v6, v0

    iget v6, v6, Lgnu/expr/LitTable;->stackPointer:I

    move-object v7, v2

    aput-object v7, v5, v6

    .line 99
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/expr/LitTable;->stackPointer:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/LitTable;->stackPointer:I

    .line 100
    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .locals 14

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "literal":Lgnu/expr/Literal;
    move-object/from16 v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object v3, v7

    .line 515
    .local v3, "argTypes":[Lgnu/bytecode/Type;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .line 516
    .local v4, "len":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 518
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 519
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Lgnu/expr/Literal;

    if-eqz v7, :cond_0

    .line 520
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Lgnu/expr/Literal;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 516
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 522
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object v8, v6

    new-instance v9, Lgnu/expr/StackTarget;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v5

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_1

    .line 524
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "b":I
    move-object v2, v0

    const-string/jumbo v3, "cannot handle call to write(int) when externalizing literal"

    invoke-virtual {v2, v3}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    const-string/jumbo v3, "cannot handle call to write(byte[]) when externalizing literal"

    invoke-virtual {v2, v3}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    const-string/jumbo v5, "cannot handle call to write(byte[],int,int) when externalizing literal"

    invoke-virtual {v4, v5}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    new-instance v3, Ljava/lang/Boolean;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object v4, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 138
    return-void
.end method

.method public writeByte(I)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    new-instance v3, Ljava/lang/Byte;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    int-to-byte v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    sget-object v4, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "cannot handle call to writeBytes(String) when externalizing literal"

    invoke-virtual {v2, v3}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeChar(I)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    new-instance v3, Ljava/lang/Character;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    int-to-char v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    sget-object v4, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 143
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 183
    return-void
.end method

.method public writeDouble(D)V
    .locals 9

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    sget-object v5, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 173
    return-void
.end method

.method public writeFloat(F)V
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    new-instance v3, Ljava/lang/Float;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    sget-object v4, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 168
    return-void
.end method

.method public writeInt(I)V
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 158
    return-void
.end method

.method public writeLong(J)V
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sget-object v5, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 163
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v6

    move-object v2, v6

    .line 197
    .local v2, "lit":Lgnu/expr/Literal;
    move-object v6, v2

    iget v6, v6, Lgnu/expr/Literal;->flags:I

    const/4 v7, 0x3

    and-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_2

    .line 201
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 203
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 204
    :cond_0
    move-object v6, v2

    iget v6, v6, Lgnu/expr/Literal;->flags:I

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 205
    move-object v6, v2

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/expr/Literal;->flags:I

    const/4 v8, 0x4

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lgnu/expr/Literal;->flags:I

    .line 289
    :cond_1
    :goto_0
    move-object v6, v0

    move-object v7, v2

    move-object v8, v2

    iget-object v8, v8, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 290
    return-void

    .line 209
    :cond_2
    move-object v6, v2

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/expr/Literal;->flags:I

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/expr/Literal;->flags:I

    .line 210
    move-object v6, v0

    iget v6, v6, Lgnu/expr/LitTable;->stackPointer:I

    move v3, v6

    .line 211
    .local v3, "oldStack":I
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/FString;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Lgnu/lists/FString;

    invoke-virtual {v6}, Lgnu/lists/FString;->size()I

    move-result v6

    const v7, 0xffff

    if-ge v6, v7, :cond_4

    .line 214
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 273
    :cond_3
    :goto_1
    move-object v6, v0

    iget v6, v6, Lgnu/expr/LitTable;->stackPointer:I

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 274
    .local v4, "nargs":I
    move v6, v4

    if-nez v6, :cond_14

    .line 276
    move-object v6, v2

    sget-object v7, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v7, v6, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 277
    move-object v6, v2

    sget-object v7, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v7, v6, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 287
    :goto_2
    move-object v6, v2

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/expr/Literal;->flags:I

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lgnu/expr/Literal;->flags:I

    goto :goto_0

    .line 216
    .end local v4    # "nargs":I
    :cond_4
    move-object v6, v1

    instance-of v6, v6, Ljava/io/Externalizable;

    if-eqz v6, :cond_5

    .line 218
    move-object v6, v1

    check-cast v6, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_1

    .line 220
    :cond_5
    move-object v6, v1

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 222
    move-object v6, v1

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    .line 223
    .local v4, "arr":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_3
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 225
    move-object v6, v0

    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 227
    :cond_6
    goto :goto_1

    .line 228
    .end local v4    # "arr":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_7
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_3

    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v6, v6, Lgnu/bytecode/ArrayType;

    if-eqz v6, :cond_8

    goto :goto_1

    .line 233
    :cond_8
    move-object v6, v1

    instance-of v6, v6, Ljava/math/BigInteger;

    if-eqz v6, :cond_9

    .line 235
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_9
    move-object v6, v1

    instance-of v6, v6, Ljava/math/BigDecimal;

    if-eqz v6, :cond_a

    .line 239
    move-object v6, v1

    check-cast v6, Ljava/math/BigDecimal;

    move-object v4, v6

    .line 241
    .local v4, "dec":Ljava/math/BigDecimal;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 242
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->writeInt(I)V

    .line 246
    goto/16 :goto_1

    .line 247
    .end local v4    # "dec":Ljava/math/BigDecimal;
    :cond_a
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_b

    .line 248
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 249
    :cond_b
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_c

    .line 250
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 251
    :cond_c
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_d

    .line 252
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 253
    :cond_d
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_e

    .line 254
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 255
    :cond_e
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_f

    .line 256
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 257
    :cond_f
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_10

    .line 258
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 259
    :cond_10
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Character;

    if-eqz v6, :cond_11

    .line 260
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 261
    :cond_11
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_12

    .line 262
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 264
    :cond_12
    move-object v6, v1

    instance-of v6, v6, Ljava/util/regex/Pattern;

    if-eqz v6, :cond_13

    .line 266
    move-object v6, v1

    check-cast v6, Ljava/util/regex/Pattern;

    move-object v4, v6

    .line 267
    .local v4, "pat":Ljava/util/regex/Pattern;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 268
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->flags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 269
    goto/16 :goto_1

    .line 272
    .end local v4    # "pat":Ljava/util/regex/Pattern;
    :cond_13
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement Externalizable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    .local v4, "nargs":I
    :cond_14
    move-object v6, v2

    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 282
    move-object v6, v2

    move v7, v4

    new-array v7, v7, [Lgnu/bytecode/Type;

    iput-object v7, v6, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 283
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    move v7, v3

    move-object v8, v2

    iget-object v8, v8, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    move v7, v3

    move-object v8, v2

    iget-object v8, v8, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/expr/LitTable;->stackPointer:I

    goto/16 :goto_2
.end method

.method public writeShort(I)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    new-instance v3, Ljava/lang/Short;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    int-to-short v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    sget-object v4, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 153
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LitTable;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 178
    return-void
.end method
