.class public Lgnu/expr/ClassExp;
.super Lgnu/expr/LambdaExp;
.source "ClassExp.java"


# static fields
.field public static final CLASS_SPECIFIED:I = 0x10000

.field public static final HAS_SUBCLASS:I = 0x20000

.field public static final INTERFACE_SPECIFIED:I = 0x8000

.field public static final IS_ABSTRACT:I = 0x4000


# instance fields
.field public classNameSpecifier:Ljava/lang/String;

.field public clinitMethod:Lgnu/expr/LambdaExp;

.field explicitInit:Z

.field public initMethod:Lgnu/expr/LambdaExp;

.field instanceType:Lgnu/bytecode/ClassType;

.field partsDeclared:Z

.field simple:Z

.field public superClassIndex:I

.field public supers:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move v1, p1

    .local v1, "simple":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 70
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/expr/ClassExp;->simple:Z

    .line 71
    move-object v2, v0

    move-object v3, v0

    new-instance v4, Lgnu/bytecode/ClassType;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/bytecode/ClassType;-><init>()V

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .line 72
    return-void
.end method

.method static getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V
    .locals 15

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "interfaceType":Lgnu/bytecode/ClassType;
    move-object/from16 v1, p1

    .local v1, "mname":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "paramTypes":[Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "vec":Ljava/util/Vector;
    move-object v9, v0

    instance-of v9, v9, Lgnu/expr/PairClassType;

    if-eqz v9, :cond_2

    .line 372
    move-object v9, v0

    check-cast v9, Lgnu/expr/PairClassType;

    iget-object v9, v9, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object v4, v9

    .line 396
    .local v4, "implType":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v9, v2

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [Lgnu/bytecode/Type;

    move-object v5, v9

    .line 397
    .local v5, "itypes":[Lgnu/bytecode/Type;
    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    .line 398
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x1

    move-object v13, v2

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object v9, v4

    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v6, v9

    .line 400
    .local v6, "implMethod":Lgnu/bytecode/Method;
    move-object v9, v6

    if-eqz v9, :cond_5

    .line 402
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    move v7, v9

    .line 403
    .local v7, "count":I
    move v9, v7

    if-eqz v9, :cond_0

    move-object v9, v3

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 404
    :cond_0
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 405
    .line 412
    .end local v4    # "implType":Lgnu/bytecode/ClassType;
    .end local v5    # "itypes":[Lgnu/bytecode/Type;
    .end local v6    # "implMethod":Lgnu/bytecode/Method;
    .end local v7    # "count":I
    :cond_1
    :goto_1
    return-void

    .line 373
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v9

    if-nez v9, :cond_3

    .line 374
    goto :goto_1

    .line 379
    :cond_3
    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 380
    .local v5, "reflectClass":Ljava/lang/Class;
    move-object v9, v5

    if-nez v9, :cond_4

    .line 381
    goto :goto_1

    .line 382
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 383
    .local v6, "implTypeName":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v7, v9

    .line 385
    .local v7, "loader":Ljava/lang/ClassLoader;
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    move-object v8, v9

    .line 389
    .local v8, "implClass":Ljava/lang/Class;
    move-object v9, v8

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v9

    .line 394
    .restart local v4    # "implType":Lgnu/bytecode/ClassType;
    goto/16 :goto_0

    .line 391
    .end local v4    # "implType":Lgnu/bytecode/ClassType;
    .end local v5    # "reflectClass":Ljava/lang/Class;
    .end local v6    # "implTypeName":Ljava/lang/String;
    .end local v7    # "loader":Ljava/lang/ClassLoader;
    .end local v8    # "implClass":Ljava/lang/Class;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 393
    .local v5, "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 408
    .restart local v4    # "implType":Lgnu/bytecode/ClassType;
    .local v5, "itypes":[Lgnu/bytecode/Type;
    .local v6, "implMethod":Lgnu/bytecode/Method;
    :cond_5
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v7, v9

    .line 409
    .local v7, "superInterfaces":[Lgnu/bytecode/ClassType;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_2
    move v9, v8

    move-object v10, v7

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 410
    move-object v9, v7

    move v10, v8

    aget-object v9, v9, v10

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static {v9, v10, v11, v12}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 409
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method static invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V
    .locals 10

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "superClass":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v3, v7

    .line 719
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v0

    const-string/jumbo v8, "<init>"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v4, v7

    .line 721
    .local v4, "superConstructor":Lgnu/bytecode/Method;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 722
    move-object v7, v1

    const/16 v8, 0x65

    const-string/jumbo v9, "super class does not have a default constructor"

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 725
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 726
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_1

    .line 728
    move-object v7, v2

    check-cast v7, Lgnu/expr/ClassExp;

    move-object v5, v7

    .line 729
    .local v5, "clExp":Lgnu/expr/ClassExp;
    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object v8, v5

    iget v8, v8, Lgnu/expr/ClassExp;->superClassIndex:I

    aget-object v7, v7, v8

    move-object v6, v7

    .line 730
    .local v6, "superExp":Lgnu/expr/Expression;
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    invoke-static {v7, v8, v9}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 732
    .end local v5    # "clExp":Lgnu/expr/ClassExp;
    .end local v6    # "superExp":Lgnu/expr/Expression;
    :cond_1
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method static loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "superExp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "superClass":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 709
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    move-object v5, v2

    sget-object v6, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v6}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 710
    move-object v4, v3

    const-string/jumbo v5, "gnu.expr.PairClassType"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    const-string/jumbo v6, "extractStaticLink"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 711
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 712
    return-void
.end method

.method public static slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "sname":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v4}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 799
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 800
    .local v2, "slen":I
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v4

    .line 801
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 802
    move v4, v2

    if-lez v4, :cond_1

    .line 804
    move-object v4, v3

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 805
    move-object v4, v3

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 807
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0
.end method

.method private static usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "clas":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 418
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v2, v4

    .line 419
    .local v2, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 421
    move-object v4, v2

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 422
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 424
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 8

    .prologue
    .line 812
    move-object v1, p0

    .local v1, "this":Lgnu/expr/ClassExp;
    move-object v2, p1

    .local v2, "lexp":Lgnu/expr/LambdaExp;
    move-object v3, p2

    .local v3, "mname":Ljava/lang/Object;
    move-object v5, v1

    move-object v6, v3

    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 813
    .local v4, "mdecl":Lgnu/expr/Declaration;
    move-object v5, v2

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 814
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 815
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 816
    move-object v5, v4

    const-wide/32 v6, 0x100000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 817
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 818
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 819
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "this":Lgnu/expr/ClassExp;
    return-object v1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/IgnoreTarget;

    if-eqz v3, :cond_0

    .line 79
    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 81
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 82
    goto :goto_0
.end method

.method public compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 33

    .prologue
    .line 428
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/expr/ClassExp;
    move-object/from16 v4, p1

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v5, v27

    .line 429
    .local v5, "saveClass":Lgnu/bytecode/ClassType;
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    move-object/from16 v6, v27

    .line 432
    .local v6, "saveMethod":Lgnu/bytecode/Method;
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    :try_start_0
    invoke-virtual/range {v27 .. v28}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v27

    move-object/from16 v7, v27

    .line 433
    .local v7, "new_class":Lgnu/bytecode/ClassType;
    move-object/from16 v27, v4

    move-object/from16 v28, v7

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 435
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/ClassExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v27

    move-object/from16 v8, v27

    .line 436
    .local v8, "outer":Lgnu/expr/LambdaExp;
    const/16 v27, 0x0

    move-object/from16 v9, v27

    .line 437
    .local v9, "enclosing":Lgnu/bytecode/Member;
    move-object/from16 v27, v8

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 438
    move-object/from16 v27, v8

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v9, v27

    .line 443
    :cond_0
    :goto_0
    move-object/from16 v27, v9

    if-eqz v27, :cond_1

    .line 445
    move-object/from16 v27, v7

    move-object/from16 v28, v9

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 446
    move-object/from16 v27, v9

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 447
    move-object/from16 v27, v9

    check-cast v27, Lgnu/bytecode/ClassType;

    move-object/from16 v28, v7

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 449
    :cond_1
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v7

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 451
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 452
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 455
    :cond_2
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v4

    invoke-static/range {v27 .. v28}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 456
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 457
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v4

    invoke-static/range {v27 .. v28}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 459
    :cond_3
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/ClassExp;->getFileName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v10, v27

    .line 460
    .local v10, "filename":Ljava/lang/String;
    move-object/from16 v27, v10

    if-eqz v27, :cond_4

    .line 461
    move-object/from16 v27, v7

    move-object/from16 v28, v10

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 463
    :cond_4
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v27, v0

    move-object/from16 v11, v27

    .line 464
    .local v11, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v27, v4

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 466
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/ClassExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 469
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object/from16 v27, v0

    move-object/from16 v13, v27

    .local v13, "child":Lgnu/expr/LambdaExp;
    :goto_1
    move-object/from16 v27, v13

    if-eqz v27, :cond_13

    .line 472
    move-object/from16 v27, v13

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 473
    .line 470
    :goto_2
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object/from16 v27, v0

    move-object/from16 v13, v27

    goto :goto_1

    .line 439
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "child":Lgnu/expr/LambdaExp;
    :cond_5
    move-object/from16 v27, v8

    if-eqz v27, :cond_6

    move-object/from16 v27, v8

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 440
    move-object/from16 v27, v6

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 441
    :cond_6
    move-object/from16 v27, v8

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x24

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    if-lez v27, :cond_0

    .line 442
    move-object/from16 v27, v8

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 474
    .restart local v10    # "filename":Ljava/lang/String;
    .restart local v11    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v13    # "child":Lgnu/expr/LambdaExp;
    :cond_7
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    move-object/from16 v14, v27

    .line 475
    .local v14, "save_method":Lgnu/bytecode/Method;
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v27, v0

    move-object/from16 v15, v27

    .line 476
    .local v15, "save_lambda":Lgnu/expr/LambdaExp;
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v16, v27

    .line 477
    .local v16, "saveFilename":Ljava/lang/String;
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v27

    move/from16 v17, v27

    .line 478
    .local v17, "saveLine":I
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v27

    move/from16 v18, v27

    .line 479
    .local v18, "saveColumn":I
    move-object/from16 v27, v4

    move-object/from16 v28, v13

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 480
    move-object/from16 v27, v4

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 482
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v27, v0

    move-object/from16 v19, v27

    .line 483
    .local v19, "childDecl":Lgnu/expr/Declaration;
    move-object/from16 v27, v19

    if-eqz v27, :cond_8

    move-object/from16 v27, v19

    const-wide/16 v28, 0x800

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v27

    if-nez v27, :cond_9

    .line 485
    :cond_8
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v27

    .line 486
    :cond_9
    move-object/from16 v27, v4

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 487
    move-object/from16 v27, v4

    move-object/from16 v28, v13

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 488
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->initCode()V

    .line 489
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 490
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 491
    const-string/jumbo v27, "*init*"

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 493
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v27

    move-object/from16 v12, v27

    .line 495
    .local v12, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    .line 497
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 498
    move-object/from16 v27, v12

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 499
    move-object/from16 v27, v12

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 503
    :cond_a
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v20, v27

    .line 504
    .local v20, "bodyFirst":Lgnu/expr/Expression;
    :goto_3
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/BeginExp;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 506
    move-object/from16 v27, v20

    check-cast v27, Lgnu/expr/BeginExp;

    move-object/from16 v21, v27

    .line 507
    .local v21, "bbody":Lgnu/expr/BeginExp;
    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/BeginExp;->length:I

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 508
    const/16 v27, 0x0

    move-object/from16 v20, v27

    .line 511
    :goto_4
    goto :goto_3

    .line 510
    :cond_b
    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v20, v27

    goto :goto_4

    .line 514
    .end local v21    # "bbody":Lgnu/expr/BeginExp;
    :cond_c
    const/16 v27, 0x0

    move-object/from16 v21, v27

    .line 516
    .local v21, "calledInit":Lgnu/bytecode/ClassType;
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v27, v20

    check-cast v27, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v23, v28

    .local v23, "exp":Lgnu/expr/Expression;
    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v27, v23

    check-cast v27, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v22, v28

    .local v22, "value":Ljava/lang/Object;
    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/PrimProcedure;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 520
    move-object/from16 v27, v22

    check-cast v27, Lgnu/expr/PrimProcedure;

    move-object/from16 v24, v27

    .line 521
    .local v24, "pproc":Lgnu/expr/PrimProcedure;
    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/PrimProcedure;->isSpecial()Z

    move-result v27

    if-eqz v27, :cond_d

    const-string/jumbo v27, "<init>"

    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 523
    move-object/from16 v27, v24

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v27

    move-object/from16 v21, v27

    .line 525
    .end local v22    # "value":Ljava/lang/Object;
    .end local v23    # "exp":Lgnu/expr/Expression;
    .end local v24    # "pproc":Lgnu/expr/PrimProcedure;
    :cond_d
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v27

    move-object/from16 v24, v27

    .line 526
    .local v24, "superClass":Lgnu/bytecode/ClassType;
    move-object/from16 v27, v21

    if-eqz v27, :cond_10

    .line 528
    move-object/from16 v27, v20

    move-object/from16 v28, v4

    sget-object v29, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 529
    move-object/from16 v27, v21

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_e

    move-object/from16 v27, v21

    move-object/from16 v28, v24

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 530
    move-object/from16 v27, v4

    const/16 v28, 0x65

    const-string/jumbo v29, "call to <init> for not this or super class"

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 538
    :cond_e
    :goto_5
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 539
    move-object/from16 v27, v21

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 540
    move-object/from16 v27, v4

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v29}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v28

    new-instance v29, Ljava/util/Vector;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    const/16 v31, 0xa

    invoke-direct/range {v30 .. v31}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 542
    :cond_f
    move-object/from16 v27, v21

    if-eqz v27, :cond_11

    .line 544
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v28, v4

    invoke-static/range {v27 .. v28}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 547
    .line 553
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v20    # "bodyFirst":Lgnu/expr/Expression;
    .end local v21    # "calledInit":Lgnu/bytecode/ClassType;
    .end local v24    # "superClass":Lgnu/bytecode/ClassType;
    :goto_6
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 554
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 555
    move-object/from16 v27, v4

    move-object/from16 v28, v14

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 556
    move-object/from16 v27, v4

    move-object/from16 v28, v7

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 557
    move-object/from16 v27, v4

    move-object/from16 v28, v15

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 558
    move-object/from16 v27, v4

    move-object/from16 v28, v16

    move/from16 v29, v17

    move/from16 v30, v18

    invoke-virtual/range {v27 .. v30}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 655
    .end local v7    # "new_class":Lgnu/bytecode/ClassType;
    .end local v8    # "outer":Lgnu/expr/LambdaExp;
    .end local v9    # "enclosing":Lgnu/bytecode/Member;
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "child":Lgnu/expr/LambdaExp;
    .end local v14    # "save_method":Lgnu/bytecode/Method;
    .end local v15    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v16    # "saveFilename":Ljava/lang/String;
    .end local v17    # "saveLine":I
    .end local v18    # "saveColumn":I
    .end local v19    # "childDecl":Lgnu/expr/Declaration;
    :catchall_0
    move-exception v27

    move-object/from16 v26, v27

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v26

    throw v27

    .line 532
    .restart local v7    # "new_class":Lgnu/bytecode/ClassType;
    .restart local v8    # "outer":Lgnu/expr/LambdaExp;
    .restart local v9    # "enclosing":Lgnu/bytecode/Member;
    .restart local v10    # "filename":Ljava/lang/String;
    .restart local v11    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v13    # "child":Lgnu/expr/LambdaExp;
    .restart local v14    # "save_method":Lgnu/bytecode/Method;
    .restart local v15    # "save_lambda":Lgnu/expr/LambdaExp;
    .restart local v16    # "saveFilename":Ljava/lang/String;
    .restart local v17    # "saveLine":I
    .restart local v18    # "saveColumn":I
    .restart local v19    # "childDecl":Lgnu/expr/Declaration;
    .restart local v20    # "bodyFirst":Lgnu/expr/Expression;
    .restart local v21    # "calledInit":Lgnu/bytecode/ClassType;
    .restart local v24    # "superClass":Lgnu/bytecode/ClassType;
    :cond_10
    move-object/from16 v27, v24

    if-eqz v27, :cond_e

    .line 536
    move-object/from16 v27, v24

    move-object/from16 v28, v4

    move-object/from16 v29, v3

    :try_start_1
    invoke-static/range {v27 .. v29}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    goto/16 :goto_5

    .line 546
    :cond_11
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_6

    .line 550
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v20    # "bodyFirst":Lgnu/expr/Expression;
    .end local v21    # "calledInit":Lgnu/bytecode/ClassType;
    .end local v24    # "superClass":Lgnu/bytecode/ClassType;
    :cond_12
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 551
    move-object/from16 v27, v13

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_6

    .line 560
    .end local v14    # "save_method":Lgnu/bytecode/Method;
    .end local v15    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v16    # "saveFilename":Ljava/lang/String;
    .end local v17    # "saveLine":I
    .end local v18    # "saveColumn":I
    .end local v19    # "childDecl":Lgnu/expr/Declaration;
    :cond_13
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lgnu/expr/ClassExp;->explicitInit:Z

    move/from16 v27, v0

    if-nez v27, :cond_16

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v27

    if-nez v27, :cond_16

    .line 561
    move-object/from16 v27, v4

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 567
    :cond_14
    :goto_7
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 569
    const/16 v27, 0x0

    move-object/from16 v13, v27

    .line 570
    .local v13, "methods":[Lgnu/bytecode/Method;
    const/16 v27, 0x0

    move/from16 v14, v27

    .line 577
    .local v14, "nmethods":I
    :goto_8
    const/16 v27, 0x0

    move/from16 v15, v27

    .local v15, "i":I
    :goto_9
    move/from16 v27, v15

    move/from16 v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_21

    .line 579
    move-object/from16 v27, v13

    move/from16 v28, v15

    aget-object v27, v27, v28

    move-object/from16 v16, v27

    .line 580
    .local v16, "meth":Lgnu/bytecode/Method;
    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v17, v27

    .line 581
    .local v17, "mname":Ljava/lang/String;
    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v27

    move-object/from16 v18, v27

    .line 582
    .local v18, "ptypes":[Lgnu/bytecode/Type;
    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v27

    move-object/from16 v19, v27

    .line 584
    .local v19, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v17

    move-object/from16 v29, v18

    invoke-virtual/range {v27 .. v29}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v27

    move-object/from16 v20, v27

    .line 585
    .local v20, "mimpl":Lgnu/bytecode/Method;
    move-object/from16 v27, v20

    if-eqz v27, :cond_18

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v27

    if-nez v27, :cond_18

    .line 586
    .line 577
    :cond_15
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 562
    .end local v14    # "nmethods":I
    .end local v15    # "i":I
    .end local v16    # "meth":Lgnu/bytecode/Method;
    .end local v17    # "mname":Ljava/lang/String;
    .end local v18    # "ptypes":[Lgnu/bytecode/Type;
    .end local v19    # "rtype":Lgnu/bytecode/Type;
    .end local v20    # "mimpl":Lgnu/bytecode/Method;
    .local v13, "child":Lgnu/expr/LambdaExp;
    :cond_16
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    .line 563
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v27, v0

    const-string/jumbo v28, "unimplemented: explicit constructor cannot initialize "

    move-object/from16 v29, v4

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Initializer;->reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto :goto_7

    .line 574
    :cond_17
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v27

    move-object/from16 v13, v27

    .line 575
    .local v13, "methods":[Lgnu/bytecode/Method;
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v14, v27

    .restart local v14    # "nmethods":I
    goto/16 :goto_8

    .line 589
    .restart local v15    # "i":I
    .restart local v16    # "meth":Lgnu/bytecode/Method;
    .restart local v17    # "mname":Ljava/lang/String;
    .restart local v18    # "ptypes":[Lgnu/bytecode/Type;
    .restart local v19    # "rtype":Lgnu/bytecode/Type;
    .restart local v20    # "mimpl":Lgnu/bytecode/Method;
    :cond_18
    move-object/from16 v27, v17

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1d

    move-object/from16 v27, v17

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x74

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    move-object/from16 v27, v17

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x65

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    move-object/from16 v27, v17

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v32, v27

    move/from16 v27, v32

    move/from16 v28, v32

    move/from16 v21, v28

    .local v21, "ch":C
    const/16 v28, 0x67

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    move/from16 v27, v21

    const/16 v28, 0x73

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 595
    :cond_19
    move/from16 v27, v21

    const/16 v28, 0x73

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    .line 596
    move-object/from16 v27, v18

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v22, v27

    .line 601
    .local v22, "ftype":Lgnu/bytecode/Type;
    :goto_b
    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v17

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->charAt(I)C

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v28, v17

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v23, v27

    .line 603
    .local v23, "fname":Ljava/lang/String;
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v23

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v27

    move-object/from16 v24, v27

    .line 604
    .local v24, "fld":Lgnu/bytecode/Field;
    move-object/from16 v27, v24

    if-nez v27, :cond_1a

    .line 605
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v23

    move-object/from16 v29, v22

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v27

    move-object/from16 v24, v27

    .line 606
    :cond_1a
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v17

    const/16 v29, 0x1

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    invoke-virtual/range {v27 .. v31}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v27

    move-object/from16 v25, v27

    .line 608
    .local v25, "impl":Lgnu/bytecode/Method;
    move-object/from16 v27, v25

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v27

    move-object/from16 v12, v27

    .line 609
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 610
    move/from16 v27, v21

    const/16 v28, 0x67

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    .line 612
    move-object/from16 v27, v12

    move-object/from16 v28, v24

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 619
    :goto_c
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 620
    goto/16 :goto_a

    .line 597
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v22    # "ftype":Lgnu/bytecode/Type;
    .end local v23    # "fname":Ljava/lang/String;
    .end local v24    # "fld":Lgnu/bytecode/Field;
    .end local v25    # "impl":Lgnu/bytecode/Method;
    :cond_1b
    move/from16 v27, v21

    const/16 v28, 0x67

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_15

    .line 598
    move-object/from16 v27, v19

    move-object/from16 v22, v27

    .restart local v22    # "ftype":Lgnu/bytecode/Type;
    goto/16 :goto_b

    .line 616
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v23    # "fname":Ljava/lang/String;
    .restart local v24    # "fld":Lgnu/bytecode/Field;
    .restart local v25    # "impl":Lgnu/bytecode/Method;
    :cond_1c
    move-object/from16 v27, v12

    move-object/from16 v28, v12

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 617
    move-object/from16 v27, v12

    move-object/from16 v28, v24

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_c

    .line 623
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v21    # "ch":C
    .end local v22    # "ftype":Lgnu/bytecode/Type;
    .end local v23    # "fname":Ljava/lang/String;
    .end local v24    # "fld":Lgnu/bytecode/Field;
    .end local v25    # "impl":Lgnu/bytecode/Method;
    :cond_1d
    new-instance v27, Ljava/util/Vector;

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    invoke-direct/range {v28 .. v28}, Ljava/util/Vector;-><init>()V

    move-object/from16 v22, v27

    .line 624
    .local v22, "vec":Ljava/util/Vector;
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v22

    invoke-static/range {v27 .. v30}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 625
    move-object/from16 v27, v22

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    .line 628
    move-object/from16 v27, v22

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v27

    if-nez v27, :cond_1e

    const-string/jumbo v27, "missing implementation for "

    :goto_d
    move-object/from16 v23, v27

    .line 631
    .local v23, "msg":Ljava/lang/String;
    move-object/from16 v27, v4

    const/16 v28, 0x65

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v23

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v30, v16

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 632
    goto/16 :goto_a

    .line 628
    .end local v23    # "msg":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v27, "ambiguous implementation for "

    goto :goto_d

    .line 635
    :cond_1f
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v28, v17

    const/16 v29, 0x1

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    invoke-virtual/range {v27 .. v31}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v27

    move-object/from16 v23, v27

    .line 637
    .local v23, "impl":Lgnu/bytecode/Method;
    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v27

    move-object/from16 v12, v27

    .line 638
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v27

    move-object/from16 v24, v27

    .line 639
    .local v24, "var":Lgnu/bytecode/Variable;
    :goto_e
    move-object/from16 v27, v24

    if-eqz v27, :cond_20

    .line 640
    move-object/from16 v27, v12

    move-object/from16 v28, v24

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 639
    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v27

    move-object/from16 v24, v27

    goto :goto_e

    .line 641
    :cond_20
    move-object/from16 v27, v22

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lgnu/bytecode/Method;

    move-object/from16 v24, v27

    .line 642
    .local v24, "imethod":Lgnu/bytecode/Method;
    move-object/from16 v27, v12

    move-object/from16 v28, v24

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 643
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_a

    .line 648
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "meth":Lgnu/bytecode/Method;
    .end local v17    # "mname":Ljava/lang/String;
    .end local v18    # "ptypes":[Lgnu/bytecode/Type;
    .end local v19    # "rtype":Lgnu/bytecode/Type;
    .end local v20    # "mimpl":Lgnu/bytecode/Method;
    .end local v22    # "vec":Ljava/util/Vector;
    .end local v23    # "impl":Lgnu/bytecode/Method;
    .end local v24    # "imethod":Lgnu/bytecode/Method;
    :cond_21
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/ClassExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 649
    move-object/from16 v27, v4

    move-object/from16 v28, v11

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    move-object/from16 v27, v7

    move-object/from16 v15, v27

    .line 655
    .end local v15    # "i":I
    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v15

    move-object/from16 v3, v27

    .end local v3    # "this":Lgnu/expr/ClassExp;
    return-object v3
.end method

.method public compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 16

    .prologue
    .line 86
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v3, v11

    .line 88
    .local v3, "new_class":Lgnu/bytecode/ClassType;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v4, v11

    .line 89
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 92
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v11

    move v7, v11

    .line 93
    .local v7, "needsLink":Z
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v11

    if-eqz v11, :cond_0

    move v11, v7

    if-nez v11, :cond_0

    .line 94
    .line 123
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v7

    if-eqz v11, :cond_5

    .line 97
    :cond_1
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-ne v11, v12, :cond_3

    .line 98
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    :goto_1
    const-string/jumbo v11, "gnu.expr.PairClassType"

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v5, v11

    .line 102
    .local v5, "typeType":Lgnu/bytecode/ClassType;
    move v11, v7

    if-eqz v11, :cond_4

    const/4 v11, 0x3

    :goto_2
    move v6, v11

    .line 109
    .local v6, "nargs":I
    :goto_3
    move v11, v6

    new-array v11, v11, [Lgnu/bytecode/Type;

    move-object v8, v11

    .line 110
    .local v8, "argsClass":[Lgnu/bytecode/Type;
    move v11, v7

    if-eqz v11, :cond_2

    .line 112
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 113
    move-object v11, v8

    add-int/lit8 v6, v6, -0x1

    move v12, v6

    sget-object v13, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v13, v11, v12

    .line 115
    :cond_2
    const-string/jumbo v11, "java.lang.Class"

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v9, v11

    .line 116
    .local v9, "typeClass":Lgnu/bytecode/ClassType;
    :goto_4
    add-int/lit8 v6, v6, -0x1

    move v11, v6

    if-ltz v11, :cond_6

    move-object v11, v8

    move v12, v6

    move-object v13, v9

    aput-object v13, v11, v12

    goto :goto_4

    .line 100
    .end local v5    # "typeType":Lgnu/bytecode/ClassType;
    .end local v6    # "nargs":I
    .end local v8    # "argsClass":[Lgnu/bytecode/Type;
    .end local v9    # "typeClass":Lgnu/bytecode/ClassType;
    :cond_3
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_1

    .line 102
    .restart local v5    # "typeType":Lgnu/bytecode/ClassType;
    :cond_4
    const/4 v11, 0x2

    goto :goto_2

    .line 106
    .end local v5    # "typeType":Lgnu/bytecode/ClassType;
    :cond_5
    const-string/jumbo v11, "gnu.bytecode.Type"

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v5, v11

    .line 107
    .restart local v5    # "typeType":Lgnu/bytecode/ClassType;
    const/4 v11, 0x1

    move v6, v11

    .restart local v6    # "nargs":I
    goto :goto_3

    .line 117
    .restart local v8    # "argsClass":[Lgnu/bytecode/Type;
    .restart local v9    # "typeClass":Lgnu/bytecode/ClassType;
    :cond_6
    move-object v11, v5

    const-string/jumbo v12, "make"

    move-object v13, v8

    move-object v14, v5

    const/16 v15, 0x9

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v10, v11

    .line 120
    .local v10, "makeMethod":Lgnu/bytecode/Method;
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 122
    move-object v11, v2

    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 123
    goto :goto_0
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 7

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    new-instance v2, Lgnu/expr/ClassInitializer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/expr/ClassInitializer;-><init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V

    iget-object v2, v2, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return-object v0
.end method

.method public declareParts(Lgnu/expr/Compilation;)V
    .locals 13

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/expr/ClassExp;->partsDeclared:Z

    if-eqz v7, :cond_0

    .line 281
    .line 353
    :goto_0
    return-void

    .line 282
    :cond_0
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lgnu/expr/ClassExp;->partsDeclared:Z

    .line 283
    new-instance v7, Ljava/util/Hashtable;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    move-object v2, v7

    .line 285
    .local v2, "seenFields":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lgnu/expr/Declaration;>;"
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 286
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_5

    .line 289
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 291
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v7

    move v4, v7

    .line 292
    .local v4, "flags":I
    move-object v7, v3

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 293
    move v7, v4

    const/16 v8, 0x8

    or-int/lit8 v7, v7, 0x8

    move v4, v7

    .line 294
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 296
    move v7, v4

    const/16 v8, 0x400

    or-int/lit16 v7, v7, 0x400

    move v4, v7

    .line 297
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v7

    move-object v5, v7

    .line 298
    .local v5, "ftype":Lgnu/bytecode/Type;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string/jumbo v8, "get"

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v9, v4

    sget-object v10, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 300
    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v5

    aput-object v10, v8, v9

    move-object v6, v7

    .line 301
    .local v6, "stypes":[Lgnu/bytecode/Type;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string/jumbo v8, "set"

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v9, v4

    move-object v10, v6

    sget-object v11, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 303
    .line 286
    .end local v4    # "flags":I
    .end local v5    # "ftype":Lgnu/bytecode/Type;
    .end local v6    # "stypes":[Lgnu/bytecode/Type;
    :cond_2
    :goto_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 306
    .restart local v4    # "flags":I
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 308
    .local v5, "fname":Ljava/lang/String;
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 310
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 311
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Declaration;

    move-object v6, v7

    .line 312
    .local v6, "old":Lgnu/expr/Declaration;
    move-object v7, v6

    if-eqz v7, :cond_4

    .line 313
    move-object v7, v6

    move-object v8, v3

    move-object v9, v1

    invoke-static {v7, v8, v9}, Lgnu/expr/ClassExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 314
    :cond_4
    move-object v7, v2

    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 319
    .end local v4    # "flags":I
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "old":Lgnu/expr/Declaration;
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v3, v7

    .local v3, "child":Lgnu/expr/LambdaExp;
    :goto_3
    move-object v7, v3

    if-eqz v7, :cond_d

    .line 322
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 323
    move-object v7, v0

    const/16 v8, 0x4000

    invoke-virtual {v7, v8}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 324
    :cond_6
    const-string/jumbo v7, "*init*"

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 326
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lgnu/expr/ClassExp;->explicitInit:Z

    .line 327
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 328
    move-object v7, v1

    const/16 v8, 0x65

    const-string/jumbo v9, "*init* method cannot be abstract"

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 329
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    instance-of v7, v7, Lgnu/expr/PairClassType;

    if-eqz v7, :cond_8

    .line 330
    move-object v7, v1

    const/16 v8, 0x65

    const-string/jumbo v9, "\'*init*\' methods only supported for simple classes"

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 336
    :cond_8
    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 337
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v7, v8, :cond_9

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v7, v8, :cond_9

    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_9

    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v7

    if-nez v7, :cond_b

    .line 341
    :cond_a
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 342
    :cond_b
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 343
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 320
    :cond_c
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v3, v7

    goto/16 :goto_3

    .line 345
    :cond_d
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v7, :cond_e

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v7

    if-nez v7, :cond_e

    .line 346
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v8, v0

    invoke-static {v7, v8}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 347
    :cond_e
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 348
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v8

    const/16 v9, 0x400

    or-int/lit16 v8, v8, 0x400

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 349
    :cond_f
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_10

    .line 350
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v8

    const/4 v9, -0x2

    and-int/lit8 v8, v8, -0x2

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 353
    :cond_10
    goto/16 :goto_0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/ClassExp;->simple:Z

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ClassExp;
    :cond_0
    sget-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public final isAbstract()Z
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return v0
.end method

.method public isMakingClassPair()Z
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ClassExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimple()Z
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/ClassExp;->simple:Z

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ClassExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 12

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ClassExp;->getExpClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ")"

    const/4 v10, 0x2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 740
    .local v2, "name":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 742
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 743
    move-object v7, v1

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(C)V

    .line 745
    :cond_0
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lgnu/expr/ClassExp;->id:I

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(I)V

    .line 746
    move-object v7, v1

    const-string/jumbo v8, "/fl:"

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lgnu/expr/ClassExp;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 747
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v7, v7

    if-lez v7, :cond_2

    .line 750
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 751
    move-object v7, v1

    const-string/jumbo v8, "supers:"

    const-string/jumbo v9, ""

    const/4 v10, 0x2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 754
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move v8, v3

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 755
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 752
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    :cond_1
    move-object v7, v1

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 759
    .end local v3    # "i":I
    :cond_2
    move-object v7, v1

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(C)V

    .line 760
    const/4 v7, 0x0

    move-object v3, v7

    .line 761
    .local v3, "prevMode":Lgnu/expr/Special;
    const/4 v7, 0x0

    move v4, v7

    .line 762
    .local v4, "i":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    move v5, v7

    .line 764
    .local v5, "key_args":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    .local v6, "decl":Lgnu/expr/Declaration;
    :goto_2
    move-object v7, v6

    if-eqz v7, :cond_5

    .line 766
    move v7, v4

    if-lez v7, :cond_3

    .line 767
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(C)V

    .line 768
    :cond_3
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 769
    add-int/lit8 v4, v4, 0x1

    .line 764
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    .line 762
    .end local v5    # "key_args":I
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    array-length v7, v7

    goto :goto_1

    .line 771
    .restart local v5    # "key_args":I
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object v7, v1

    const-string/jumbo v8, ") "

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 772
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v6, v7

    .local v6, "child":Lgnu/expr/LambdaExp;
    :goto_3
    move-object v7, v6

    if-eqz v7, :cond_6

    .line 775
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 776
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->print(Lgnu/mapping/OutPort;)V

    .line 773
    move-object v7, v6

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v6, v7

    goto :goto_3

    .line 778
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    if-eqz v7, :cond_7

    .line 780
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 781
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 783
    :cond_7
    move-object v7, v1

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setSimple(Z)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/expr/ClassExp;->simple:Z

    return-void
.end method

.method public setTypes(Lgnu/expr/Compilation;)V
    .locals 18

    .prologue
    .line 132
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    move v2, v12

    .line 133
    .local v2, "nsupers":I
    move v12, v2

    new-array v12, v12, [Lgnu/bytecode/ClassType;

    move-object v3, v12

    .line 134
    .local v3, "superTypes":[Lgnu/bytecode/ClassType;
    const/4 v12, 0x0

    move-object v4, v12

    .line 135
    .local v4, "superType":Lgnu/bytecode/ClassType;
    const/4 v12, 0x0

    move v5, v12

    .line 136
    .local v5, "j":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_1
    move v12, v6

    move v13, v2

    if-ge v12, v13, :cond_5

    .line 138
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move v14, v6

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v12

    move-object v7, v12

    .line 139
    .local v7, "st":Lgnu/bytecode/Type;
    move-object v12, v7

    instance-of v12, v12, Lgnu/bytecode/ClassType;

    if-nez v12, :cond_1

    .line 141
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move v14, v6

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 142
    move-object v12, v1

    const/16 v13, 0x65

    const-string/jumbo v14, "invalid super type"

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 143
    .line 136
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "nsupers":I
    .end local v3    # "superTypes":[Lgnu/bytecode/ClassType;
    .end local v4    # "superType":Lgnu/bytecode/ClassType;
    .end local v5    # "j":I
    .end local v6    # "i":I
    .end local v7    # "st":Lgnu/bytecode/Type;
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v12, v12

    goto :goto_0

    .line 145
    .restart local v2    # "nsupers":I
    .restart local v3    # "superTypes":[Lgnu/bytecode/ClassType;
    .restart local v4    # "superType":Lgnu/bytecode/ClassType;
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    .restart local v7    # "st":Lgnu/bytecode/Type;
    :cond_1
    move-object v12, v7

    check-cast v12, Lgnu/bytecode/ClassType;

    move-object v8, v12

    .line 149
    .local v8, "t":Lgnu/bytecode/ClassType;
    move-object v12, v8

    :try_start_0
    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    move v9, v12

    .line 156
    .line 157
    .local v9, "modifiers":I
    :cond_2
    :goto_3
    move v12, v9

    const/16 v13, 0x200

    and-int/lit16 v12, v12, 0x200

    if-nez v12, :cond_4

    .line 159
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 160
    move-object v12, v1

    const/16 v13, 0x65

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "duplicate superclass for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 161
    :cond_3
    move-object v12, v8

    move-object v4, v12

    .line 162
    move-object v12, v0

    move v13, v6

    iput v13, v12, Lgnu/expr/ClassExp;->superClassIndex:I

    goto :goto_2

    .line 151
    .end local v9    # "modifiers":I
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 153
    .local v10, "ex":Ljava/lang/RuntimeException;
    const/4 v12, 0x0

    move v9, v12

    .line 154
    .restart local v9    # "modifiers":I
    move-object v12, v1

    if-eqz v12, :cond_2

    .line 155
    move-object v12, v1

    const/16 v13, 0x65

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unknown super-type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 165
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    move-object v12, v3

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v8

    aput-object v14, v12, v13

    goto :goto_2

    .line 167
    .end local v7    # "st":Lgnu/bytecode/Type;
    .end local v8    # "t":Lgnu/bytecode/ClassType;
    .end local v9    # "modifiers":I
    :cond_5
    move-object v12, v4

    if-eqz v12, :cond_6

    move-object v12, v0

    iget v12, v12, Lgnu/expr/ClassExp;->flags:I

    const v13, 0x8000

    and-int/2addr v12, v13

    if-eqz v12, :cond_6

    .line 168
    move-object v12, v1

    const/16 v13, 0x65

    const-string/jumbo v14, "cannot be interface since has superclass"

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 169
    :cond_6
    move-object v12, v0

    iget-boolean v12, v12, Lgnu/expr/ClassExp;->simple:Z

    if-nez v12, :cond_b

    move-object v12, v4

    if-nez v12, :cond_b

    move-object v12, v0

    iget v12, v12, Lgnu/expr/ClassExp;->flags:I

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    if-nez v12, :cond_b

    move-object v12, v0

    const/high16 v13, 0x20000

    invoke-virtual {v12, v13}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v12

    if-nez v12, :cond_7

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v12, :cond_b

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v12}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 173
    :cond_7
    new-instance v12, Lgnu/expr/PairClassType;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lgnu/expr/PairClassType;-><init>()V

    move-object v6, v12

    .line 174
    .local v6, "ptype":Lgnu/expr/PairClassType;
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 175
    move-object v12, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/expr/PairClassType;->setInterface(Z)V

    .line 176
    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iput-object v13, v12, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 177
    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/bytecode/ClassType;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    aput-object v15, v13, v14

    move-object v7, v12

    .line 179
    .local v7, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    sget-object v13, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 180
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 181
    .line 184
    .end local v6    # "ptype":Lgnu/expr/PairClassType;
    .end local v7    # "interfaces":[Lgnu/bytecode/ClassType;
    :cond_8
    :goto_4
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v13, v4

    if-nez v13, :cond_c

    sget-object v13, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_5
    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 187
    move v12, v5

    move v13, v2

    if-ne v12, v13, :cond_d

    .line 188
    move-object v12, v3

    move-object v6, v12

    .line 194
    .local v6, "interfaces":[Lgnu/bytecode/ClassType;
    :goto_6
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 196
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_a

    .line 199
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 200
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    move-object v7, v12

    .line 212
    .local v7, "name":Ljava/lang/String;
    :cond_9
    :goto_7
    move-object v12, v7

    if-nez v12, :cond_10

    .line 214
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v8, v12

    .line 215
    .local v8, "nbuf":Ljava/lang/StringBuffer;
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v12

    .line 216
    move-object v12, v8

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 217
    move-object v12, v8

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 218
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move v9, v12

    .line 219
    .local v9, "len":I
    const/4 v12, 0x0

    move v10, v12

    .line 221
    .local v10, "i":I
    :goto_8
    move-object v12, v8

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 222
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 223
    move-object v12, v1

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    if-nez v12, :cond_f

    .line 224
    .line 227
    .line 266
    .end local v8    # "nbuf":Ljava/lang/StringBuffer;
    .end local v9    # "len":I
    .end local v10    # "i":I
    :goto_9
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 267
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 268
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 270
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v14}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "$class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 271
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 274
    .end local v7    # "name":Ljava/lang/String;
    :cond_a
    return-void

    .line 182
    .local v6, "i":I
    :cond_b
    move-object v12, v0

    const v13, 0x8000

    invoke-virtual {v12, v13}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 183
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->setInterface(Z)V

    goto/16 :goto_4

    .line 184
    .end local v6    # "i":I
    :cond_c
    move-object v13, v4

    goto/16 :goto_5

    .line 191
    :cond_d
    move v12, v5

    new-array v12, v12, [Lgnu/bytecode/ClassType;

    move-object v6, v12

    .line 192
    .local v6, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v12, v3

    const/4 v13, 0x0

    move-object v14, v6

    const/4 v15, 0x0

    move/from16 v16, v5

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .line 203
    :cond_e
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/ClassExp;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 204
    .restart local v7    # "name":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_9

    .line 206
    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v8, v12

    .line 207
    .local v8, "nlen":I
    move v12, v8

    const/4 v13, 0x2

    if-le v12, v13, :cond_9

    move-object v12, v7

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3c

    if-ne v12, v13, :cond_9

    move-object v12, v7

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3e

    if-ne v12, v13, :cond_9

    .line 209
    move-object v12, v7

    const/4 v13, 0x1

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    goto/16 :goto_7

    .line 225
    .local v8, "nbuf":Ljava/lang/StringBuffer;
    .restart local v9    # "len":I
    .restart local v10    # "i":I
    :cond_f
    move-object v12, v8

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 219
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 228
    .end local v8    # "nbuf":Ljava/lang/StringBuffer;
    .end local v9    # "len":I
    .end local v10    # "i":I
    :cond_10
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object v12, v0

    instance-of v12, v12, Lgnu/expr/ObjectExp;

    if-eqz v12, :cond_12

    .line 229
    :cond_11
    move-object v12, v1

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    goto/16 :goto_9

    .line 232
    :cond_12
    const/4 v12, 0x0

    move v8, v12

    .line 233
    .local v8, "start":I
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v9, v12

    .line 236
    .local v9, "nbuf":Ljava/lang/StringBuffer;
    :goto_a
    move-object v12, v7

    const/16 v13, 0x2e

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    move v10, v12

    .line 237
    .local v10, "dot":I
    move v12, v10

    if-gez v12, :cond_15

    .line 238
    .line 245
    move v12, v8

    if-nez v12, :cond_1a

    .line 247
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v12, :cond_17

    const/4 v12, 0x0

    :goto_b
    move-object v10, v12

    .line 249
    .local v10, "mainName":Ljava/lang/String;
    move-object v12, v10

    if-nez v12, :cond_18

    const/4 v12, -0x1

    :goto_c
    move v11, v12

    .line 250
    .local v11, "dot":I
    move v12, v11

    if-lez v12, :cond_19

    .line 251
    move-object v12, v9

    move-object v13, v10

    const/4 v14, 0x0

    move v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 254
    .line 261
    .end local v10    # "mainName":Ljava/lang/String;
    .end local v11    # "dot":I
    :cond_13
    :goto_d
    move v12, v8

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_14

    .line 262
    move-object v12, v9

    move-object v13, v7

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 264
    :cond_14
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    goto/16 :goto_9

    .line 239
    .local v10, "dot":I
    :cond_15
    move-object v12, v9

    move-object v13, v7

    move v14, v8

    move v15, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 241
    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 242
    move v12, v8

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_16

    .line 243
    move-object v12, v9

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 244
    :cond_16
    goto :goto_a

    .line 247
    :cond_17
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    .line 249
    .local v10, "mainName":Ljava/lang/String;
    :cond_18
    move-object v12, v10

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    goto :goto_c

    .line 252
    .restart local v11    # "dot":I
    :cond_19
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v12, :cond_13

    .line 253
    move-object v12, v9

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_d

    .line 255
    .end local v11    # "dot":I
    .local v10, "dot":I
    :cond_1a
    move v12, v8

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    move v12, v8

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_13

    .line 257
    move-object v12, v9

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    move-object v12, v9

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 259
    move-object v12, v9

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_d
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    move-object v3, v7

    .line 663
    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 664
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 674
    .end local v0    # "this":Lgnu/expr/ClassExp;
    :goto_0
    return-object v0

    .line 665
    .restart local v0    # "this":Lgnu/expr/ClassExp;
    :cond_0
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v4, v7

    .line 669
    .local v4, "saveClass":Lgnu/bytecode/ClassType;
    move-object v7, v3

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v8, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 670
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 674
    move-object v7, v3

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v7, v6

    throw v7
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ClassExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v7

    .line 681
    .local v3, "save":Lgnu/expr/LambdaExp;
    move-object v7, v1

    move-object v8, v0

    iput-object v8, v7, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 682
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v10, v10

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 685
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v4, v7

    .line 686
    .local v4, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 689
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_0

    .line 691
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v5, v7

    .line 692
    .local v5, "firstParam":Lgnu/expr/Declaration;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 693
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 695
    .end local v5    # "firstParam":Lgnu/expr/Declaration;
    :cond_0
    move-object v7, v1

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 687
    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    goto :goto_0

    .line 700
    :cond_1
    move-object v7, v1

    move-object v8, v3

    iput-object v8, v7, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 701
    .line 702
    return-void

    .line 700
    .end local v4    # "child":Lgnu/expr/LambdaExp;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    move-object v8, v3

    iput-object v8, v7, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v7, v6

    throw v7
.end method
