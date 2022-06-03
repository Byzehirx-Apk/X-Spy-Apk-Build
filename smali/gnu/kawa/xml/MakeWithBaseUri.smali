.class public Lgnu/kawa/xml/MakeWithBaseUri;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeWithBaseUri.java"


# static fields
.field static final beginEntityMethod:Lgnu/bytecode/Method;

.field static final endEntityMethod:Lgnu/bytecode/Method;

.field public static final makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

.field static final typeXConsumer:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lgnu/kawa/xml/MakeWithBaseUri;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/MakeWithBaseUri;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    .line 60
    const-string/jumbo v0, "gnu.lists.XConsumer"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->typeXConsumer:Lgnu/bytecode/ClassType;

    .line 61
    sget-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->typeXConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "beginEntity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->beginEntityMethod:Lgnu/bytecode/Method;

    .line 63
    sget-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->typeXConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "endEntity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->endEntityMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeWithBaseUri;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeWithBaseUri;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v7

    .line 25
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-static {v7}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v7

    move-object v3, v7

    .line 26
    .local v3, "out":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 27
    .local v4, "baseUri":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 28
    .local v5, "node":Ljava/lang/Object;
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/XConsumer;

    if-eqz v7, :cond_0

    .line 29
    move-object v7, v3

    check-cast v7, Lgnu/lists/XConsumer;

    move-object v8, v4

    invoke-interface {v7, v8}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 32
    :cond_0
    move-object v7, v5

    move-object v8, v3

    :try_start_0
    invoke-static {v7, v8}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/XConsumer;

    if-eqz v7, :cond_1

    .line 37
    move-object v7, v3

    check-cast v7, Lgnu/lists/XConsumer;

    invoke-interface {v7}, Lgnu/lists/XConsumer;->endEntity()V

    .line 38
    :cond_1
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/TreeList;

    if-eqz v7, :cond_2

    .line 39
    move-object v7, v3

    check-cast v7, Lgnu/lists/TreeList;

    invoke-virtual {v7}, Lgnu/lists/TreeList;->dump()V

    .line 40
    :cond_2
    move-object v7, v2

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 41
    .line 42
    return-void

    .line 36
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/XConsumer;

    if-eqz v7, :cond_3

    .line 37
    move-object v7, v3

    check-cast v7, Lgnu/lists/XConsumer;

    invoke-interface {v7}, Lgnu/lists/XConsumer;->endEntity()V

    .line 38
    :cond_3
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/TreeList;

    if-eqz v7, :cond_4

    .line 39
    move-object v7, v3

    check-cast v7, Lgnu/lists/TreeList;

    invoke-virtual {v7}, Lgnu/lists/TreeList;->dump()V

    .line 40
    :cond_4
    move-object v7, v2

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v7, v6

    throw v7
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 11

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeWithBaseUri;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/ConsumerTarget;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v8

    move-object v4, v8

    .line 49
    .local v4, "consumer":Lgnu/bytecode/Variable;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    move-object v5, v8

    .line 50
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v8, v5

    array-length v8, v8

    move v6, v8

    .line 51
    .local v6, "nargs":I
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    move-object v7, v8

    .line 52
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 53
    move-object v8, v5

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v2

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 54
    move-object v8, v7

    sget-object v9, Lgnu/kawa/xml/MakeWithBaseUri;->beginEntityMethod:Lgnu/bytecode/Method;

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 55
    move-object v8, v5

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v2

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lgnu/kawa/xml/MakeWithBaseUri;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 56
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 57
    move-object v8, v7

    sget-object v9, Lgnu/kawa/xml/MakeWithBaseUri;->endEntityMethod:Lgnu/bytecode/Method;

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 58
    return-void
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeWithBaseUri;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeWithBaseUri;
    return v0
.end method
