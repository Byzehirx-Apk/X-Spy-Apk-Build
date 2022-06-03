.class public Lkawa/standard/location;
.super Lkawa/lang/Syntax;
.source "location.java"


# static fields
.field public static final location:Lkawa/standard/location;

.field private static thisType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lkawa/standard/location;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/location;-><init>()V

    sput-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    .line 18
    sget-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Lkawa/standard/location;->setName(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "kawa.standard.location"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/location;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static makeLocationProc(Lgnu/mapping/Location;)Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "loc":Lgnu/mapping/Location;
    new-instance v1, Lgnu/mapping/LocationProc;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    move-object v0, v1

    .end local v0    # "loc":Lgnu/mapping/Location;
    return-object v0
.end method

.method public static makeProcLocation$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 65
    .local v2, "nargs":I
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/functions/ApplyToArgs;

    if-eqz v4, :cond_1

    move v4, v2

    if-lez v4, :cond_1

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_1

    .line 69
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v0, v4

    .line 70
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/LocationProc;

    if-eqz v4, :cond_0

    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 71
    move-object v4, v0

    check-cast v4, Lgnu/mapping/LocationProc;

    invoke-virtual {v4}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v4

    move-object v0, v4

    .line 78
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .line 72
    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 73
    .local v3, "rargs":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-instance v4, Lgnu/mapping/ProcLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0

    .line 76
    .end local v3    # "rargs":[Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/LocationProc;

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 77
    move-object v4, v0

    check-cast v4, Lgnu/mapping/LocationProc;

    invoke-virtual {v4}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 78
    :cond_2
    new-instance v4, Lgnu/mapping/ProcLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "arg":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "tr":Lkawa/lang/Translator;
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_1

    .line 38
    move-object v4, v0

    check-cast v4, Lgnu/expr/ReferenceExp;

    move-object v2, v4

    .line 39
    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 40
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 41
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 43
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 44
    move-object v4, v3

    invoke-static {v4}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 45
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 46
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 48
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 58
    .end local v0    # "arg":Lgnu/expr/Expression;
    .end local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "arg":Lgnu/expr/Expression;
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_2

    .line 52
    move-object v4, v0

    check-cast v4, Lgnu/expr/ApplyExp;

    move-object v2, v4

    .line 53
    .local v2, "aexp":Lgnu/expr/ApplyExp;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v3, v4

    .line 54
    .local v3, "args":[Lgnu/expr/Expression;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v4, v5

    .line 55
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v3

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    sget-object v4, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "makeProcLocation"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 58
    .end local v2    # "aexp":Lgnu/expr/ApplyExp;
    .end local v3    # "args":[Lgnu/expr/Expression;
    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "invalid argument to location"

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lkawa/standard/location;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_0

    .line 23
    move-object v5, v2

    const-string/jumbo v6, "missing argument to location"

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 29
    .end local v0    # "this":Lkawa/standard/location;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "this":Lkawa/standard/location;
    :cond_0
    move-object v5, v1

    check-cast v5, Lgnu/lists/Pair;

    move-object v3, v5

    .line 25
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_1

    .line 26
    move-object v5, v2

    const-string/jumbo v6, "extra arguments to location"

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 28
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    sget-object v8, Lkawa/standard/location;->location:Lkawa/standard/location;

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v9, v2

    invoke-static {v8, v9}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v4, v5

    .line 29
    .local v4, "args":[Lgnu/expr/Expression;
    sget-object v5, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "makeLocationProc"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
