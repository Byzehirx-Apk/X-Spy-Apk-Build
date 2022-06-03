.class public Lgnu/kawa/functions/MakeList;
.super Lgnu/mapping/ProcedureN;
.source "MakeList.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final list:Lgnu/kawa/functions/MakeList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/functions/MakeList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/MakeList;-><init>()V

    sput-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    .line 16
    sget-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/MakeList;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeList;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v6, v0

    array-length v6, v6

    move v7, v1

    sub-int/2addr v6, v7

    move v3, v6

    .line 42
    .local v3, "len":I
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v4, v6

    .line 43
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move v6, v3

    if-nez v6, :cond_0

    .line 45
    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/QuoteExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 84
    :goto_0
    return-void

    .line 47
    :cond_0
    move v6, v3

    const/4 v7, 0x4

    if-gt v6, v7, :cond_2

    .line 49
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 50
    move-object v6, v0

    move v7, v1

    move v8, v5

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_1
    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 53
    .local v5, "method":Lgnu/bytecode/Method;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 54
    goto :goto_0

    .line 57
    .end local v5    # "method":Lgnu/bytecode/Method;
    :cond_2
    move-object v6, v0

    move v7, v1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v7, "list1"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 60
    .restart local v5    # "method":Lgnu/bytecode/Method;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 61
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 64
    :goto_2
    move v6, v3

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    .line 66
    move-object v6, v0

    move v7, v1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 67
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 70
    add-int/lit8 v3, v3, -0x4

    add-int/lit8 v1, v1, 0x4

    .line 71
    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v7, "chain4"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 72
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 75
    :cond_3
    :goto_3
    move v6, v3

    if-lez v6, :cond_4

    .line 77
    move-object v6, v0

    move v7, v1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    .line 79
    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v7, "chain1"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 80
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 82
    :cond_4
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto/16 :goto_0
.end method

.method public static list$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v3

    .line 21
    .local v1, "result":Lgnu/lists/LList;
    move-object v3, v0

    array-length v3, v3

    move v2, v3

    .end local v1    # "result":Lgnu/lists/LList;
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 22
    new-instance v3, Lgnu/lists/Pair;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    .local v1, "result":Lgnu/lists/Pair;
    goto :goto_0

    .line 23
    .end local v1    # "result":Lgnu/lists/Pair;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeList;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/functions/MakeList;->list$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/MakeList;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeList;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 34
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 35
    move-object v5, v3

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 36
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeList;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v1

    array-length v2, v2

    if-lez v2, :cond_0

    sget-object v2, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/MakeList;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/MakeList;
    :cond_0
    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0
.end method
