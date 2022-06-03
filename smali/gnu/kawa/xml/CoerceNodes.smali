.class public Lgnu/kawa/xml/CoerceNodes;
.super Lgnu/mapping/Procedure1;
.source "CoerceNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final coerceNodes:Lgnu/kawa/xml/CoerceNodes;

.field public static final makeNodesMethod:Lgnu/bytecode/Method;

.field public static final typeNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/xml/CoerceNodes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/CoerceNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    .line 38
    const-string/jumbo v0, "gnu.kawa.xml.Nodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    .line 40
    sget-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "<init>"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CoerceNodes;
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

    .local v0, "this":Lgnu/kawa/xml/CoerceNodes;
    move-object v1, p1

    .local v1, "values":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/xml/Nodes;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/xml/Nodes;-><init>()V

    move-object v2, v3

    .line 19
    .local v2, "nodes":Lgnu/kawa/xml/Nodes;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/CoerceNodes;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CoerceNodes;
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

    .line 26
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v5, v4

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 27
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    move-object v5, v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CoerceNodes;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/CoerceNodes;
    return-object v0
.end method
