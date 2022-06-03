.class public Lgnu/kawa/xml/UnionNodes;
.super Lgnu/mapping/Procedure2;
.source "UnionNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final unionNodes:Lgnu/kawa/xml/UnionNodes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/xml/UnionNodes;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/UnionNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/UnionNodes;->unionNodes:Lgnu/kawa/xml/UnionNodes;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UnionNodes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UnionNodes;
    move-object v1, p1

    .local v1, "vals1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vals2":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/xml/SortedNodes;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v3, v4

    .line 21
    .local v3, "nodes":Lgnu/kawa/xml/SortedNodes;
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 22
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/UnionNodes;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UnionNodes;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v1, v4

    .line 29
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    sget-object v7, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    .line 31
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UnionNodes;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/UnionNodes;
    return-object v0
.end method
