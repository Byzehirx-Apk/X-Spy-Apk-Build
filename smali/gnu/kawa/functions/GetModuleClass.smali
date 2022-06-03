.class public Lgnu/kawa/functions/GetModuleClass;
.super Lgnu/mapping/ProcedureN;
.source "GetModuleClass.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

.field public static final getModuleClass:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUri:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

.field static final maker:Lgnu/bytecode/Method;

.field static final typeURLPath:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    .line 22
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    .line 29
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    .line 32
    const-string/jumbo v0, "gnu.text.URLPath"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    .line 33
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "classResourcePath"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    .line 73
    const-string/jumbo v0, "$class_resource_URL$"

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetModuleClass;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    sget-object v6, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v2, v5

    .line 83
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v5, v2

    if-nez v5, :cond_2

    .line 85
    new-instance v5, Lgnu/expr/Declaration;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    invoke-direct {v6, v7, v8}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v2, v5

    .line 86
    move-object v5, v2

    const-wide/32 v6, 0x20004800

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    move-object v5, v1

    iget-boolean v5, v5, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_3

    .line 90
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v5

    move-object v4, v5

    .line 91
    .local v4, "path":Lgnu/text/Path;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 92
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v5

    move-object v4, v5

    .line 93
    :cond_0
    move-object v5, v4

    instance-of v5, v5, Lgnu/text/URLPath;

    if-nez v5, :cond_1

    .line 94
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v5

    move-object v4, v5

    .line 95
    :cond_1
    move-object v5, v4

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    move-object v3, v5

    .line 104
    .end local v4    # "path":Lgnu/text/Path;
    .local v3, "value":Lgnu/expr/Expression;
    :goto_0
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 105
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ModuleExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 107
    .end local v3    # "value":Lgnu/expr/Expression;
    :cond_2
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v3, v5

    .line 108
    .local v3, "ref":Lgnu/expr/ReferenceExp;
    move-object v5, v1

    iget-boolean v5, v5, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_4

    .line 109
    move-object v5, v3

    move-object v1, v5

    .line 111
    .end local v1    # "comp":Lgnu/expr/Compilation;
    :goto_1
    return-object v1

    .line 99
    .end local v3    # "ref":Lgnu/expr/ReferenceExp;
    .restart local v1    # "comp":Lgnu/expr/Compilation;
    :cond_3
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    sget-object v8, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v4, v5

    .line 102
    .local v4, "clas":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v4

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v3, v5

    .local v3, "value":Lgnu/expr/Expression;
    goto :goto_0

    .line 111
    .end local v4    # "clas":Lgnu/expr/Expression;
    .local v3, "ref":Lgnu/expr/ReferenceExp;
    :cond_4
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    const/4 v8, 0x1

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v1, v5

    goto :goto_1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetModuleClass;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "get-module-class must be inlined"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetModuleClass;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v0

    sget-object v8, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne v7, v8, :cond_1

    .line 49
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lgnu/expr/ReferenceExp;

    move-object v4, v7

    .line 50
    .local v4, "ref":Lgnu/expr/ReferenceExp;
    move-object v7, v4

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 51
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v5, v7

    .line 52
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v6, v7

    .line 53
    .local v6, "init":Lgnu/expr/Expression;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 55
    move-object v7, v5

    move-object v8, v6

    move-object v9, v2

    invoke-static {v7, v8, v9}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 56
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 58
    .line 66
    .end local v4    # "ref":Lgnu/expr/ReferenceExp;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "init":Lgnu/expr/Expression;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    move-object v7, v2

    move-object v8, v2

    iget-object v8, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 62
    move-object v7, v0

    sget-object v8, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    if-ne v7, v8, :cond_2

    .line 63
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    sget-object v8, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 64
    :cond_2
    move-object v7, v3

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetModuleClass;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    if-ne v2, v3, :cond_0

    sget-object v2, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/GetModuleClass;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/GetModuleClass;
    :cond_0
    sget-object v2, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public numArgs()I
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetModuleClass;
    move-object v1, v0

    sget-object v2, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1001

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/GetModuleClass;
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/GetModuleClass;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
