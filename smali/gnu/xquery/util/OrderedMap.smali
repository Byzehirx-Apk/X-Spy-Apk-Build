.class public Lgnu/xquery/util/OrderedMap;
.super Lgnu/mapping/MethodProc;
.source "OrderedMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final orderedMap:Lgnu/xquery/util/OrderedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lgnu/xquery/util/OrderedMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/xquery/util/OrderedMap;-><init>()V

    sput-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    .line 40
    sget-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.xquery.util.CompileMisc:validateApplyOrderedMap"

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/OrderedMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedMap;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static makeTuple$V([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "values":[Ljava/lang/Object;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "values":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedMap;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 52
    .local v2, "args":[Ljava/lang/Object;
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v3, v6

    .line 54
    .local v3, "values":Ljava/lang/Object;
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 56
    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, Lgnu/xquery/util/OrderedTuples;

    move-object v4, v6

    .line 64
    .local v4, "tuples":Lgnu/xquery/util/OrderedTuples;
    :goto_0
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 65
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/xquery/util/OrderedTuples;->run$X(Lgnu/mapping/CallContext;)V

    .line 66
    return-void

    .line 60
    .end local v4    # "tuples":Lgnu/xquery/util/OrderedTuples;
    :cond_0
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 61
    .local v5, "comps":[Ljava/lang/Object;
    move-object v6, v2

    const/4 v7, 0x2

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v5

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v7, v5

    invoke-static {v6, v7}, Lgnu/xquery/util/OrderedTuples;->make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;

    move-result-object v6

    move-object v4, v6

    .restart local v4    # "tuples":Lgnu/xquery/util/OrderedTuples;
    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedMap;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/CompileMisc;->compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    .line 71
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedMap;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/OrderedMap;
    return-object v0
.end method
