.class public Lkawa/standard/module_implements;
.super Lkawa/lang/Syntax;
.source "module_implements.java"


# static fields
.field public static final module_implements:Lkawa/standard/module_implements;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_implements;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/module_implements;-><init>()V

    sput-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    .line 11
    sget-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    const-string/jumbo v1, "module-implements"

    invoke-virtual {v0, v1}, Lkawa/standard/module_implements;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_implements;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 14

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_implements;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 16
    .local v4, "args":Ljava/lang/Object;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v9

    move v5, v9

    .line 17
    .local v5, "len":I
    move v9, v5

    if-gez v9, :cond_0

    .line 19
    move-object v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "improper argument list for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v11}, Lkawa/standard/module_implements;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 20
    .line 32
    :goto_0
    return-void

    .line 22
    :cond_0
    move v9, v5

    new-array v9, v9, [Lgnu/bytecode/ClassType;

    move-object v6, v9

    .line 23
    .local v6, "interfaces":[Lgnu/bytecode/ClassType;
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 25
    move-object v9, v4

    check-cast v9, Lgnu/lists/Pair;

    move-object v8, v9

    .line 26
    .local v8, "pair":Lgnu/lists/Pair;
    move-object v9, v6

    move v10, v7

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v11

    check-cast v11, Lgnu/bytecode/ClassType;

    aput-object v11, v9, v10

    .line 27
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 23
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 29
    .end local v8    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v9, v3

    invoke-virtual {v9}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v9

    move-object v7, v9

    .line 30
    .local v7, "module":Lgnu/expr/ModuleExp;
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 31
    move-object v9, v7

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 32
    goto :goto_0
.end method
