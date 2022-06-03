.class public Lgnu/kawa/xml/DocumentConstructor;
.super Lgnu/kawa/xml/NodeConstructor;
.source "DocumentConstructor.java"


# static fields
.field public static final documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

.field static final endDocumentMethod:Lgnu/bytecode/Method;

.field static final startDocumentMethod:Lgnu/bytecode/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/DocumentConstructor;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/DocumentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "startDocument"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    .line 59
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "endDocument"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DocumentConstructor;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DocumentConstructor;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v7

    .line 19
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-static {v7}, Lgnu/kawa/xml/DocumentConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v7

    move-object v3, v7

    .line 22
    .local v3, "out":Lgnu/lists/Consumer;
    :try_start_0
    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v4, v7

    .line 23
    .local v4, "endMarker":Ljava/lang/String;
    move-object v7, v3

    invoke-interface {v7}, Lgnu/lists/Consumer;->startDocument()V

    .line 26
    :goto_0
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 27
    .local v5, "arg":Ljava/lang/Object;
    move-object v7, v5

    move-object v8, v4

    if-ne v7, v8, :cond_0

    .line 28
    .line 34
    move-object v7, v3

    invoke-interface {v7}, Lgnu/lists/Consumer;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    move-object v7, v2

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 39
    .line 40
    return-void

    .line 29
    :cond_0
    move-object v7, v5

    :try_start_1
    instance-of v7, v7, Lgnu/lists/Consumable;

    if-eqz v7, :cond_1

    .line 30
    move-object v7, v5

    check-cast v7, Lgnu/lists/Consumable;

    move-object v8, v3

    invoke-interface {v7, v8}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 33
    :goto_1
    goto :goto_0

    .line 32
    :cond_1
    move-object v7, v3

    move-object v8, v5

    invoke-interface {v7, v8}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    .end local v4    # "endMarker":Ljava/lang/String;
    .end local v5    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v7, v6

    throw v7
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 12

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DocumentConstructor;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/ConsumerTarget;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v9

    move-object v4, v9

    .line 46
    .local v4, "consumer":Lgnu/bytecode/Variable;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 47
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v9, v5

    array-length v9, v9

    move v6, v9

    .line 48
    .local v6, "nargs":I
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v7, v9

    .line 49
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 50
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 51
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 52
    move-object v9, v5

    move v10, v8

    aget-object v9, v9, v10

    move-object v10, v2

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lgnu/kawa/xml/DocumentConstructor;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 53
    :cond_0
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 54
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 55
    return-void
.end method
