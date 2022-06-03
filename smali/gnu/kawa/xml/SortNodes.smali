.class public Lgnu/kawa/xml/SortNodes;
.super Lgnu/mapping/Procedure1;
.source "SortNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final canonicalizeMethod:Lgnu/bytecode/Method;

.field public static final makeSortedNodesMethod:Lgnu/bytecode/Method;

.field public static final sortNodes:Lgnu/kawa/xml/SortNodes;

.field public static final typeSortedNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/xml/SortNodes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/SortNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    .line 53
    const-string/jumbo v0, "gnu.kawa.xml.SortedNodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    .line 55
    sget-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "<init>"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "canonicalize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortNodes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortNodes;
    move-object v1, p1

    .local v1, "values":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/xml/SortedNodes;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v2, v3

    .line 19
    .local v2, "nodes":Lgnu/kawa/xml/SortedNodes;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    move-object v3, v2

    iget v3, v3, Lgnu/kawa/xml/SortedNodes;->count:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 21
    move-object v3, v2

    move-object v0, v3

    .line 25
    .end local v0    # "this":Lgnu/kawa/xml/SortNodes;
    :goto_0
    return-object v0

    .line 22
    .restart local v0    # "this":Lgnu/kawa/xml/SortNodes;
    :cond_0
    move-object v3, v2

    iget v3, v3, Lgnu/kawa/xml/SortedNodes;->count:I

    if-nez v3, :cond_1

    .line 23
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    goto :goto_0

    .line 25
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/SortedNodes;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortNodes;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 31
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move-object v6, v2

    iget-boolean v6, v6, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v6, :cond_1

    .line 32
    :cond_0
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_1
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/ConsumerTarget;

    if-nez v6, :cond_2

    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/StackTarget;

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    sget-object v7, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 39
    :cond_2
    const/4 v6, 0x0

    move-object v5, v6

    .line 42
    .local v5, "resultMethod":Lgnu/bytecode/Method;
    :goto_1
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    move-object v8, v3

    sget-object v9, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    move-object v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 41
    .end local v5    # "resultMethod":Lgnu/bytecode/Method;
    :cond_3
    sget-object v6, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    move-object v5, v6

    .restart local v5    # "resultMethod":Lgnu/bytecode/Method;
    goto :goto_1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortNodes;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/SortNodes;
    return-object v0
.end method
