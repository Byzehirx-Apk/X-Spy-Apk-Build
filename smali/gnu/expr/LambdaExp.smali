.class public Lgnu/expr/LambdaExp;
.super Lgnu/expr/ScopeExp;
.source "LambdaExp.java"


# static fields
.field public static final ATTEMPT_INLINE:I = 0x1000

.field static final CANNOT_INLINE:I = 0x20

.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CLASS_METHOD:I = 0x40

.field static final DEFAULT_CAPTURES_ARG:I = 0x200

.field static final IMPORTS_LEX_VARS:I = 0x8

.field static final INLINE_ONLY:I = 0x2000

.field static final METHODS_COMPILED:I = 0x80

.field static final NEEDS_STATIC_LINK:I = 0x10

.field protected static final NEXT_AVAIL_FLAG:I = 0x4000

.field public static final NO_FIELD:I = 0x100

.field public static final OVERLOADABLE_FIELD:I = 0x800

.field public static final SEQUENCE_RESULT:I = 0x400

.field static searchForKeywordMethod3:Lgnu/bytecode/Method;

.field static searchForKeywordMethod4:Lgnu/bytecode/Method;

.field static final unknownContinuation:Lgnu/expr/ApplyExp;


# instance fields
.field applyMethods:Ljava/util/Vector;

.field argsArray:Lgnu/bytecode/Variable;

.field public body:Lgnu/expr/Expression;

.field capturedVars:Lgnu/expr/Declaration;

.field closureEnv:Lgnu/bytecode/Variable;

.field public closureEnvField:Lgnu/bytecode/Field;

.field public defaultArgs:[Lgnu/expr/Expression;

.field private firstArgsArrayArg:Lgnu/expr/Declaration;

.field public firstChild:Lgnu/expr/LambdaExp;

.field heapFrame:Lgnu/bytecode/Variable;

.field initChain:Lgnu/expr/Initializer;

.field public inlineHome:Lgnu/expr/LambdaExp;

.field public keywords:[Lgnu/expr/Keyword;

.field public max_args:I

.field public min_args:I

.field public nameDecl:Lgnu/expr/Declaration;

.field public nextSibling:Lgnu/expr/LambdaExp;

.field primBodyMethods:[Lgnu/bytecode/Method;

.field primMethods:[Lgnu/bytecode/Method;

.field properties:[Ljava/lang/Object;

.field public returnContinuation:Lgnu/expr/Expression;

.field public returnType:Lgnu/bytecode/Type;

.field selectorValue:I

.field public staticLinkField:Lgnu/bytecode/Field;

.field tailCallers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgnu/expr/LambdaExp;",
            ">;"
        }
    .end annotation
.end field

.field thisValue:Lgnu/mapping/Procedure;

.field thisVariable:Lgnu/bytecode/Variable;

.field throwsSpecification:[Lgnu/expr/Expression;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lgnu/expr/ApplyExp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    check-cast v2, Lgnu/expr/Expression;

    const/4 v3, 0x0

    check-cast v3, [Lgnu/expr/Expression;

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    sput-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    move-object v1, v0

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v2, v1, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "args":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    move-object v2, v0

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 477
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/expr/LambdaExp;->min_args:I

    .line 478
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/expr/LambdaExp;->max_args:I

    .line 479
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    move-object v2, v0

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 484
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 485
    return-void
.end method


# virtual methods
.method final addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 9

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "field":Lgnu/bytecode/Field;
    move-object v5, v0

    move-object v3, v5

    .line 625
    .local v3, "owner":Lgnu/expr/LambdaExp;
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 626
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    move-object v3, v5

    .line 642
    :cond_0
    :goto_0
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v5, :cond_1

    .line 643
    move-object v5, v3

    new-instance v6, Ljava/util/Vector;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v6, v5, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    .line 644
    :cond_1
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 645
    return-void

    .line 633
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    move-object v3, v5

    .line 634
    move-object v5, v3

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_3

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_2

    .line 636
    .line 638
    :cond_3
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v4, v5

    .line 639
    .local v4, "frameType":Lgnu/bytecode/ClassType;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 640
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 46

    .prologue
    .line 805
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v4, p1

    .local v4, "ctype":Lgnu/bytecode/ClassType;
    move-object/from16 v5, p2

    .local v5, "comp":Lgnu/expr/Compilation;
    move-object/from16 v6, p3

    .local v6, "closureEnvType":Lgnu/bytecode/ObjectType;
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v7, v39

    .line 806
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v39

    move-object/from16 v8, v39

    .line 808
    .local v8, "outer":Lgnu/expr/LambdaExp;
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v39, v0

    if-nez v39, :cond_11

    const/16 v39, 0x0

    :goto_0
    move/from16 v9, v39

    .line 809
    .local v9, "key_args":I
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    if-nez v39, :cond_12

    const/16 v39, 0x0

    :goto_1
    move/from16 v10, v39

    .line 810
    .local v10, "opt_args":I
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v39, v0

    const/16 v40, 0x200

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x200

    move/from16 v39, v0

    if-eqz v39, :cond_13

    const/16 v39, 0x0

    :goto_2
    move/from16 v11, v39

    .line 812
    .local v11, "numStubs":I
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v39, v0

    if-ltz v39, :cond_0

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v39, v0

    move/from16 v40, v11

    add-int v39, v39, v40

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_14

    :cond_0
    const/16 v39, 0x1

    :goto_3
    move/from16 v12, v39

    .line 814
    .local v12, "varArgs":Z
    move/from16 v39, v11

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Lgnu/bytecode/Method;

    move-object/from16 v39, v0

    move-object/from16 v13, v39

    .line 818
    .local v13, "methods":[Lgnu/bytecode/Method;
    move-object/from16 v39, v3

    move-object/from16 v40, v13

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 819
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    .line 820
    move-object/from16 v39, v3

    move-object/from16 v40, v13

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 824
    :cond_1
    const/16 v39, 0x0

    move/from16 v15, v39

    .line 825
    .local v15, "isInitMethod":C
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    if-eqz v39, :cond_15

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    const-wide/16 v40, 0x1000

    invoke-virtual/range {v39 .. v41}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v39

    if-eqz v39, :cond_15

    .line 827
    const/16 v39, 0x0

    move/from16 v14, v39

    .line 858
    .local v14, "isStatic":Z
    :goto_4
    new-instance v39, Ljava/lang/StringBuffer;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    const/16 v41, 0x3c

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v16, v39

    .line 859
    .local v16, "nameBuf":Ljava/lang/StringBuffer;
    move/from16 v39, v14

    if-eqz v39, :cond_20

    const/16 v39, 0x8

    :goto_5
    move/from16 v17, v39

    .line 860
    .local v17, "mflags":I
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2

    .line 862
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v39

    if-eqz v39, :cond_21

    .line 863
    move/from16 v39, v17

    const/16 v40, 0x1

    or-int/lit8 v39, v39, 0x1

    move/from16 v17, v39

    .line 872
    :cond_2
    :goto_6
    move-object/from16 v39, v8

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v39

    if-nez v39, :cond_3

    move-object/from16 v39, v8

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v39, v0

    if-eqz v39, :cond_4

    :cond_3
    move-object/from16 v39, v7

    if-nez v39, :cond_5

    .line 875
    :cond_4
    move-object/from16 v39, v16

    const-string/jumbo v40, "lambda"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 876
    move-object/from16 v39, v16

    move-object/from16 v40, v5

    move-object/from16 v44, v40

    move-object/from16 v40, v44

    move-object/from16 v41, v44

    move-object/from16 v0, v41

    iget v0, v0, Lgnu/expr/Compilation;->method_counter:I

    move/from16 v41, v0

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move-object/from16 v44, v40

    move/from16 v45, v41

    move/from16 v40, v45

    move-object/from16 v41, v44

    move/from16 v42, v45

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Lgnu/expr/Compilation;->method_counter:I

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 878
    :cond_5
    move/from16 v39, v15

    const/16 v40, 0x43

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_24

    .line 879
    move-object/from16 v39, v16

    const-string/jumbo v40, "<clinit>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 882
    :cond_6
    :goto_7
    move-object/from16 v39, v3

    const/16 v40, 0x400

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 883
    move-object/from16 v39, v16

    const-string/jumbo v40, "$C"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 884
    :cond_7
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_25

    move/from16 v39, v15

    if-nez v39, :cond_25

    const/16 v39, 0x1

    :goto_8
    move/from16 v18, v39

    .line 887
    .local v18, "withContext":Z
    move/from16 v39, v15

    if-eqz v39, :cond_8

    .line 889
    move/from16 v39, v14

    if-eqz v39, :cond_26

    .line 893
    move/from16 v39, v17

    const/16 v40, -0x3

    and-int/lit8 v39, v39, -0x3

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    move/from16 v17, v39

    .line 902
    :cond_8
    :goto_9
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v39

    if-nez v39, :cond_9

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v39

    if-eqz v39, :cond_a

    .line 903
    :cond_9
    move/from16 v39, v17

    const/16 v40, 0x400

    move/from16 v0, v39

    or-int/lit16 v0, v0, 0x400

    move/from16 v39, v0

    move/from16 v17, v39

    .line 907
    :cond_a
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v39

    if-eqz v39, :cond_b

    move-object/from16 v39, v8

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v39, v0

    if-eqz v39, :cond_b

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v39, v0

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 910
    const/16 v39, 0x0

    move-object/from16 v19, v39

    .line 911
    .local v19, "inherited":[Lgnu/bytecode/Method;
    const/16 v39, 0x0

    move/from16 v20, v39

    .line 913
    .local v20, "iarg":I
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v21, v39

    .line 916
    .local v21, "param":Lgnu/expr/Declaration;
    :goto_a
    move-object/from16 v39, v21

    if-nez v39, :cond_27

    .line 918
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2a

    .line 919
    .line 973
    .end local v19    # "inherited":[Lgnu/bytecode/Method;
    .end local v20    # "iarg":I
    .end local v21    # "param":Lgnu/expr/Declaration;
    :cond_b
    :goto_b
    move-object/from16 v39, v3

    const/16 v40, 0x400

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v39

    if-nez v39, :cond_c

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_32

    :cond_c
    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_c
    move-object/from16 v19, v39

    .line 978
    .local v19, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v39, v6

    if-eqz v39, :cond_33

    move-object/from16 v39, v6

    move-object/from16 v40, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_33

    const/16 v39, 0x1

    :goto_d
    move/from16 v20, v39

    .line 980
    .local v20, "extraArg":I
    const/16 v39, 0x0

    move/from16 v21, v39

    .line 981
    .local v21, "ctxArg":I
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_d

    move/from16 v39, v15

    if-nez v39, :cond_d

    .line 983
    const/16 v39, 0x1

    move/from16 v21, v39

    .line 985
    :cond_d
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move/from16 v22, v39

    .line 986
    .local v22, "nameBaseLength":I
    const/16 v39, 0x0

    move/from16 v23, v39

    .local v23, "i":I
    :goto_e
    move/from16 v39, v23

    move/from16 v40, v11

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_4b

    .line 988
    move-object/from16 v39, v16

    move/from16 v40, v22

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 989
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v39, v0

    move/from16 v40, v23

    add-int v39, v39, v40

    move/from16 v24, v39

    .line 990
    .local v24, "plainArgs":I
    move/from16 v39, v24

    move/from16 v25, v39

    .line 991
    .local v25, "numArgs":I
    move/from16 v39, v23

    move/from16 v40, v11

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    move/from16 v39, v12

    if-eqz v39, :cond_e

    .line 992
    add-int/lit8 v25, v25, 0x1

    .line 993
    :cond_e
    move/from16 v39, v20

    move/from16 v40, v25

    add-int v39, v39, v40

    move/from16 v40, v21

    add-int v39, v39, v40

    move/from16 v0, v39

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v39, v0

    move-object/from16 v26, v39

    .line 994
    .local v26, "atypes":[Lgnu/bytecode/Type;
    move/from16 v39, v20

    if-lez v39, :cond_f

    .line 995
    move-object/from16 v39, v26

    const/16 v40, 0x0

    move-object/from16 v41, v6

    aput-object v41, v39, v40

    .line 996
    :cond_f
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v27, v39

    .line 997
    .local v27, "var":Lgnu/expr/Declaration;
    move-object/from16 v39, v27

    if-eqz v39, :cond_10

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v39

    if-eqz v39, :cond_10

    .line 998
    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v27, v39

    .line 999
    :cond_10
    const/16 v39, 0x0

    move/from16 v28, v39

    .local v28, "itype":I
    :goto_f
    move/from16 v39, v28

    move/from16 v40, v24

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_34

    .line 1000
    move-object/from16 v39, v26

    move/from16 v40, v20

    move/from16 v41, v28

    add-int/lit8 v28, v28, 0x1

    add-int v40, v40, v41

    move-object/from16 v41, v27

    invoke-virtual/range {v41 .. v41}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v41

    aput-object v41, v39, v40

    .line 999
    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v27, v39

    goto :goto_f

    .line 808
    .end local v9    # "key_args":I
    .end local v10    # "opt_args":I
    .end local v11    # "numStubs":I
    .end local v12    # "varArgs":Z
    .end local v13    # "methods":[Lgnu/bytecode/Method;
    .end local v14    # "isStatic":Z
    .end local v15    # "isInitMethod":C
    .end local v16    # "nameBuf":Ljava/lang/StringBuffer;
    .end local v17    # "mflags":I
    .end local v18    # "withContext":Z
    .end local v19    # "rtype":Lgnu/bytecode/Type;
    .end local v20    # "extraArg":I
    .end local v21    # "ctxArg":I
    .end local v22    # "nameBaseLength":I
    .end local v23    # "i":I
    .end local v24    # "plainArgs":I
    .end local v25    # "numArgs":I
    .end local v26    # "atypes":[Lgnu/bytecode/Type;
    .end local v27    # "var":Lgnu/expr/Declaration;
    .end local v28    # "itype":I
    :cond_11
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    goto/16 :goto_0

    .line 809
    .restart local v9    # "key_args":I
    :cond_12
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v40, v9

    sub-int v39, v39, v40

    goto/16 :goto_1

    .line 810
    .restart local v10    # "opt_args":I
    :cond_13
    move/from16 v39, v10

    goto/16 :goto_2

    .line 812
    .restart local v11    # "numStubs":I
    :cond_14
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 828
    .restart local v12    # "varArgs":Z
    .restart local v13    # "methods":[Lgnu/bytecode/Method;
    .restart local v15    # "isInitMethod":C
    :cond_15
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    if-eqz v39, :cond_16

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    const-wide/16 v40, 0x800

    invoke-virtual/range {v39 .. v41}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 830
    const/16 v39, 0x1

    move/from16 v14, v39

    .restart local v14    # "isStatic":Z
    goto/16 :goto_4

    .line 831
    .end local v14    # "isStatic":Z
    :cond_16
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 833
    move-object/from16 v39, v8

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v39, v0

    if-eqz v39, :cond_1a

    .line 835
    move-object/from16 v39, v8

    check-cast v39, Lgnu/expr/ClassExp;

    move-object/from16 v16, v39

    .line 836
    .local v16, "cl":Lgnu/expr/ClassExp;
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v39

    if-eqz v39, :cond_18

    move-object/from16 v39, v6

    if-eqz v39, :cond_18

    const/16 v39, 0x1

    :goto_10
    move/from16 v14, v39

    .line 837
    .restart local v14    # "isStatic":Z
    move-object/from16 v39, v3

    move-object/from16 v40, v16

    move-object/from16 v0, v40

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_19

    .line 838
    const/16 v39, 0x49

    move/from16 v15, v39

    .line 844
    :cond_17
    :goto_11
    goto/16 :goto_4

    .line 836
    .end local v14    # "isStatic":Z
    :cond_18
    const/16 v39, 0x0

    goto :goto_10

    .line 839
    .restart local v14    # "isStatic":Z
    :cond_19
    move-object/from16 v39, v3

    move-object/from16 v40, v16

    move-object/from16 v0, v40

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_17

    .line 841
    const/16 v39, 0x43

    move/from16 v15, v39

    .line 842
    const/16 v39, 0x1

    move/from16 v14, v39

    goto :goto_11

    .line 846
    .end local v14    # "isStatic":Z
    .end local v16    # "cl":Lgnu/expr/ClassExp;
    :cond_1a
    const/16 v39, 0x0

    move/from16 v14, v39

    .restart local v14    # "isStatic":Z
    goto/16 :goto_4

    .line 848
    .end local v14    # "isStatic":Z
    :cond_1b
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v39, v0

    if-nez v39, :cond_1c

    move-object/from16 v39, v6

    move-object/from16 v40, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1d

    .line 849
    :cond_1c
    const/16 v39, 0x0

    move/from16 v14, v39

    .restart local v14    # "isStatic":Z
    goto/16 :goto_4

    .line 850
    .end local v14    # "isStatic":Z
    :cond_1d
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1f

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v39, v0

    if-eqz v39, :cond_1f

    .line 852
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v39, v0

    check-cast v39, Lgnu/expr/ModuleExp;

    move-object/from16 v16, v39

    .line 853
    .local v16, "mexp":Lgnu/expr/ModuleExp;
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v39

    if-nez v39, :cond_1e

    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v39

    if-nez v39, :cond_1e

    const/16 v39, 0x1

    :goto_12
    move/from16 v14, v39

    .line 854
    .restart local v14    # "isStatic":Z
    goto/16 :goto_4

    .line 853
    .end local v14    # "isStatic":Z
    :cond_1e
    const/16 v39, 0x0

    goto :goto_12

    .line 856
    .end local v16    # "mexp":Lgnu/expr/ModuleExp;
    :cond_1f
    const/16 v39, 0x1

    move/from16 v14, v39

    .restart local v14    # "isStatic":Z
    goto/16 :goto_4

    .line 859
    .local v16, "nameBuf":Ljava/lang/StringBuffer;
    :cond_20
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 866
    .restart local v17    # "mflags":I
    :cond_21
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v39

    if-eqz v39, :cond_23

    const/16 v39, 0x0

    :goto_13
    move/from16 v18, v39

    .line 867
    .local v18, "defaultFlag":S
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v39

    if-eqz v39, :cond_22

    .line 868
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v39, v0

    move/from16 v40, v18

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v39

    move/from16 v18, v39

    .line 869
    :cond_22
    move/from16 v39, v17

    move/from16 v40, v18

    or-int v39, v39, v40

    move/from16 v17, v39

    goto/16 :goto_6

    .line 866
    .end local v18    # "defaultFlag":S
    :cond_23
    const/16 v39, 0x1

    goto :goto_13

    .line 880
    :cond_24
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v39

    if-eqz v39, :cond_6

    .line 881
    move-object/from16 v39, v16

    move-object/from16 v40, v7

    invoke-static/range {v40 .. v40}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    goto/16 :goto_7

    .line 884
    :cond_25
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 899
    .local v18, "withContext":Z
    :cond_26
    move/from16 v39, v17

    const/16 v40, 0x2

    and-int/lit8 v39, v39, 0x2

    const/16 v40, 0x2

    add-int/lit8 v39, v39, 0x2

    move/from16 v17, v39

    goto/16 :goto_9

    .line 921
    .local v19, "inherited":[Lgnu/bytecode/Method;
    .local v20, "iarg":I
    .local v21, "param":Lgnu/expr/Declaration;
    :cond_27
    move-object/from16 v39, v21

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v39

    if-eqz v39, :cond_29

    .line 923
    add-int/lit8 v20, v20, -0x1

    .line 914
    :cond_28
    :goto_14
    move-object/from16 v39, v21

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v21, v39

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 926
    :cond_29
    move-object/from16 v39, v21

    const-wide/16 v40, 0x2000

    invoke-virtual/range {v39 .. v41}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 927
    goto :goto_14

    .line 928
    :cond_2a
    move-object/from16 v39, v19

    if-nez v39, :cond_2b

    .line 930
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v22, v39

    .line 931
    .local v22, "mangled":Ljava/lang/String;
    new-instance v39, Lgnu/expr/LambdaExp$1;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    move-object/from16 v41, v3

    move-object/from16 v42, v22

    invoke-direct/range {v40 .. v42}, Lgnu/expr/LambdaExp$1;-><init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V

    move-object/from16 v23, v39

    .line 942
    .local v23, "filter":Lgnu/bytecode/Filter;
    move-object/from16 v39, v4

    move-object/from16 v40, v23

    const/16 v41, 0x2

    invoke-virtual/range {v39 .. v41}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v39

    move-object/from16 v19, v39

    .line 944
    .end local v22    # "mangled":Ljava/lang/String;
    .end local v23    # "filter":Lgnu/bytecode/Filter;
    :cond_2b
    const/16 v39, 0x0

    move-object/from16 v22, v39

    .line 945
    .local v22, "type":Lgnu/bytecode/Type;
    move-object/from16 v39, v19

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v23, v39

    .local v23, "i":I
    :goto_15
    add-int/lit8 v23, v23, -0x1

    move/from16 v39, v23

    if-ltz v39, :cond_2f

    .line 947
    move-object/from16 v39, v19

    move/from16 v40, v23

    aget-object v39, v39, v40

    move-object/from16 v24, v39

    .line 948
    .local v24, "method":Lgnu/bytecode/Method;
    move-object/from16 v39, v21

    if-nez v39, :cond_2d

    move-object/from16 v39, v24

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v39

    :goto_16
    move-object/from16 v25, v39

    .line 950
    .local v25, "ptype":Lgnu/bytecode/Type;
    move-object/from16 v39, v22

    if-nez v39, :cond_2e

    .line 951
    move-object/from16 v39, v25

    move-object/from16 v22, v39

    .line 960
    :cond_2c
    goto :goto_15

    .line 948
    .end local v25    # "ptype":Lgnu/bytecode/Type;
    :cond_2d
    move-object/from16 v39, v24

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v39

    move/from16 v40, v20

    aget-object v39, v39, v40

    goto :goto_16

    .line 952
    .restart local v25    # "ptype":Lgnu/bytecode/Type;
    :cond_2e
    move-object/from16 v39, v25

    move-object/from16 v40, v22

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_2c

    .line 955
    move-object/from16 v39, v21

    if-nez v39, :cond_28

    .line 956
    goto/16 :goto_b

    .line 961
    .end local v24    # "method":Lgnu/bytecode/Method;
    .end local v25    # "ptype":Lgnu/bytecode/Type;
    :cond_2f
    move-object/from16 v39, v22

    if-eqz v39, :cond_30

    .line 963
    move-object/from16 v39, v21

    if-eqz v39, :cond_31

    .line 964
    move-object/from16 v39, v21

    move-object/from16 v40, v22

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 968
    :cond_30
    :goto_17
    move-object/from16 v39, v21

    if-nez v39, :cond_28

    .line 969
    goto/16 :goto_b

    .line 966
    :cond_31
    move-object/from16 v39, v3

    move-object/from16 v40, v22

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_17

    .line 973
    .end local v19    # "inherited":[Lgnu/bytecode/Method;
    .end local v20    # "iarg":I
    .end local v21    # "param":Lgnu/expr/Declaration;
    .end local v22    # "type":Lgnu/bytecode/Type;
    .end local v23    # "i":I
    :cond_32
    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v39

    goto/16 :goto_c

    .line 978
    .local v19, "rtype":Lgnu/bytecode/Type;
    :cond_33
    const/16 v39, 0x0

    goto/16 :goto_d

    .line 1001
    .local v20, "extraArg":I
    .local v21, "ctxArg":I
    .local v22, "nameBaseLength":I
    .restart local v23    # "i":I
    .local v24, "plainArgs":I
    .local v25, "numArgs":I
    .restart local v26    # "atypes":[Lgnu/bytecode/Type;
    .restart local v27    # "var":Lgnu/expr/Declaration;
    .restart local v28    # "itype":I
    :cond_34
    move/from16 v39, v21

    if-eqz v39, :cond_35

    .line 1002
    move-object/from16 v39, v26

    move-object/from16 v40, v26

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    add-int/lit8 v40, v40, -0x1

    sget-object v41, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v41, v39, v40

    .line 1003
    :cond_35
    move/from16 v39, v24

    move/from16 v40, v25

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_38

    .line 1005
    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v39

    move-object/from16 v28, v39

    .line 1006
    .local v28, "lastType":Lgnu/bytecode/Type;
    move-object/from16 v39, v28

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v29, v39

    .line 1007
    .local v29, "lastTypeName":Ljava/lang/String;
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v39

    const/high16 v40, 0x310000    # 4.49994E-39f

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_3b

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v39, v0

    if-eqz v39, :cond_3b

    .line 1009
    move/from16 v39, v17

    const/16 v40, 0x80

    move/from16 v0, v39

    or-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    move/from16 v17, v39

    .line 1012
    :goto_18
    move/from16 v39, v9

    if-gtz v39, :cond_36

    move/from16 v39, v11

    move/from16 v40, v10

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_36

    const-string/jumbo v39, "gnu.lists.LList"

    move-object/from16 v40, v29

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_37

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v39, v0

    if-nez v39, :cond_37

    .line 1021
    :cond_36
    sget-object v39, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    move-object/from16 v28, v39

    .line 1022
    move-object/from16 v39, v3

    new-instance v40, Lgnu/bytecode/Variable;

    move-object/from16 v44, v40

    move-object/from16 v40, v44

    move-object/from16 v41, v44

    const-string/jumbo v42, "argsArray"

    sget-object v43, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-direct/range {v41 .. v43}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1024
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1026
    :cond_37
    move-object/from16 v39, v3

    move-object/from16 v40, v27

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    .line 1027
    move-object/from16 v39, v26

    move-object/from16 v40, v26

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v41, v18

    if-eqz v41, :cond_3c

    const/16 v41, 0x2

    :goto_19
    sub-int v40, v40, v41

    move-object/from16 v41, v28

    aput-object v41, v39, v40

    .line 1029
    .end local v28    # "lastType":Lgnu/bytecode/Type;
    .end local v29    # "lastTypeName":Ljava/lang/String;
    :cond_38
    move/from16 v39, v18

    if-eqz v39, :cond_39

    .line 1030
    move-object/from16 v39, v16

    const-string/jumbo v40, "$X"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 1032
    :cond_39
    move-object/from16 v39, v8

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v39, v0

    if-nez v39, :cond_3a

    move-object/from16 v39, v8

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v39, v0

    if-eqz v39, :cond_3d

    move-object/from16 v39, v8

    check-cast v39, Lgnu/expr/ModuleExp;

    const/high16 v40, 0x20000

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v39

    if-eqz v39, :cond_3d

    :cond_3a
    const/16 v39, 0x1

    :goto_1a
    move/from16 v28, v39

    .line 1037
    .local v28, "classSpecified":Z
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v7, v39

    .line 1044
    const/16 v39, 0x0

    move/from16 v29, v39

    .line 1045
    .local v29, "renameCount":I
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move/from16 v30, v39

    .line 1049
    .local v30, "len":I
    :goto_1b
    move-object/from16 v39, v4

    move-object/from16 v31, v39

    .local v31, "t":Lgnu/bytecode/ClassType;
    :goto_1c
    move-object/from16 v39, v31

    if-eqz v39, :cond_3f

    .line 1051
    move-object/from16 v39, v31

    move-object/from16 v40, v7

    move-object/from16 v41, v26

    invoke-virtual/range {v39 .. v41}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v39

    if-eqz v39, :cond_3e

    .line 1053
    move-object/from16 v39, v16

    move/from16 v40, v30

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1054
    move-object/from16 v39, v16

    const/16 v40, 0x24

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 1055
    move-object/from16 v39, v16

    add-int/lit8 v29, v29, 0x1

    move/from16 v40, v29

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    .line 1056
    move-object/from16 v39, v16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v7, v39

    .line 1057
    goto :goto_1b

    .line 1011
    .end local v30    # "len":I
    .end local v31    # "t":Lgnu/bytecode/ClassType;
    .local v28, "lastType":Lgnu/bytecode/Type;
    .local v29, "lastTypeName":Ljava/lang/String;
    :cond_3b
    move-object/from16 v39, v16

    const-string/jumbo v40, "$V"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    goto/16 :goto_18

    .line 1027
    :cond_3c
    const/16 v41, 0x1

    goto/16 :goto_19

    .line 1032
    .end local v28    # "lastType":Lgnu/bytecode/Type;
    .end local v29    # "lastTypeName":Ljava/lang/String;
    :cond_3d
    const/16 v39, 0x0

    goto :goto_1a

    .line 1059
    .local v28, "classSpecified":Z
    .local v29, "renameCount":I
    .restart local v30    # "len":I
    .restart local v31    # "t":Lgnu/bytecode/ClassType;
    :cond_3e
    move/from16 v39, v28

    if-eqz v39, :cond_43

    .line 1061
    .line 1063
    .line 1066
    :cond_3f
    move-object/from16 v39, v4

    move-object/from16 v40, v7

    move-object/from16 v41, v26

    move-object/from16 v42, v19

    move/from16 v43, v17

    invoke-virtual/range {v39 .. v43}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v39

    move-object/from16 v29, v39

    .line 1067
    .local v29, "method":Lgnu/bytecode/Method;
    move-object/from16 v39, v13

    move/from16 v40, v23

    move-object/from16 v41, v29

    aput-object v41, v39, v40

    .line 1069
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    if-eqz v39, :cond_4a

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    if-lez v39, :cond_4a

    .line 1071
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v30, v39

    .line 1072
    .local v30, "n":I
    move/from16 v39, v30

    move/from16 v0, v39

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    move-object/from16 v39, v0

    move-object/from16 v31, v39

    .line 1073
    .local v31, "exceptions":[Lgnu/bytecode/ClassType;
    const/16 v39, 0x0

    move/from16 v32, v39

    .local v32, "j":I
    :goto_1d
    move/from16 v39, v32

    move/from16 v40, v30

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_49

    .line 1075
    const/16 v39, 0x0

    move-object/from16 v33, v39

    .line 1076
    .local v33, "exception":Lgnu/bytecode/ClassType;
    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move/from16 v40, v32

    aget-object v39, v39, v40

    move-object/from16 v34, v39

    .line 1077
    .local v34, "throwsExpr":Lgnu/expr/Expression;
    const/16 v39, 0x0

    move-object/from16 v35, v39

    .line 1078
    .local v35, "msg":Ljava/lang/String;
    move-object/from16 v39, v34

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v39, v0

    if-eqz v39, :cond_46

    .line 1080
    move-object/from16 v39, v34

    check-cast v39, Lgnu/expr/ReferenceExp;

    move-object/from16 v36, v39

    .line 1081
    .local v36, "throwsRef":Lgnu/expr/ReferenceExp;
    move-object/from16 v39, v36

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v39

    move-object/from16 v37, v39

    .line 1082
    .local v37, "decl":Lgnu/expr/Declaration;
    move-object/from16 v39, v37

    if-eqz v39, :cond_45

    .line 1084
    move-object/from16 v39, v37

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v39

    move-object/from16 v38, v39

    .line 1085
    .local v38, "declValue":Lgnu/expr/Expression;
    move-object/from16 v39, v38

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v39, v0

    if-eqz v39, :cond_44

    .line 1086
    move-object/from16 v39, v38

    check-cast v39, Lgnu/expr/ClassExp;

    move-object/from16 v40, v5

    invoke-virtual/range {v39 .. v40}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v39

    move-object/from16 v33, v39

    .line 1091
    .line 1094
    .line 1106
    .end local v36    # "throwsRef":Lgnu/expr/ReferenceExp;
    .end local v37    # "decl":Lgnu/expr/Declaration;
    .end local v38    # "declValue":Lgnu/expr/Expression;
    :cond_40
    :goto_1e
    move-object/from16 v39, v33

    if-nez v39, :cond_41

    move-object/from16 v39, v35

    if-nez v39, :cond_41

    .line 1107
    const-string/jumbo v39, "invalid throws specification"

    move-object/from16 v35, v39

    .line 1108
    :cond_41
    move-object/from16 v39, v35

    if-eqz v39, :cond_42

    .line 1110
    move-object/from16 v39, v5

    const/16 v40, 0x65

    move-object/from16 v41, v35

    move-object/from16 v42, v34

    invoke-virtual/range {v39 .. v42}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 1111
    sget-object v39, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v39

    .line 1113
    :cond_42
    move-object/from16 v39, v31

    move/from16 v40, v32

    move-object/from16 v41, v33

    aput-object v41, v39, v40

    .line 1073
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1d

    .line 1049
    .end local v32    # "j":I
    .end local v33    # "exception":Lgnu/bytecode/ClassType;
    .end local v34    # "throwsExpr":Lgnu/expr/Expression;
    .end local v35    # "msg":Ljava/lang/String;
    .local v29, "renameCount":I
    .local v30, "len":I
    .local v31, "t":Lgnu/bytecode/ClassType;
    :cond_43
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v39

    move-object/from16 v31, v39

    goto/16 :goto_1c

    .line 1089
    .local v29, "method":Lgnu/bytecode/Method;
    .local v30, "n":I
    .local v31, "exceptions":[Lgnu/bytecode/ClassType;
    .restart local v32    # "j":I
    .restart local v33    # "exception":Lgnu/bytecode/ClassType;
    .restart local v34    # "throwsExpr":Lgnu/expr/Expression;
    .restart local v35    # "msg":Ljava/lang/String;
    .restart local v36    # "throwsRef":Lgnu/expr/ReferenceExp;
    .restart local v37    # "decl":Lgnu/expr/Declaration;
    .restart local v38    # "declValue":Lgnu/expr/Expression;
    :cond_44
    new-instance v39, Ljava/lang/StringBuilder;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "throws specification "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v40, v37

    invoke-virtual/range {v40 .. v40}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " has non-class lexical binding"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v35, v39

    goto :goto_1e

    .line 1093
    .end local v38    # "declValue":Lgnu/expr/Expression;
    :cond_45
    new-instance v39, Ljava/lang/StringBuilder;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "unknown class "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v40, v36

    invoke-virtual/range {v40 .. v40}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v35, v39

    goto/16 :goto_1e

    .line 1095
    .end local v36    # "throwsRef":Lgnu/expr/ReferenceExp;
    .end local v37    # "decl":Lgnu/expr/Declaration;
    :cond_46
    move-object/from16 v39, v34

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v39, v0

    if-eqz v39, :cond_40

    .line 1097
    move-object/from16 v39, v34

    check-cast v39, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v36, v39

    .line 1098
    .local v36, "value":Ljava/lang/Object;
    move-object/from16 v39, v36

    move-object/from16 v0, v39

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v39, v0

    if-eqz v39, :cond_47

    .line 1099
    move-object/from16 v39, v36

    check-cast v39, Ljava/lang/Class;

    invoke-static/range {v39 .. v39}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v39

    move-object/from16 v36, v39

    .line 1100
    .end local v36    # "value":Ljava/lang/Object;
    :cond_47
    move-object/from16 v39, v36

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v39, v0

    if-eqz v39, :cond_48

    .line 1101
    move-object/from16 v39, v36

    check-cast v39, Lgnu/bytecode/ClassType;

    move-object/from16 v33, v39

    .line 1102
    :cond_48
    move-object/from16 v39, v33

    if-eqz v39, :cond_40

    move-object/from16 v39, v33

    sget-object v40, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v39 .. v40}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v39

    if-nez v39, :cond_40

    .line 1104
    new-instance v39, Ljava/lang/StringBuilder;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v33

    invoke-virtual/range {v40 .. v40}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " does not extend Throwable"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v35, v39

    goto/16 :goto_1e

    .line 1115
    .end local v33    # "exception":Lgnu/bytecode/ClassType;
    .end local v34    # "throwsExpr":Lgnu/expr/Expression;
    .end local v35    # "msg":Ljava/lang/String;
    :cond_49
    new-instance v39, Lgnu/bytecode/ExceptionsAttr;

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    move-object/from16 v41, v29

    invoke-direct/range {v40 .. v41}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    move-object/from16 v32, v39

    .line 1116
    .local v32, "attr":Lgnu/bytecode/ExceptionsAttr;
    move-object/from16 v39, v32

    move-object/from16 v40, v31

    invoke-virtual/range {v39 .. v40}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    .line 986
    .end local v30    # "n":I
    .end local v31    # "exceptions":[Lgnu/bytecode/ClassType;
    .end local v32    # "attr":Lgnu/bytecode/ExceptionsAttr;
    :cond_4a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_e

    .line 1119
    .end local v24    # "plainArgs":I
    .end local v25    # "numArgs":I
    .end local v26    # "atypes":[Lgnu/bytecode/Type;
    .end local v27    # "var":Lgnu/expr/Declaration;
    .end local v28    # "classSpecified":Z
    .end local v29    # "method":Lgnu/bytecode/Method;
    :cond_4b
    return-void
.end method

.method addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 9

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "closureEnvType":Lgnu/bytecode/ObjectType;
    move-object v5, v0

    move-object v3, v5

    .line 790
    .local v3, "sc":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    instance-of v5, v5, Lgnu/expr/ClassExp;

    if-nez v5, :cond_0

    .line 791
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v3, v5

    goto :goto_0

    .line 795
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 796
    move-object v5, v3

    check-cast v5, Lgnu/expr/ClassExp;

    iget-object v5, v5, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v4, v5

    .line 799
    .local v4, "ctype":Lgnu/bytecode/ClassType;
    :goto_1
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 800
    return-void

    .line 798
    .end local v4    # "ctype":Lgnu/bytecode/ClassType;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "ctype":Lgnu/bytecode/ClassType;
    goto :goto_1
.end method

.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 14

    .prologue
    .line 1124
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v7

    move-object v2, v7

    .line 1126
    .local v2, "main":Lgnu/bytecode/Method;
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1127
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 1129
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 1132
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v7, :cond_1

    .line 1134
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 1136
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-nez v7, :cond_3

    move-object v7, v3

    if-nez v7, :cond_2

    .line 1142
    :goto_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v10, "$ctx"

    invoke-virtual {v7, v8, v9, v10}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v4, v7

    .line 1146
    .local v4, "var":Lgnu/bytecode/Variable;
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1148
    .end local v4    # "var":Lgnu/bytecode/Variable;
    :cond_2
    move-object v7, v3

    if-nez v7, :cond_5

    .line 1149
    .line 1180
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v7

    .line 1182
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 1184
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1185
    return-void

    .line 1136
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v7, :cond_4

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_4
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    if-ne v7, v8, :cond_2

    goto :goto_1

    .line 1150
    :cond_5
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v4, v7

    .line 1152
    .restart local v4    # "var":Lgnu/bytecode/Variable;
    move-object v7, v4

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1154
    .line 1177
    :cond_6
    :goto_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 1178
    goto/16 :goto_0

    .line 1155
    :cond_7
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1159
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 1169
    :cond_8
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1171
    .local v5, "vname":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    .line 1172
    .local v6, "vtype":Lgnu/bytecode/Type;
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v8

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    move-object v9, v13

    iput-object v9, v8, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v4, v7

    .line 1174
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_2
.end method

.method allocChildMethods(Lgnu/expr/Compilation;)V
    .locals 12

    .prologue
    .line 1206
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v2, v6

    .local v2, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_5

    .line 1209
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v6, :cond_0

    .line 1212
    move-object v6, v2

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 1214
    :cond_0
    move-object v6, v2

    instance-of v6, v6, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_2

    .line 1216
    move-object v6, v2

    check-cast v6, Lgnu/expr/ClassExp;

    move-object v3, v6

    .line 1217
    .local v3, "cl":Lgnu/expr/ClassExp;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1220
    move-object v6, v0

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_1

    move-object v6, v0

    instance-of v6, v6, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_3

    .line 1221
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v4, v6

    .line 1229
    .local v4, "parentFrameType":Lgnu/bytecode/ClassType;
    :goto_1
    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    iget-object v8, v8, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassType;->setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;

    move-result-object v8

    move-object v10, v7

    move-object v11, v8

    move-object v7, v11

    move-object v8, v10

    move-object v9, v11

    iput-object v9, v8, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    iput-object v7, v6, Lgnu/expr/ClassExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1207
    .end local v3    # "cl":Lgnu/expr/ClassExp;
    .end local v4    # "parentFrameType":Lgnu/bytecode/ClassType;
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v2, v6

    goto :goto_0

    .line 1224
    .restart local v3    # "cl":Lgnu/expr/ClassExp;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    :goto_2
    move-object v5, v6

    .line 1227
    .local v5, "parentFrame":Lgnu/bytecode/Variable;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v4, v6

    .restart local v4    # "parentFrameType":Lgnu/bytecode/ClassType;
    goto :goto_1

    .line 1224
    .end local v4    # "parentFrameType":Lgnu/bytecode/ClassType;
    .end local v5    # "parentFrame":Lgnu/bytecode/Variable;
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_2

    .line 1234
    .end local v3    # "cl":Lgnu/expr/ClassExp;
    :cond_5
    return-void
.end method

.method allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 17

    .prologue
    .line 573
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v2, p1

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_0

    .line 574
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v1, v11

    .line 619
    .end local v1    # "this":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v1

    .line 575
    .restart local v1    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v11

    move v3, v11

    .line 576
    .local v3, "needsClosure":Z
    move v11, v3

    if-eqz v11, :cond_8

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v11

    :goto_1
    move-object v4, v11

    .line 578
    .local v4, "frameType":Lgnu/bytecode/ClassType;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 579
    .local v5, "name":Ljava/lang/String;
    move-object v11, v5

    if-nez v11, :cond_9

    const-string/jumbo v11, "lambda"

    :goto_2
    move-object v6, v11

    .line 581
    .local v6, "fname":Ljava/lang/String;
    const/16 v11, 0x10

    move v7, v11

    .line 582
    .local v7, "fflags":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_b

    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v11, v11, Lgnu/expr/ModuleExp;

    if-eqz v11, :cond_b

    .line 584
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v11

    move v8, v11

    .line 585
    .local v8, "external_access":Z
    move v11, v8

    if-eqz v11, :cond_1

    .line 586
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "$Prvt$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 587
    :cond_1
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v12, 0x800

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 589
    move v11, v7

    const/16 v12, 0x8

    or-int/lit8 v11, v11, 0x8

    move v7, v11

    .line 593
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v11, Lgnu/expr/ModuleExp;

    invoke-virtual {v11}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v11

    if-nez v11, :cond_2

    .line 594
    move v11, v7

    const/16 v12, -0x11

    and-int/lit8 v11, v11, -0x11

    move v7, v11

    .line 599
    :cond_2
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v8

    if-nez v11, :cond_3

    move-object v11, v2

    iget-boolean v11, v11, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v11, :cond_4

    .line 600
    :cond_3
    move v11, v7

    const/4 v12, 0x1

    or-int/lit8 v11, v11, 0x1

    move v7, v11

    .line 601
    :cond_4
    move-object v11, v1

    iget v11, v11, Lgnu/expr/LambdaExp;->flags:I

    const/16 v12, 0x800

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_6

    .line 603
    move-object v11, v6

    move-object v9, v11

    .line 604
    .local v9, "fname0":Ljava/lang/String;
    move-object v11, v1

    iget v11, v11, Lgnu/expr/LambdaExp;->min_args:I

    move-object v12, v1

    iget v12, v12, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v11, v12, :cond_a

    move-object v11, v1

    iget v11, v11, Lgnu/expr/LambdaExp;->min_args:I

    :goto_3
    move v10, v11

    .line 605
    .local v10, "suffix":I
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 606
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v11

    if-nez v11, :cond_5

    .line 608
    .line 615
    .end local v8    # "external_access":Z
    .end local v9    # "fname0":Ljava/lang/String;
    .end local v10    # "suffix":I
    :cond_6
    :goto_4
    sget-object v11, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object v8, v11

    .line 616
    .local v8, "rtype":Lgnu/bytecode/Type;
    move-object v11, v4

    move-object v12, v6

    move-object v13, v8

    move v14, v7

    invoke-virtual {v11, v12, v13, v14}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v11

    move-object v9, v11

    .line 617
    .local v9, "field":Lgnu/bytecode/Field;
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_7

    .line 618
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object v12, v9

    iput-object v12, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 619
    :cond_7
    move-object v11, v9

    move-object v1, v11

    goto/16 :goto_0

    .line 576
    .end local v4    # "frameType":Lgnu/bytecode/ClassType;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "fflags":I
    .end local v8    # "rtype":Lgnu/bytecode/Type;
    .end local v9    # "field":Lgnu/bytecode/Field;
    :cond_8
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1

    .line 579
    .restart local v4    # "frameType":Lgnu/bytecode/ClassType;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_9
    move-object v11, v5

    invoke-static {v11}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 604
    .restart local v6    # "fname":Ljava/lang/String;
    .restart local v7    # "fflags":I
    .local v8, "external_access":Z
    .local v9, "fname0":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x1

    goto :goto_3

    .line 611
    .end local v8    # "external_access":Z
    .end local v9    # "fname0":Ljava/lang/String;
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "$Fn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    iget v13, v13, Lgnu/expr/Compilation;->localFieldIndex:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v15, v12

    move/from16 v16, v13

    move/from16 v12, v16

    move-object v13, v15

    move/from16 v14, v16

    iput v14, v13, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 612
    move v11, v3

    if-nez v11, :cond_6

    .line 613
    move v11, v7

    const/16 v12, 0x8

    or-int/lit8 v11, v11, 0x8

    move v7, v11

    goto :goto_4
.end method

.method public allocFrame(Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 1238
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_1

    .line 1241
    move-object v3, v0

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/expr/ClassExp;

    if-eqz v3, :cond_2

    .line 1242
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v2, v3

    .line 1249
    .local v2, "frameType":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1251
    .end local v2    # "frameType":Lgnu/bytecode/ClassType;
    :cond_1
    return-void

    .line 1245
    :cond_2
    new-instance v3, Lgnu/bytecode/ClassType;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const-string/jumbo v6, "frame"

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1246
    .restart local v2    # "frameType":Lgnu/bytecode/ClassType;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1247
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_0
.end method

.method allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 1190
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "outer":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1191
    const/4 v5, 0x0

    move-object v3, v5

    .line 1201
    .local v3, "closureEnvType":Lgnu/bytecode/ObjectType;
    :goto_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 1202
    return-void

    .line 1192
    .end local v3    # "closureEnvType":Lgnu/bytecode/ObjectType;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/expr/ClassExp;

    if-nez v5, :cond_1

    move-object v5, v1

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_2

    .line 1193
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v3, v5

    .restart local v3    # "closureEnvType":Lgnu/bytecode/ObjectType;
    goto :goto_0

    .line 1196
    .end local v3    # "closureEnvType":Lgnu/bytecode/ObjectType;
    :cond_2
    move-object v5, v1

    move-object v4, v5

    .line 1197
    .local v4, "owner":Lgnu/expr/LambdaExp;
    :goto_1
    move-object v5, v4

    iget-object v5, v5, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v5, :cond_3

    .line 1198
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 1199
    :cond_3
    move-object v5, v4

    iget-object v5, v5, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object v3, v5

    .restart local v3    # "closureEnvType":Lgnu/bytecode/ObjectType;
    goto :goto_0
.end method

.method allocParameters(Lgnu/expr/Compilation;)V
    .locals 9

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v2, v6

    .line 1257
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    const/4 v6, 0x0

    move v3, v6

    .line 1258
    .local v3, "i":I
    const/4 v6, 0x0

    move v4, v6

    .line 1260
    .local v4, "j":I
    move-object v6, v2

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 1261
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v6

    move v5, v6

    .line 1262
    .local v5, "line":I
    move v6, v5

    if-lez v6, :cond_0

    .line 1263
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v7

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1265
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_1

    .line 1266
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 1267
    :cond_1
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1711
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 1712
    move-object v2, v1

    new-instance v3, Lgnu/expr/Closure;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/Closure;-><init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 1713
    return-void
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/ClassExp;

    if-nez v2, :cond_0

    .line 48
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Variable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "heapFrame"

    invoke-direct {v4, v5}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 50
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 51
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    iput-object v3, v2, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    .line 54
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    .line 57
    :cond_1
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/IgnoreTarget;

    if-eqz v9, :cond_0

    .line 666
    .line 761
    :goto_0
    return-void

    .line 668
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v4, v9

    .line 733
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v9

    move-object v5, v9

    .line 734
    .local v5, "outer":Lgnu/expr/LambdaExp;
    sget-object v9, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object v3, v9

    .line 735
    .local v3, "rtype":Lgnu/bytecode/Type;
    move-object v9, v0

    iget v9, v9, Lgnu/expr/LambdaExp;->flags:I

    const/16 v10, 0x100

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_1

    move-object v9, v1

    iget-boolean v9, v9, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v9, :cond_3

    move-object v9, v5

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_3

    .line 738
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v9, :cond_2

    .line 739
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 740
    :cond_2
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 741
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 742
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 760
    :goto_1
    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 761
    goto :goto_0

    .line 746
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v9

    move-object v6, v9

    .line 747
    .local v6, "field":Lgnu/bytecode/Field;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 748
    move-object v9, v4

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 751
    :cond_4
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v7, v9

    .line 752
    .local v7, "parent":Lgnu/expr/LambdaExp;
    move-object v9, v7

    iget-object v9, v9, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v9, :cond_5

    move-object v9, v7

    iget-object v9, v9, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    :goto_2
    move-object v8, v9

    .line 755
    .local v8, "frame":Lgnu/bytecode/Variable;
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 756
    move-object v9, v4

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 752
    .end local v8    # "frame":Lgnu/bytecode/Variable;
    :cond_5
    move-object v9, v7

    iget-object v9, v9, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_2
.end method

.method compileAsMethod(Lgnu/expr/Compilation;)V
    .locals 29

    .prologue
    .line 1495
    move-object/from16 v4, p0

    .local v4, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v5, p1

    .local v5, "comp":Lgnu/expr/Compilation;
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1496
    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    move-object/from16 v23, v4

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v24, v0

    const/16 v25, 0x80

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lgnu/expr/LambdaExp;->flags:I

    .line 1498
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 1499
    goto :goto_0

    .line 1500
    :cond_2
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    move-object/from16 v6, v23

    .line 1501
    .local v6, "save_method":Lgnu/bytecode/Method;
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    move-object/from16 v7, v23

    .line 1502
    .local v7, "save_lambda":Lgnu/expr/LambdaExp;
    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1504
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v8, v23

    .line 1505
    .local v8, "method":Lgnu/bytecode/Method;
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v23

    move/from16 v9, v23

    .line 1506
    .local v9, "isStatic":Z
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v10, v23

    .line 1507
    .local v10, "numStubs":I
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->restArgType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1509
    .local v11, "restArgType":Lgnu/bytecode/Type;
    const/16 v23, 0x0

    move-object/from16 v12, v23

    .line 1510
    .local v12, "saveDeclFlags":[J
    move/from16 v23, v10

    if-lez v23, :cond_3

    .line 1512
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v23, v0

    move-object/from16 v12, v23

    .line 1513
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 1514
    .local v13, "k":I
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v14, v23

    .line 1515
    .local v14, "decl":Lgnu/expr/Declaration;
    :goto_1
    move/from16 v23, v13

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    move/from16 v25, v10

    add-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 1516
    move-object/from16 v23, v12

    move/from16 v24, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v25, v14

    move-object/from16 v0, v25

    iget-wide v0, v0, Lgnu/expr/Declaration;->flags:J

    move-wide/from16 v25, v0

    aput-wide v25, v23, v24

    .line 1515
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v14, v23

    goto :goto_1

    .line 1519
    .end local v13    # "k":I
    .end local v14    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    const/16 v23, 0x1

    :goto_2
    move/from16 v13, v23

    .line 1521
    .local v13, "ctxArg":Z
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "i":I
    :goto_3
    move/from16 v23, v14

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    .line 1523
    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    move/from16 v25, v14

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1524
    move/from16 v23, v14

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1526
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v23

    move-object/from16 v15, v23

    .line 1527
    .local v15, "code":Lgnu/bytecode/CodeAttr;
    move/from16 v23, v14

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v16, v23

    .line 1529
    .local v16, "toCall":I
    :goto_4
    move/from16 v23, v16

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move/from16 v24, v16

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1530
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1519
    .end local v13    # "ctxArg":Z
    .end local v14    # "i":I
    .end local v15    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "toCall":I
    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    .line 1531
    .restart local v13    # "ctxArg":Z
    .restart local v14    # "i":I
    .restart local v15    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v16    # "toCall":I
    :cond_5
    move/from16 v23, v16

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v23, v11

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    :goto_5
    move/from16 v17, v23

    .line 1533
    .local v17, "varArgs":Z
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v23, v0

    move-object/from16 v19, v23

    .line 1534
    .local v19, "callContextSave":Lgnu/bytecode/Variable;
    move-object/from16 v23, v15

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v23

    move-object/from16 v20, v23

    .line 1535
    .local v20, "var":Lgnu/bytecode/Variable;
    move/from16 v23, v9

    if-nez v23, :cond_7

    .line 1537
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1538
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1539
    move-object/from16 v23, v4

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1540
    :cond_6
    move-object/from16 v23, v15

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v23

    move-object/from16 v20, v23

    .line 1542
    :cond_7
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v18, v23

    .line 1543
    .local v18, "decl":Lgnu/expr/Declaration;
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "j":I
    :goto_6
    move/from16 v23, v21

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    move/from16 v25, v14

    add-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 1545
    move-object/from16 v23, v18

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v0, v24

    iget-wide v0, v0, Lgnu/expr/Declaration;->flags:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x40

    or-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lgnu/expr/Declaration;->flags:J

    .line 1546
    move-object/from16 v23, v18

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1547
    move-object/from16 v23, v15

    move-object/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1548
    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v23

    move-object/from16 v20, v23

    .line 1543
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v18, v23

    goto :goto_6

    .line 1531
    .end local v17    # "varArgs":Z
    .end local v18    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v20    # "var":Lgnu/bytecode/Variable;
    .end local v21    # "j":I
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 1550
    .restart local v17    # "varArgs":Z
    .restart local v18    # "decl":Lgnu/expr/Declaration;
    .restart local v19    # "callContextSave":Lgnu/bytecode/Variable;
    .restart local v20    # "var":Lgnu/bytecode/Variable;
    .restart local v21    # "j":I
    :cond_9
    move-object/from16 v23, v5

    move/from16 v24, v13

    if-eqz v24, :cond_a

    move-object/from16 v24, v20

    :goto_7
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1551
    move/from16 v23, v14

    move/from16 v21, v23

    :goto_8
    move/from16 v23, v21

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 1553
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v23

    move-object/from16 v22, v23

    .line 1554
    .local v22, "paramTarget":Lgnu/expr/Target;
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move/from16 v24, v21

    aget-object v23, v23, v24

    move-object/from16 v24, v5

    move-object/from16 v25, v22

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1551
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v18, v23

    goto :goto_8

    .line 1550
    .end local v22    # "paramTarget":Lgnu/expr/Target;
    :cond_a
    const/16 v24, 0x0

    goto :goto_7

    .line 1556
    :cond_b
    move/from16 v23, v17

    if-eqz v23, :cond_c

    .line 1559
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v22, v23

    .line 1560
    .local v22, "lastTypeName":Ljava/lang/String;
    const-string/jumbo v23, "gnu.lists.LList"

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1561
    new-instance v23, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v21, v23

    .line 1566
    .local v21, "arg":Lgnu/expr/Expression;
    :goto_9
    move-object/from16 v23, v21

    move-object/from16 v24, v5

    move-object/from16 v25, v11

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1568
    .end local v21    # "arg":Lgnu/expr/Expression;
    .end local v22    # "lastTypeName":Ljava/lang/String;
    :cond_c
    move/from16 v23, v13

    if-eqz v23, :cond_d

    .line 1569
    move-object/from16 v23, v15

    move-object/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1570
    :cond_d
    move/from16 v23, v9

    if-eqz v23, :cond_10

    .line 1571
    move-object/from16 v23, v15

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    move/from16 v25, v16

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1574
    :goto_a
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1575
    move-object/from16 v23, v4

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1576
    move-object/from16 v23, v5

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1577
    .line 1521
    .end local v15    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "toCall":I
    .end local v17    # "varArgs":Z
    .end local v18    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v20    # "var":Lgnu/bytecode/Variable;
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1562
    .restart local v15    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v16    # "toCall":I
    .restart local v17    # "varArgs":Z
    .restart local v18    # "decl":Lgnu/expr/Declaration;
    .restart local v19    # "callContextSave":Lgnu/bytecode/Variable;
    .restart local v20    # "var":Lgnu/bytecode/Variable;
    .local v21, "j":I
    .restart local v22    # "lastTypeName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v23, "java.lang.Object[]"

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1563
    new-instance v23, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    sget-object v25, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v21, v23

    .local v21, "arg":Lgnu/expr/Expression;
    goto :goto_9

    .line 1565
    .local v21, "j":I
    :cond_f
    new-instance v23, Ljava/lang/Error;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unimplemented #!rest type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1573
    .end local v21    # "j":I
    .end local v22    # "lastTypeName":Ljava/lang/String;
    :cond_10
    move-object/from16 v23, v15

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    move/from16 v25, v16

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1580
    .end local v15    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "toCall":I
    .end local v17    # "varArgs":Z
    .end local v18    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v20    # "var":Lgnu/bytecode/Variable;
    :cond_11
    move-object/from16 v23, v12

    if-eqz v23, :cond_12

    .line 1582
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 1583
    .local v15, "k":I
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v16, v23

    .line 1584
    .local v16, "decl":Lgnu/expr/Declaration;
    :goto_c
    move/from16 v23, v15

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    move/from16 v25, v10

    add-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 1586
    move-object/from16 v23, v16

    move-object/from16 v24, v12

    move/from16 v25, v15

    add-int/lit8 v15, v15, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lgnu/expr/Declaration;->flags:J

    .line 1587
    move-object/from16 v23, v16

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1584
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v16, v23

    goto :goto_c

    .line 1590
    .end local v15    # "k":I
    .end local v16    # "decl":Lgnu/expr/Declaration;
    :cond_12
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->initCode()V

    .line 1591
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1592
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1593
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1595
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 1596
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 1597
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    goto/16 :goto_b

    .line 1601
    :cond_13
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1602
    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1603
    goto/16 :goto_0
.end method

.method public compileBody(Lgnu/expr/Compilation;)V
    .locals 9

    .prologue
    .line 1608
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v3, v5

    .line 1609
    .local v3, "callContextSave":Lgnu/bytecode/Variable;
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1610
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 1612
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    const-string/jumbo v6, "$ctx"

    invoke-virtual {v5, v6}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v5

    move-object v4, v5

    .line 1613
    .local v4, "var":Lgnu/bytecode/Variable;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v5, v6, :cond_0

    .line 1614
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1615
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lgnu/expr/ConsumerTarget;->makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;

    move-result-object v5

    move-object v2, v5

    .line 1619
    .end local v4    # "var":Lgnu/bytecode/Variable;
    .local v2, "target":Lgnu/expr/Target;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v8}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v8

    if-lez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    :goto_1
    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 1621
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1622
    return-void

    .line 1618
    .end local v2    # "target":Lgnu/expr/Target;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "target":Lgnu/expr/Target;
    goto :goto_0

    .line 1619
    :cond_2
    move-object v8, v0

    goto :goto_1
.end method

.method public compileEnd(Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v2, v4

    .line 539
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->reachableHere()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 545
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 546
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v4

    .line 549
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v3, v4

    .local v3, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 551
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-nez v4, :cond_3

    .line 553
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 555
    :cond_3
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v3, v4

    goto :goto_0

    .line 558
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_5

    .line 559
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 560
    :cond_5
    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 9

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v3, :cond_0

    .line 650
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 651
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v3

    move-object v2, v3

    .line 652
    .local v2, "field":Lgnu/bytecode/Field;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 660
    :goto_0
    new-instance v3, Lgnu/expr/ProcInitializer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/ProcInitializer;-><init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    iget-object v3, v3, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .line 656
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 657
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public declareClosureEnv()Lgnu/bytecode/Variable;
    .locals 13

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-nez v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 430
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v1, v7

    .line 431
    .local v1, "parent":Lgnu/expr/LambdaExp;
    move-object v7, v1

    instance-of v7, v7, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_0

    .line 432
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v1, v7

    .line 433
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    :goto_0
    move-object v2, v7

    .line 435
    .local v2, "parentFrame":Lgnu/bytecode/Variable;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "*init*"

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 436
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v9}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 468
    .end local v1    # "parent":Lgnu/expr/LambdaExp;
    .end local v2    # "parentFrame":Lgnu/bytecode/Variable;
    :cond_1
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .line 433
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    .restart local v1    # "parent":Lgnu/expr/LambdaExp;
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 437
    .restart local v2    # "parentFrame":Lgnu/bytecode/Variable;
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v7, :cond_4

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getNeedsStaticLink()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v1

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-nez v7, :cond_4

    .line 439
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 440
    :cond_4
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v7

    if-nez v7, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v7

    if-nez v7, :cond_7

    .line 442
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v7

    move-object v3, v7

    .line 443
    .local v3, "primMethod":Lgnu/bytecode/Method;
    const-string/jumbo v7, "*init*"

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v4, v7

    .line 444
    .local v4, "isInit":Z
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v4

    if-nez v7, :cond_5

    .line 446
    move-object v7, v0

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 459
    :goto_2
    goto :goto_1

    .line 449
    :cond_5
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v5, v7

    .line 450
    .local v5, "envType":Lgnu/bytecode/Type;
    move-object v7, v0

    new-instance v8, Lgnu/bytecode/Variable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "closureEnv"

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 452
    move v7, v4

    if-eqz v7, :cond_6

    .line 453
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v6, v7

    .line 456
    .local v6, "prev":Lgnu/bytecode/Variable;
    :goto_3
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 457
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_2

    .line 455
    .end local v6    # "prev":Lgnu/bytecode/Variable;
    :cond_6
    const/4 v7, 0x0

    move-object v6, v7

    .restart local v6    # "prev":Lgnu/bytecode/Variable;
    goto :goto_3

    .line 460
    .end local v3    # "primMethod":Lgnu/bytecode/Method;
    .end local v4    # "isInit":Z
    .end local v5    # "envType":Lgnu/bytecode/Type;
    .end local v6    # "prev":Lgnu/bytecode/Variable;
    :cond_7
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 461
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto/16 :goto_1

    .line 464
    :cond_8
    move-object v7, v0

    new-instance v8, Lgnu/bytecode/Variable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "closureEnv"

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v8, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 465
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    goto/16 :goto_1
.end method

.method public declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "clas":Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v2, :cond_0

    .line 415
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Variable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "this"

    invoke-direct {v4, v5}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 416
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 419
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    if-nez v2, :cond_1

    .line 420
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 421
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v3, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 423
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method enterFunction(Lgnu/expr/Compilation;)V
    .locals 25

    .prologue
    .line 1277
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v3, p1

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v20

    move-object/from16 v4, v20

    .line 1280
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/Scope;->noteStartFunction(Lgnu/bytecode/CodeAttr;)V

    .line 1282
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1285
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1287
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 1289
    .local v5, "field":Lgnu/bytecode/Field;
    move-object/from16 v20, v5

    if-nez v20, :cond_0

    .line 1290
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 1291
    :cond_0
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1292
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1293
    .line 1300
    .end local v5    # "field":Lgnu/bytecode/Field;
    :cond_1
    :goto_0
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1302
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/ModuleExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v20

    :goto_1
    move-object/from16 v5, v20

    .line 1305
    .local v5, "frameType":Lgnu/bytecode/ClassType;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    .local v6, "decl":Lgnu/expr/Declaration;
    :goto_2
    move-object/from16 v20, v6

    if-eqz v20, :cond_5

    .line 1308
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1309
    .line 1306
    :goto_3
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    goto :goto_2

    .line 1294
    .end local v5    # "frameType":Lgnu/bytecode/ClassType;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1296
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 1297
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 1302
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    check-cast v20, Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 1310
    .restart local v5    # "frameType":Lgnu/bytecode/ClassType;
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    :cond_4
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    .line 1313
    .end local v5    # "frameType":Lgnu/bytecode/ClassType;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1315
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    check-cast v20, Lgnu/bytecode/ClassType;

    move-object/from16 v5, v20

    .line 1316
    .restart local v5    # "frameType":Lgnu/bytecode/ClassType;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1317
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    const-string/jumbo v22, "staticLink"

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 1319
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 1321
    move-object/from16 v20, v5

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 1322
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 1323
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1324
    move-object/from16 v20, v5

    move-object/from16 v21, v2

    invoke-static/range {v20 .. v21}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1325
    .local v6, "constructor":Lgnu/bytecode/Method;
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1327
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1329
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1330
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1331
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1333
    :cond_7
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1337
    .end local v5    # "frameType":Lgnu/bytecode/ClassType;
    .end local v6    # "constructor":Lgnu/bytecode/Method;
    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 1338
    .local v5, "argsArray":Lgnu/bytecode/Variable;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 1341
    const/16 v20, 0x0

    move-object/from16 v5, v20

    .line 1346
    :cond_9
    const/16 v20, 0x0

    move/from16 v6, v20

    .line 1347
    .local v6, "i":I
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 1348
    .local v7, "opt_i":I
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 1349
    .local v8, "key_i":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_4
    move/from16 v9, v20

    .line 1350
    .local v9, "key_args":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    :goto_5
    move/from16 v10, v20

    .line 1352
    .local v10, "opt_args":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1353
    .line 1491
    :goto_6
    return-void

    .line 1349
    .end local v9    # "key_args":I
    .end local v10    # "opt_args":I
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    goto :goto_4

    .line 1350
    .restart local v9    # "key_args":I
    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v21, v9

    sub-int v20, v20, v21

    goto :goto_5

    .line 1355
    .restart local v10    # "opt_args":I
    :cond_c
    const/16 v20, -0x1

    move/from16 v11, v20

    .line 1356
    .local v11, "plainArgs":I
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 1357
    .local v12, "defaultStart":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v13, v20

    .line 1358
    .local v13, "mainMethod":Lgnu/bytecode/Method;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 1360
    .local v14, "callContextSave":Lgnu/bytecode/Variable;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v20

    move-object/from16 v15, v20

    .local v15, "param":Lgnu/expr/Declaration;
    :goto_7
    move-object/from16 v20, v15

    if-eqz v20, :cond_1f

    .line 1362
    move-object/from16 v20, v3

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1365
    move-object/from16 v20, v15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v20, v5

    if-eqz v20, :cond_d

    .line 1367
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 1369
    move/from16 v20, v6

    move/from16 v11, v20

    .line 1370
    move/from16 v20, v11

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v12, v20

    .line 1378
    :cond_d
    :goto_9
    move/from16 v20, v11

    if-gez v20, :cond_e

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1381
    :cond_e
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v16, v20

    .line 1382
    .local v16, "paramType":Lgnu/bytecode/Type;
    move/from16 v20, v11

    if-ltz v20, :cond_16

    sget-object v20, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_a
    move-object/from16 v17, v20

    .line 1388
    .local v17, "stackType":Lgnu/bytecode/Type;
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v20

    if-nez v20, :cond_f

    .line 1389
    move-object/from16 v20, v15

    const/16 v21, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 1391
    :cond_f
    move/from16 v20, v11

    if-gez v20, :cond_17

    .line 1394
    move-object/from16 v20, v4

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1474
    :goto_b
    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 1475
    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v16

    invoke-static/range {v20 .. v23}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1476
    :cond_10
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1477
    move-object/from16 v20, v15

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 1478
    :cond_11
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 1480
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v20

    move-object/from16 v18, v20

    .line 1481
    .local v18, "var":Lgnu/bytecode/Variable;
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1482
    move-object/from16 v20, v18

    sget-object v21, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1483
    :cond_12
    move-object/from16 v20, v4

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1484
    .line 1488
    .end local v16    # "paramType":Lgnu/bytecode/Type;
    .end local v17    # "stackType":Lgnu/bytecode/Type;
    .end local v18    # "var":Lgnu/bytecode/Variable;
    :cond_13
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 1360
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v20

    move-object/from16 v15, v20

    goto/16 :goto_7

    .line 1362
    :cond_14
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v21

    const-string/jumbo v22, "$ctx"

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v21

    goto/16 :goto_8

    .line 1374
    :cond_15
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 1375
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_9

    .line 1382
    .restart local v16    # "paramType":Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v20, v16

    goto/16 :goto_a

    .line 1396
    .restart local v17    # "stackType":Lgnu/bytecode/Type;
    :cond_17
    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 1398
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1399
    move-object/from16 v20, v4

    move/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1400
    move-object/from16 v20, v4

    sget-object v21, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto/16 :goto_b

    .line 1402
    :cond_18
    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    .line 1404
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v11

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1405
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1406
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1407
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitIfIntLt()V

    .line 1408
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1409
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v11

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1410
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitArrayLoad()V

    .line 1411
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1412
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move/from16 v21, v12

    move/from16 v22, v7

    add-int/lit8 v7, v7, 0x1

    add-int v21, v21, v22

    aget-object v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1413
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_b

    .line 1415
    :cond_19
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v20, v0

    if-gez v20, :cond_1a

    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 1419
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v11

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1421
    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1422
    sget-object v20, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v20

    goto/16 :goto_b

    .line 1426
    :cond_1a
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1427
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v22, v11

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1428
    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v21, v0

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1429
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move/from16 v21, v12

    move/from16 v22, v7

    add-int/lit8 v7, v7, 0x1

    add-int v21, v21, v22

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 1433
    .local v18, "defaultArg":Lgnu/expr/Expression;
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 1435
    sget-object v20, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    if-nez v20, :cond_1b

    .line 1437
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v19, v20

    .line 1438
    .local v19, "argts":[Lgnu/bytecode/Type;
    move-object/from16 v20, v19

    const/16 v21, 0x0

    sget-object v22, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v22, v20, v21

    .line 1439
    move-object/from16 v20, v19

    const/16 v21, 0x1

    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v22, v20, v21

    .line 1440
    move-object/from16 v20, v19

    const/16 v21, 0x2

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v22, v20, v21

    .line 1441
    move-object/from16 v20, v19

    const/16 v21, 0x3

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v22, v20, v21

    .line 1442
    sget-object v20, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string/jumbo v21, "searchForKeyword"

    move-object/from16 v22, v19

    sget-object v23, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v24, 0x9

    invoke-virtual/range {v20 .. v24}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v20

    sput-object v20, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    .line 1447
    .end local v19    # "argts":[Lgnu/bytecode/Type;
    :cond_1b
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1448
    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_b

    .line 1452
    :cond_1c
    sget-object v20, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    if-nez v20, :cond_1d

    .line 1454
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v19, v20

    .line 1455
    .restart local v19    # "argts":[Lgnu/bytecode/Type;
    move-object/from16 v20, v19

    const/16 v21, 0x0

    sget-object v22, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v22, v20, v21

    .line 1456
    move-object/from16 v20, v19

    const/16 v21, 0x1

    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v22, v20, v21

    .line 1457
    move-object/from16 v20, v19

    const/16 v21, 0x2

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v22, v20, v21

    .line 1458
    sget-object v20, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string/jumbo v21, "searchForKeyword"

    move-object/from16 v22, v19

    sget-object v23, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v24, 0x9

    invoke-virtual/range {v20 .. v24}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v20

    sput-object v20, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    .line 1463
    .end local v19    # "argts":[Lgnu/bytecode/Type;
    :cond_1d
    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1464
    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1465
    move-object/from16 v20, v3

    sget-object v21, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1466
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 1467
    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 1468
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1469
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_b

    .line 1486
    .end local v18    # "defaultArg":Lgnu/expr/Expression;
    :cond_1e
    move-object/from16 v20, v4

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_c

    .line 1490
    .end local v16    # "paramType":Lgnu/bytecode/Type;
    .end local v17    # "stackType":Lgnu/bytecode/Type;
    :cond_1f
    move-object/from16 v20, v3

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1491
    goto/16 :goto_6
.end method

.method evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move v5, v1

    aget-object v4, v4, v5

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .line 1721
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1723
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "error evaluating default argument"

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public generateApplyMethods(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->generateMatchMethods(Lgnu/expr/LambdaExp;)V

    .line 565
    sget v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 566
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V

    goto :goto_0
.end method

.method getArg(I)Lgnu/expr/Declaration;
    .locals 7

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 528
    .local v2, "var":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    .line 529
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "internal error - getArg"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    .line 531
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .line 532
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 526
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getCallConvention()I
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :goto_0
    move v0, v1

    .line 255
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    :goto_1
    return v0

    .line 249
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 253
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    .line 255
    :cond_2
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-eqz v1, :cond_3

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getCaller()Lgnu/expr/LambdaExp;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method public final getCanCall()Z
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCanRead()Z
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_0

    .line 276
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "internal error: getCompiledClassType"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method protected final getExpClassName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1868
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1869
    .local v1, "cname":Ljava/lang/String;
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 1870
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 1871
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1872
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method public getHeapFrameType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_1

    .line 766
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    .line 768
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getImportsLexVars()Z
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInlineOnly()Z
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/16 v2, 0x2000

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getMainMethod()Lgnu/bytecode/Method;
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    move-object v1, v2

    .line 347
    .local v1, "methods":[Lgnu/bytecode/Method;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v2, v1

    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public final getMethod(I)Lgnu/bytecode/Method;
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "argCount":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/expr/LambdaExp;->max_args:I

    if-le v4, v5, :cond_1

    .line 334
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 339
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v0

    .line 335
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 336
    .local v2, "index":I
    move v4, v2

    if-gez v4, :cond_2

    .line 337
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 338
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v4, v4

    move v3, v4

    .line 339
    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_3

    move v5, v2

    :goto_1
    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    :cond_3
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public final getNeedsClosureEnv()Z
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/16 v2, 0x18

    and-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getNeedsStaticLink()Z
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOwningLambda()Lgnu/expr/LambdaExp;
    .locals 3

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object v1, v2

    .line 777
    .local v1, "exp":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    .line 778
    const/4 v2, 0x0

    move-object v0, v2

    .line 783
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    :goto_1
    return-object v0

    .line 779
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    iget-object v2, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_3

    .line 783
    :cond_2
    move-object v2, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    move-object v0, v2

    goto :goto_1

    .line 775
    :cond_3
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v1, v2

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1896
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1898
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :cond_0
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    if-ltz v4, :cond_1

    .line 1900
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 1901
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    move-object v0, v4

    .line 1904
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    .end local v3    # "i":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 1919
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    .line 1921
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v2, v1, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1923
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1924
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1926
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method getSelectorValue(Lgnu/expr/Compilation;)I
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    iget v3, v3, Lgnu/expr/LambdaExp;->selectorValue:I

    move v2, v3

    .line 311
    .local v2, "s":I
    move v3, v2

    if-nez v3, :cond_0

    .line 313
    move-object v3, v1

    iget v3, v3, Lgnu/expr/Compilation;->maxSelectorValue:I

    move v2, v3

    .line 314
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 315
    move-object v3, v0

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    iput v4, v3, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 317
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method public incomingArgs()I
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v2, v0

    iget v2, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method inlinedIn(Lgnu/expr/LambdaExp;)Z
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "outer":Lgnu/expr/LambdaExp;
    move-object v3, v0

    move-object v2, v3

    .local v2, "exp":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 398
    const/4 v3, 0x1

    move v0, v3

    .line 400
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    :goto_1
    return v0

    .line 395
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 400
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public isAbstract()Z
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isClassGenerated()Z
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isClassMethod()Z
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->flags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isHandlingTailCalls()Z
    .locals 3

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isModuleBody()Z
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0
.end method

.method public loadHeapFrame(Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v2, v6

    .line 491
    .local v2, "curLambda":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v6, v2

    move-object v7, v0

    if-eq v6, v7, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 492
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .line 494
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v3, v6

    .line 495
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v2

    if-ne v6, v7, :cond_1

    .line 497
    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 498
    .line 521
    :goto_1
    return-void

    .line 501
    :cond_1
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_3

    .line 503
    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 504
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v4, v6

    .line 511
    .local v4, "curType":Lgnu/bytecode/ClassType;
    :goto_2
    move-object v6, v2

    move-object v7, v0

    if-eq v6, v7, :cond_4

    .line 513
    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object v5, v6

    .line 514
    .local v5, "link":Lgnu/bytecode/Field;
    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v7, v4

    if-ne v6, v7, :cond_2

    .line 516
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 517
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v4, v6

    .line 519
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    move-object v2, v6

    .line 520
    goto :goto_2

    .line 508
    .end local v4    # "curType":Lgnu/bytecode/ClassType;
    .end local v5    # "link":Lgnu/bytecode/Field;
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 509
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v4, v6

    .restart local v4    # "curType":Lgnu/bytecode/ClassType;
    goto :goto_2

    .line 521
    :cond_4
    goto :goto_1
.end method

.method protected mustCompile()Z
    .locals 5

    .prologue
    .line 1690
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 1691
    const/4 v3, 0x1

    move v0, v3

    .line 1702
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    .local v1, "i":I
    .local v2, "def":Lgnu/expr/Expression;
    :goto_0
    return v0

    .line 1692
    .end local v1    # "i":I
    .end local v2    # "def":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v3, :cond_2

    .line 1694
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v3, v3

    move v1, v3

    .restart local v1    # "i":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_2

    .line 1696
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 1698
    .restart local v2    # "def":Lgnu/expr/Expression;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    .line 1699
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1700
    :cond_1
    goto :goto_1

    .line 1702
    .end local v1    # "i":I
    .end local v2    # "def":Lgnu/expr/Expression;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public outerLambda()Lgnu/expr/LambdaExp;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_0
.end method

.method public outerLambdaNotInline()Lgnu/expr/LambdaExp;
    .locals 6

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v3, v0

    move-object v1, v3

    .local v1, "exp":Lgnu/expr/ScopeExp;
    :cond_0
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    if-eqz v3, :cond_2

    .line 379
    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_0

    .line 381
    move-object v3, v1

    check-cast v3, Lgnu/expr/LambdaExp;

    move-object v2, v3

    .line 382
    .local v2, "result":Lgnu/expr/LambdaExp;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    move-object v3, v2

    move-object v0, v3

    .line 386
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    .end local v2    # "result":Lgnu/expr/LambdaExp;
    :goto_1
    return-object v0

    .line 384
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    .restart local v2    # "result":Lgnu/expr/LambdaExp;
    :cond_1
    goto :goto_0

    .line 386
    .end local v2    # "result":Lgnu/expr/LambdaExp;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 15

    .prologue
    .line 1803
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v11, v1

    const-string/jumbo v12, "(Lambda/"

    const-string/jumbo v13, ")"

    const/4 v14, 0x2

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1804
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    .line 1805
    .local v2, "sym":Ljava/lang/Object;
    move-object v11, v2

    if-eqz v11, :cond_0

    .line 1807
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1808
    move-object v11, v1

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(C)V

    .line 1810
    :cond_0
    move-object v11, v1

    move-object v12, v0

    iget v12, v12, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(I)V

    .line 1811
    move-object v11, v1

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(C)V

    .line 1812
    move-object v11, v1

    const-string/jumbo v12, "fl:"

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    move-object v11, v1

    move-object v12, v0

    iget v12, v12, Lgnu/expr/LambdaExp;->flags:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1813
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1814
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 1815
    move-object v11, v1

    const-string/jumbo v12, "("

    const/4 v13, 0x0

    const-string/jumbo v14, ")"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1816
    const/4 v11, 0x0

    move-object v3, v11

    .line 1817
    .local v3, "prevMode":Lgnu/expr/Special;
    const/4 v11, 0x0

    move v4, v11

    .line 1818
    .local v4, "i":I
    const/4 v11, 0x0

    move v5, v11

    .line 1819
    .local v5, "opt_i":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v11, :cond_8

    const/4 v11, 0x0

    :goto_0
    move v6, v11

    .line 1820
    .local v6, "key_args":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v11, :cond_9

    const/4 v11, 0x0

    :goto_1
    move v7, v11

    .line 1821
    .local v7, "opt_args":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 1822
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v11, v8

    if-eqz v11, :cond_1

    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1823
    const/4 v11, -0x1

    move v4, v11

    .line 1824
    :cond_1
    :goto_2
    move-object v11, v8

    if-eqz v11, :cond_d

    .line 1827
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v11, v12, :cond_a

    .line 1828
    const/4 v11, 0x0

    move-object v9, v11

    .line 1835
    .local v9, "mode":Lgnu/expr/Special;
    :goto_3
    move-object v11, v8

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    if-eq v11, v12, :cond_2

    .line 1836
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1837
    :cond_2
    move-object v11, v9

    move-object v12, v3

    if-eq v11, v12, :cond_3

    .line 1839
    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1840
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1842
    :cond_3
    const/4 v11, 0x0

    move-object v10, v11

    .line 1843
    .local v10, "defaultArg":Lgnu/expr/Expression;
    move-object v11, v9

    sget-object v12, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    if-eq v11, v12, :cond_4

    move-object v11, v9

    sget-object v12, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    if-ne v11, v12, :cond_5

    .line 1844
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v11, v11, v12

    move-object v10, v11

    .line 1845
    :cond_5
    move-object v11, v10

    if-eqz v11, :cond_6

    .line 1846
    move-object v11, v1

    const/16 v12, 0x28

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(C)V

    .line 1847
    :cond_6
    move-object v11, v8

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 1848
    move-object v11, v10

    if-eqz v11, :cond_7

    move-object v11, v10

    sget-object v12, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    if-eq v11, v12, :cond_7

    .line 1850
    move-object v11, v1

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(C)V

    .line 1851
    move-object v11, v10

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1852
    move-object v11, v1

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(C)V

    .line 1854
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 1855
    move-object v11, v9

    move-object v3, v11

    .line 1824
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    goto :goto_2

    .line 1819
    .end local v6    # "key_args":I
    .end local v7    # "opt_args":I
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "mode":Lgnu/expr/Special;
    .end local v10    # "defaultArg":Lgnu/expr/Expression;
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v11, v11

    goto/16 :goto_0

    .line 1820
    .restart local v6    # "key_args":I
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v11, v11

    move v12, v6

    sub-int/2addr v11, v12

    goto/16 :goto_1

    .line 1829
    .restart local v7    # "opt_args":I
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_a
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lgnu/expr/LambdaExp;->min_args:I

    move v13, v7

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_b

    .line 1830
    sget-object v11, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    move-object v9, v11

    .restart local v9    # "mode":Lgnu/expr/Special;
    goto :goto_3

    .line 1831
    .end local v9    # "mode":Lgnu/expr/Special;
    :cond_b
    move-object v11, v0

    iget v11, v11, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v11, :cond_c

    move v11, v4

    move-object v12, v0

    iget v12, v12, Lgnu/expr/LambdaExp;->min_args:I

    move v13, v7

    add-int/2addr v12, v13

    if-ne v11, v12, :cond_c

    .line 1832
    sget-object v11, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    move-object v9, v11

    .restart local v9    # "mode":Lgnu/expr/Special;
    goto/16 :goto_3

    .line 1834
    .end local v9    # "mode":Lgnu/expr/Special;
    :cond_c
    sget-object v11, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    move-object v9, v11

    .restart local v9    # "mode":Lgnu/expr/Special;
    goto/16 :goto_3

    .line 1857
    .end local v9    # "mode":Lgnu/expr/Special;
    :cond_d
    move-object v11, v1

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1858
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 1859
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v11, :cond_e

    .line 1860
    move-object v11, v1

    const-string/jumbo v12, "<null body>"

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1863
    :goto_4
    move-object v11, v1

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1864
    return-void

    .line 1862
    :cond_e
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_4
.end method

.method public final restArgType()Lgnu/bytecode/Type;
    .locals 9

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v5, v0

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    move-object v6, v0

    iget v6, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v5, v6, :cond_0

    .line 354
    const/4 v5, 0x0

    move-object v0, v5

    .line 365
    .end local v0    # "this":Lgnu/expr/LambdaExp;
    .local v1, "methods":[Lgnu/bytecode/Method;
    :goto_0
    return-object v0

    .line 355
    .end local v1    # "methods":[Lgnu/bytecode/Method;
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v5, :cond_1

    .line 356
    new-instance v5, Ljava/lang/Error;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "internal error - restArgType"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object v1, v5

    .line 358
    .restart local v1    # "methods":[Lgnu/bytecode/Method;
    move-object v5, v0

    iget v5, v5, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v5, :cond_2

    move-object v5, v1

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lgnu/expr/LambdaExp;->max_args:I

    move-object v7, v0

    iget v7, v7, Lgnu/expr/LambdaExp;->min_args:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 359
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 360
    :cond_2
    move-object v5, v1

    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v2, v5

    .line 361
    .local v2, "method":Lgnu/bytecode/Method;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 362
    .local v3, "types":[Lgnu/bytecode/Type;
    move-object v5, v3

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 363
    .local v4, "ilast":I
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "$X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    add-int/lit8 v4, v4, -0x1

    .line 365
    :cond_3
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0
.end method

.method setCallersNeedStaticLink()V
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    move-object v1, v4

    .line 196
    .local v1, "outer":Lgnu/expr/LambdaExp;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v4, v4, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    move-object v2, v4

    .local v2, "app":Lgnu/expr/ApplyExp;
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 198
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    move-object v3, v4

    .line 199
    .local v3, "caller":Lgnu/expr/LambdaExp;
    :goto_1
    move-object v4, v3

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v3

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_0

    .line 200
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 199
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 196
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    move-object v2, v4

    goto :goto_0

    .line 202
    .end local v3    # "caller":Lgnu/expr/LambdaExp;
    :cond_1
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "called":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCanRead(Z)V
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "read":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setClassMethod(Z)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "isMethod":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, -0x41

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCoercedReturnType(Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 1937
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "returnType":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1938
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v4, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-eq v3, v4, :cond_0

    .line 1943
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v2, v3

    .line 1944
    .local v2, "value":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1945
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    .line 1947
    .end local v2    # "value":Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method public final setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V
    .locals 7

    .prologue
    .line 1953
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "type":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1955
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v3, v4

    .line 1956
    .local v3, "value":Lgnu/expr/Expression;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1957
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1959
    .end local v3    # "value":Lgnu/expr/Expression;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 1960
    .local v3, "rtype":Lgnu/bytecode/Type;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1961
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 1962
    :cond_1
    return-void
.end method

.method public setExceptions([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "exceptions":[Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 101
    return-void
.end method

.method public final setImportsLexVars()V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/LambdaExp;->flags:I

    move v1, v2

    .line 176
    .local v1, "old":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 179
    move v2, v1

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 180
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 181
    :cond_0
    return-void
.end method

.method public final setImportsLexVars(Z)V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "importsLexVars":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, -0x9

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setInlineOnly(Z)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "inlineOnly":Z
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    return-void
.end method

.method public final setNeedsStaticLink()V
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/LambdaExp;->flags:I

    move v1, v2

    .line 186
    .local v1, "old":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 189
    move v2, v1

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 191
    :cond_0
    return-void
.end method

.method public final setNeedsStaticLink(Z)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move v1, p1

    .local v1, "needsStaticLink":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/LambdaExp;->flags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 1909
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    monitor-exit v7

    return-void

    .line 1909
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    throw v0
.end method

.method public final setReturnType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 1932
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "returnType":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1933
    return-void
.end method

.method public setType(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 293
    return-void
.end method

.method public side_effects()Z
    .locals 2

    .prologue
    .line 1875
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1879
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getExpClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1881
    .local v1, "str":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v3

    move v2, v3

    .line 1882
    .local v2, "l":I
    move v3, v2

    if-gtz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 1883
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v3}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v3

    move v2, v3

    .line 1884
    :cond_0
    move v3, v2

    if-lez v3, :cond_1

    .line 1885
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "l:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1887
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 25

    .prologue
    .line 1730
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/LambdaExp;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v5, p3

    .local v5, "required":Lgnu/bytecode/Type;
    move-object/from16 v6, p4

    .local v6, "decl":Lgnu/expr/Declaration;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v7, v19

    .line 1731
    .local v7, "args":[Lgnu/expr/Expression;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x1000

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1733
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v8, v19

    .line 1734
    .local v8, "inlined":Lgnu/expr/Expression;
    move-object/from16 v19, v8

    if-eqz v19, :cond_0

    .line 1735
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v2, v19

    .line 1798
    .end local v2    # "this":Lgnu/expr/LambdaExp;
    .end local v8    # "inlined":Lgnu/expr/Expression;
    :goto_0
    return-object v2

    .line 1737
    .restart local v2    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 1738
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v8, v19

    .line 1739
    .local v8, "args_length":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v21, v0

    move/from16 v22, v8

    invoke-static/range {v19 .. v22}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1741
    .local v9, "msg":Ljava/lang/String;
    move-object/from16 v19, v9

    if-eqz v19, :cond_1

    .line 1742
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_0

    .line 1743
    :cond_1
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v19

    move/from16 v10, v19

    .line 1744
    .local v10, "conv":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v19

    move-object/from16 v11, v19

    .line 1747
    .local v11, "comp":Lgnu/expr/Compilation;
    move-object/from16 v19, v11

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v19, v10

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v19, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    :cond_2
    move-object/from16 v19, v2

    move/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v12, v20

    .local v12, "method":Lgnu/bytecode/Method;
    if-eqz v19, :cond_9

    .line 1762
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v19

    move/from16 v13, v19

    .line 1763
    .local v13, "isStatic":Z
    move/from16 v19, v13

    if-nez v19, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1765
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    check-cast v19, Lgnu/expr/ClassExp;

    move-object/from16 v14, v19

    .line 1766
    .local v14, "cl":Lgnu/expr/ClassExp;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1770
    .end local v14    # "cl":Lgnu/expr/ClassExp;
    :cond_3
    new-instance v19, Lgnu/expr/PrimProcedure;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v12

    move-object/from16 v22, v2

    invoke-direct/range {v20 .. v22}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    move-object/from16 v14, v19

    .line 1772
    .local v14, "mproc":Lgnu/expr/PrimProcedure;
    move/from16 v19, v13

    if-eqz v19, :cond_4

    .line 1773
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v15, v19

    .line 1795
    .local v15, "margs":[Lgnu/expr/Expression;
    :goto_1
    new-instance v19, Lgnu/expr/ApplyExp;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-direct/range {v20 .. v22}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v16, v19

    .line 1796
    .local v16, "nexp":Lgnu/expr/ApplyExp;
    move-object/from16 v19, v16

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1776
    .end local v15    # "margs":[Lgnu/expr/Expression;
    .end local v16    # "nexp":Lgnu/expr/ApplyExp;
    :cond_4
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v19

    move-object/from16 v16, v19

    .line 1779
    .local v16, "curLambda":Lgnu/expr/LambdaExp;
    :goto_2
    move-object/from16 v19, v16

    if-nez v19, :cond_5

    .line 1780
    move-object/from16 v19, v4

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "internal error: missing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1781
    :cond_5
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1782
    .line 1785
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1786
    .local v17, "d":Lgnu/expr/Declaration;
    move-object/from16 v19, v17

    if-eqz v19, :cond_6

    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v19

    if-nez v19, :cond_8

    .line 1787
    :cond_6
    move-object/from16 v19, v4

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "calling non-static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " from static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1783
    .end local v17    # "d":Lgnu/expr/Declaration;
    :cond_7
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v19

    move-object/from16 v16, v19

    goto/16 :goto_2

    .line 1790
    .restart local v17    # "d":Lgnu/expr/Declaration;
    :cond_8
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v19

    move/from16 v18, v19

    .line 1791
    .local v18, "nargs":I
    const/16 v19, 0x1

    move/from16 v20, v18

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v15, v19

    .line 1792
    .restart local v15    # "margs":[Lgnu/expr/Expression;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v21, v15

    const/16 v22, 0x1

    move/from16 v23, v18

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1793
    move-object/from16 v19, v15

    const/16 v20, 0x0

    new-instance v21, Lgnu/expr/ThisExp;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v21, v19, v20

    goto/16 :goto_1

    .line 1798
    .end local v12    # "method":Lgnu/bytecode/Method;
    .end local v13    # "isStatic":Z
    .end local v14    # "mproc":Lgnu/expr/PrimProcedure;
    .end local v15    # "margs":[Lgnu/expr/Expression;
    .end local v16    # "curLambda":Lgnu/expr/LambdaExp;
    .end local v17    # "d":Lgnu/expr/Declaration;
    .end local v18    # "nargs":I
    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v2, v19

    goto/16 :goto_0
.end method

.method public final variable_args()Z
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 1629
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    move-object v3, v7

    .line 1631
    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v7, v3

    if-nez v7, :cond_1

    .line 1632
    const/4 v7, 0x0

    move-object v4, v7

    .line 1640
    .local v4, "saveLambda":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 1644
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 1645
    move-object v7, v3

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/LambdaExp;
    return-object v0

    .line 1635
    .end local v4    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v0    # "this":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v4, v7

    .line 1636
    .restart local v4    # "saveLambda":Lgnu/expr/LambdaExp;
    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 1644
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    if-eqz v7, :cond_2

    .line 1645
    move-object v7, v3

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_2
    move-object v7, v6

    throw v7
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 6
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
    .line 1651
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1652
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method protected final visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 11
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
    .line 1657
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v5

    .line 1658
    .local v3, "save":Lgnu/expr/LambdaExp;
    move-object v5, v1

    move-object v6, v0

    iput-object v6, v5, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1661
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 1662
    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 1663
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v5, :cond_0

    .line 1664
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    :cond_0
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1669
    .line 1670
    return-void

    .line 1668
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v5, v4

    throw v5
.end method

.method protected final visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 11
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
    .line 1674
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1676
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v6, v6

    move v3, v6

    .line 1677
    .local v3, "len":I
    const/4 v6, 0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 1679
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 1680
    .local v5, "val":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Lgnu/expr/Expression;

    if-eqz v6, :cond_0

    .line 1682
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move v7, v4

    move-object v8, v1

    move-object v9, v5

    check-cast v9, Lgnu/expr/Expression;

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1677
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1686
    .end local v3    # "len":I
    .end local v4    # "i":I
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    return-void
.end method
